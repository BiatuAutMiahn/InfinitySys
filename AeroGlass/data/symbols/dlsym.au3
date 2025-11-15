#cs ----------------------------------------------------------------------------
 AutoIt Version: 3.3.16.1
 Author:         yourName
 Script:         Get PDB via RSDS (GUID+Age) → .\<PdbName>\<GuidAge>\FileName.pdb
#ce ----------------------------------------------------------------------------

; --- Usage example ---
Local $a = _GetPdbSymbol("C:\Windows\System32\kernel32.dll")
If IsArray($a) Then ConsoleWrite("Saved: " & $a[0] & "  GuidAge=" & $a[1] & "  File=" & $a[2] & @CRLF)

; ========================= Helpers (no outer-scope deps) =========================
Func __U16($ptr, $off)
    Local $t = DllStructCreate("ushort", $ptr + $off)
    Return DllStructGetData($t, 1)
EndFunc

Func __U32($ptr, $off)
    Local $t = DllStructCreate("dword", $ptr + $off)
    Return DllStructGetData($t, 1)
EndFunc

Func __Hex2($b)
    Return Hex($b, 2)
EndFunc

Func __RVA2FO($rva, ByRef $secs)
    For $j = 0 To UBound($secs) - 1
        Local $VA = $secs[$j][0], $VS = $secs[$j][1], $SRD = $secs[$j][2], $PRD = $secs[$j][3]
        Local $size = ($VS > $SRD) ? $VS : $SRD
        If $rva >= $VA And $rva < ($VA + $size) Then
            Return $PRD + ($rva - $VA)
        EndIf
    Next
    Return -1
EndFunc

Func __HttpGet($url, $dst)
    Local $hD = InetGet($url, $dst, 1, 0) ; async=1
    If @error Then Return False
    While InetGetInfo($hD, 2) = 0
        Sleep(50)
    WEnd
    Local $ok = InetGetInfo($hD, 4)
    InetClose($hD)
    If Not $ok Then
        If FileExists($dst) Then FileDelete($dst)
        Return False
    EndIf
    Return True
EndFunc

Func _WinAPI_UniqueID()
    Local $t = TimerInit()
    Return Hex(Int(Random(0, 0x7FFFFFFF)), 8) & Hex(Int(TimerDiff($t) * 1000), 8)
EndFunc
; ========================= End Helpers =========================

; AutoIt v3.3.16.1  —  Get-PdbSymbol equivalent
Func _GetPdbSymbol($sBinaryPath, $sOutRoot = ".", $sServer = "https://msdl.microsoft.com/download/symbols")
    If Not FileExists($sBinaryPath) Then
        SetError(1, 0, 0)
        Return 0
    EndIf

    Local $h = FileOpen($sBinaryPath, 16) ; binary
    If $h = -1 Then
        SetError(2, 0, 0)
        Return 0
    EndIf
    Local $bin = FileRead($h)
    FileClose($h)

    If Not IsBinary($bin) Then
        SetError(3, 0, 0)
        Return 0
    EndIf

    Local $tAll = DllStructCreate("byte[" & BinaryLen($bin) & "]")
    DllStructSetData($tAll, 1, $bin)
    Local $pBase = DllStructGetPtr($tAll)

    ; --- DOS header ---
    Local $peOff = __U32($pBase, 0x3C)

    ; --- PE signature ---
    If __U32($pBase, $peOff) <> 0x00004550 Then
        SetError(4, 0, 0) ; "PE\0\0"
        Return 0
    EndIf

    ; --- File header (20 bytes) ---
    Local $off = $peOff + 4
    Local $numSecs  = __U16($pBase, $off + 2)
    Local $optSize  = __U16($pBase, $off + 16)
    Local $optStart = $off + 20

    ; --- Optional header & Debug data dir ---
    Local $magic = __U16($pBase, $optStart + 0)
    Local $isPE32Plus = ($magic = 0x20B)
    Local $dataDirBase = ($isPE32Plus ? 112 : 96)
    Local $ddOff = $optStart + $dataDirBase + 6 * 8 ; Debug entry index = 6
    Local $debugRVA  = __U32($pBase, $ddOff + 0)
    Local $debugSize = __U32($pBase, $ddOff + 4)
    If $debugRVA = 0 Or $debugSize = 0 Then
        SetError(5, 0, 0) ; no debug dir
        Return 0
    EndIf

    ; --- Section headers (40 bytes each) ---
    Local $secs[$numSecs][4] ; VA, VS, SRD, PRD
    Local $secStart = $optStart + $optSize
    For $i = 0 To $numSecs - 1
        Local $b = $secStart + $i * 40
        $secs[$i][0] = __U32($pBase, $b + 12) ; VA
        $secs[$i][1] = __U32($pBase, $b + 8)  ; VS
        $secs[$i][2] = __U32($pBase, $b + 16) ; SRD
        $secs[$i][3] = __U32($pBase, $b + 20) ; PRD
    Next

    Local $dbgFO = __RVA2FO($debugRVA, $secs)
    If $dbgFO = -1 Then
        SetError(6, 0, 0)
        Return 0
    EndIf

    ; --- IMAGE_DEBUG_DIRECTORY (28 bytes each) ---
    Local $entryCount = Floor($debugSize / 28)
    Local $PdbName = "", $GuidAge = ""
    For $e = 0 To $entryCount - 1
        Local $b = $dbgFO + $e * 28
        Local $Type    = __U32($pBase, $b + 12)
        Local $SizeDat = __U32($pBase, $b + 16)
        Local $PtrRaw  = __U32($pBase, $b + 24)
        If $Type <> 2 Or $SizeDat < 24 Then ContinueLoop ; CodeView
        If __U32($pBase, $PtrRaw) <> 0x53445352 Then ContinueLoop ; 'RSDS'

        Local $guidOff = $PtrRaw + 4
        Local $d1 = __U32($pBase, $guidOff + 0)
        Local $d2 = __U16($pBase, $guidOff + 4)
        Local $d3 = __U16($pBase, $guidOff + 6)
        Local $b8 = DllStructCreate("byte[8]", $pBase + $guidOff + 8)
        Local $age = __U32($pBase, $guidOff + 16)

        Local $guidN = StringUpper( _
            Hex($d1, 8) & _
            Hex($d2, 4) & _
            Hex($d3, 4) & _
            __Hex2(DllStructGetData($b8, 1, 1)) & _
            __Hex2(DllStructGetData($b8, 1, 2)) & _
            __Hex2(DllStructGetData($b8, 1, 3)) & _
            __Hex2(DllStructGetData($b8, 1, 4)) & _
            __Hex2(DllStructGetData($b8, 1, 5)) & _
            __Hex2(DllStructGetData($b8, 1, 6)) & _
            __Hex2(DllStructGetData($b8, 1, 7)) & _
            __Hex2(DllStructGetData($b8, 1, 8)) _
        )
        $GuidAge = $guidN & $age

        ; Read null-terminated ANSI PDB path (after GUID+Age)
        Local $nameStart = $guidOff + 20
        Local $maxScan = 4096, $iEnd = $nameStart
        While $iEnd < $nameStart + $maxScan
            If DllStructGetData(DllStructCreate("byte", $pBase + $iEnd), 1) = 0 Then ExitLoop
            $iEnd += 1
        WEnd
        Local $nameLen = $iEnd - $nameStart
        If $nameLen < 0 Then
            SetError(7, 0, 0)
            Return 0
        EndIf
        Local $tName = DllStructCreate("byte[" & $nameLen & "]", $pBase + $nameStart)
        Local $ansi  = DllStructGetData($tName, 1)
        Local $path  = BinaryToString($ansi, 1)
        ; Extract filename (robust)
        Local $PdbNameCandidate = StringRegExpReplace($path, "^.*[\\/]", "")
        If $PdbNameCandidate <> "" Then
            $PdbName = $PdbNameCandidate
        Else
            $PdbName = $path
        EndIf
        ExitLoop
    Next

    If $PdbName = "" Or $GuidAge = "" Then
        SetError(8, 0, 0)
        Return 0
    EndIf

    ; --- Destination: .\<PdbName>\<GuidAge>\FileName.pdb
    Local $destDir = $sOutRoot & "\" & $PdbName & "\" & $GuidAge
    DirCreate($destDir)
    Local $destPdb = $destDir & "\" & $PdbName

    ; --- URLs
    Local $base   = $sServer & "/" & $PdbName & "/" & $GuidAge
    Local $urlPdb = $base & "/" & $PdbName
    Local $fnNoExtPos = StringInStr($PdbName, ".", 0, -1)
    Local $fnNoExt = ($fnNoExtPos > 0) ? StringLeft($PdbName, $fnNoExtPos - 1) : $PdbName
    Local $urlPd_ = $base & "/" & $fnNoExt & ".pd_"

    ; --- Download PDB or fallback to PD_
    Local $ok = __HttpGet($urlPdb, $destPdb)
    If Not $ok Then
        Local $tmp = @TempDir & "\" & _WinAPI_UniqueID() & ".pd_"
        If __HttpGet($urlPd_, $tmp) Then
            Local $cmd = @ComSpec & ' /c expand.exe -F:* "' & $tmp & '" "' & $destDir & '"'
            RunWait($cmd, "", @SW_HIDE)
            If FileExists($destPdb) Then
                FileDelete($tmp)
                ConsoleWrite("Saved (expanded): " & $destPdb & @CRLF)
            Else
                FileDelete($tmp)
                SetError(9, 0, 0) ; expand failed
                Return 0
            EndIf
        Else
            SetError(10, 0, 0) ; both URLs failed
            Return 0
        EndIf
    Else
        ConsoleWrite("Saved: " & $destPdb & @CRLF)
    EndIf

    Local $aRet[3]
    $aRet[0] = $destPdb
    $aRet[1] = $GuidAge
    $aRet[2] = $PdbName
    Return $aRet
EndFunc
