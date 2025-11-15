; [Refs]
; ChatGPT 5 /w the following resources:
;     -C:\Program Files (x86)\AutoIt3\SciTE\Defs\Production\api\au3.api
;     -https://www.autoitscript.com/forum/topic/114960-how-to-get-subsystem-info-of-a-exe-file/

#include <WinAPI.au3>

; --- Example ---
Local $sDest=@ScriptDir
If $CmdLine[0]<1 Then Exit 1
If Not FileExists($CmdLine[1]) Then Exit 2
If $CmdLine[0]=2 Then
  DirCreate($CmdLine[2])
  If Not FileExists($CmdLine[2]) Then Exit 3
EndIf
If Not _WinAPI_IsInternetConnected() Then Exit 4
_dlSym($CmdLine[1],$CmdLine[2])
If @error Then Exit @Error+4
Exit 0

;_dlSym("C:\Windows\System32\dwmcore.dll",@ScriptDir)
;_dlSym("C:\Windows\System32\uDWM.dll",@ScriptDir)

; aRet[sPath,sFile,sExt]
Func _ps($a)
  Local $b=StringInStr($a,'\',0,-1),$c=StringLeft($a,$b-1),$d=StringTrimLeft($a,$b),$b=StringInStr($d,'.',0,-1),$e=StringLeft($d,$b-1),$f=StringTrimLeft($d,$b),$g[]=[$c,$d,$e,$f]
  Return $g
EndFunc


Func PE_GetGuidAgeKey($sPath)
    Local $pBase = MapFile($sPath)
    If $pBase = 0 Then Return ""

    ; DOS -> PE
    Local $tDOS = DllStructCreate("char MZ[2]; byte pad[58]; dword e_lfanew", $pBase)
    If DllStructGetData($tDOS, "MZ") <> "MZ" Then Return ""
    Local $pNt = Ptr($pBase + DllStructGetData($tDOS, "e_lfanew"))

    Local $tSig = DllStructCreate("dword Sig", $pNt)
    If DllStructGetData($tSig, "Sig") <> 0x00004550 Then Return "" ; "PE\0\0"

    ; FILE_HEADER
    Local $pFileHdr = Ptr($pNt + 4)
    Local $tFH = DllStructCreate( _
        "ushort Machine; ushort NumberOfSections; dword TimeDateStamp; dword PointerToSymbolTable;" & _
        "dword NumberOfSymbols; ushort SizeOfOptionalHeader; ushort Characteristics", $pFileHdr)
    Local $numSec  = DllStructGetData($tFH, "NumberOfSections")
    Local $optSize = DllStructGetData($tFH, "SizeOfOptionalHeader")

    ; OPTIONAL_HEADER (only Magic + DataDirectory base)
    Local $optOfs  = Ptr($pFileHdr + 20)
    Local $tMagic  = DllStructCreate("ushort Magic", $optOfs)
    Local $magic   = DllStructGetData($tMagic, "Magic")
    Local $ddBase  = Ptr($optOfs + (($magic = 0x20B) ? 112 : 96)) ; start of DataDirectory

    ; Debug directory (index 6)
    Local $tDD  = DllStructCreate("dword RVA; dword Size", Ptr($ddBase + 6*8))
    Local $ddRVA  = DllStructGetData($tDD, "RVA")
    Local $ddSize = DllStructGetData($tDD, "Size")
    If $ddRVA = 0 Or $ddSize = 0 Then Return ""

    ; Sections for RVA->FOA
    Local $pSec = Ptr($optOfs + $optSize)
    Dim $aSecs[$numSec][4] ; [VA, RawSz, RawPtr, VirtSz]
    For $i = 0 To $numSec - 1
        Local $tSH = DllStructCreate( _
            "char Name[8]; dword VirtualSize; dword VirtualAddress; dword SizeOfRawData;" & _
            "dword PointerToRawData; dword PointerToRelocations; dword PointerToLinenumbers;" & _
            "ushort NumberOfRelocations; ushort NumberOfLinenumbers; dword Characteristics", _
            Ptr($pSec + $i * 40))
        $aSecs[$i][0] = DllStructGetData($tSH, "VirtualAddress")
        $aSecs[$i][1] = DllStructGetData($tSH, "SizeOfRawData")
        $aSecs[$i][2] = DllStructGetData($tSH, "PointerToRawData")
        $aSecs[$i][3] = DllStructGetData($tSH, "VirtualSize")
    Next

    ; IMAGE_DEBUG_DIRECTORY array
    Local $dbgFOA = __RvaToFoa($ddRVA, $aSecs)
    If $dbgFOA < 0 Then Return ""
    Local $entries = Int($ddSize / 28)

    For $j = 0 To $entries - 1
        Local $tDir = DllStructCreate( _
            "dword Ch; dword TS; ushort Maj; ushort Min; dword Type; dword SizeOfData; dword AddrRVA; dword PtrRaw", _
            Ptr($pBase + $dbgFOA + $j * 28))
        If DllStructGetData($tDir, "Type") <> 2 Then ContinueLoop ; CodeView

        Local $size  = DllStructGetData($tDir, "SizeOfData")
        Local $foaCV = DllStructGetData($tDir, "PtrRaw")
        If $foaCV = 0 Then $foaCV = __RvaToFoa(DllStructGetData($tDir, "AddrRVA"), $aSecs)
        If $foaCV < 0 Then ContinueLoop

        Local $pCV  = Ptr($pBase + $foaCV)
        Local $tag  = DllStructGetData(DllStructCreate("char Tag[4]", $pCV), "Tag")

        If $tag = "RSDS" Then
            Local $guidN = __GuidToN_FromPtr(Ptr($pCV + 4))
            Local $age   = DllStructGetData(DllStructCreate("dword Age", Ptr($pCV + 20)), "Age")
            $outType = "RSDS"
            Return $guidN & $age
        ElseIf $tag = "NB10" Then
            Local $sig = DllStructGetData(DllStructCreate("dword Sig", Ptr($pCV + 8)), "Sig")
            Local $age2 = DllStructGetData(DllStructCreate("dword Age", Ptr($pCV + 12)), "Age")
            $outType = "NB10"
            Return StringFormat("%08X", $sig) & $age2
        EndIf
    Next

    Return ""
EndFunc

; --- Helpers ---
Func MapFile($Filename)
    Local $pBase = 0
    Local $hK = DllOpen("kernel32.dll")
    If $hK = -1 Then Return 0

    Local $hFile = DllCall($hK, "hwnd", "CreateFile", _
        "str", $Filename, _
        "dword", $GENERIC_READ, _
        "dword", $FILE_SHARE_READ, _
        "dword", "", _
        "dword", $OPEN_EXISTING, _
        "dword", $FILE_ATTRIBUTE_NORMAL, _
        "hwnd", 0)
    If @error Or $hFile[0] = 0 Then
        DllClose($hK)
        Return 0
    EndIf
    $hFile = $hFile[0]

    Local $hMap = DllCall($hK, "hwnd", "CreateFileMapping", _
        "hwnd", $hFile, _
        "dword", "", _
        "dword", $PAGE_READONLY, _
        "dword", 0, _
        "dword", 0, _
        "str", "")
    If @error Or $hMap[0] = 0 Then
        DllCall($hK, "int", "CloseHandle", "hwnd", $hFile)
        DllClose($hK)
        Return 0
    EndIf
    $hMap = $hMap[0]

    Local $p = DllCall($hK, "hwnd", "MapViewOfFile", _
        "hwnd", $hMap, _
        "dword", $FILE_MAP_READ, _
        "dword", 0, _
        "dword", 0, _
        "uint", 0)
    If @error Or $p[0] = 0 Then
        DllCall($hK, "int", "CloseHandle", "hwnd", $hMap)
        DllCall($hK, "int", "CloseHandle", "hwnd", $hFile)
        DllClose($hK)
        Return 0
    EndIf
    $pBase = $p[0]

    ; safe to close handles after mapping the view
    DllCall($hK, "int", "CloseHandle", "hwnd", $hMap)
    DllCall($hK, "int", "CloseHandle", "hwnd", $hFile)
    DllClose($hK)
    Return $pBase
EndFunc

Func __RvaToFoa($rva, ByRef $aSecs)
    For $i = 0 To UBound($aSecs) - 1
        Local $va = $aSecs[$i][0], $raw = $aSecs[$i][1], $ptr = $aSecs[$i][2], $vsz = $aSecs[$i][3]
        Local $span = ($raw > $vsz) ? $raw : $vsz
        If $span And $rva >= $va And $rva < ($va + $span) Then Return $ptr + ($rva - $va)
    Next
    Return -1
EndFunc

Func __GuidToN_FromPtr($pGuid)
    Local $t = DllStructCreate("ubyte b[16]", $pGuid)
    Local $s = ""
    $s &= StringFormat("%02X%02X%02X%02X", _
        DllStructGetData($t, "b", 4), DllStructGetData($t, "b", 3), _
        DllStructGetData($t, "b", 2), DllStructGetData($t, "b", 1))
    $s &= StringFormat("%02X%02X", _
        DllStructGetData($t, "b", 6), DllStructGetData($t, "b", 5))
    $s &= StringFormat("%02X%02X", _
        DllStructGetData($t, "b", 8), DllStructGetData($t, "b", 7))
    For $i = 9 To 16
        $s &= StringFormat("%02X", DllStructGetData($t, "b", $i))
    Next
    Return $s
EndFunc

Func _dlSym($a,$b)
  Local $c=_ps($a),$d=PE_GetGuidAgeKey($a),$e=$c[2]&".pdb",$f=StringFormat("symbols/%s/%s/%s",$e,$d,$e),$g=$b&"\"&StringReplace($f,'/','\'),$h
  If $d="" Then Return SetError(1,0,0)
  If Not DirCreate(StringFormat("%s\symbols\%s\%s",$b,$e,$d)) Then Return SetError(2,0,0)
  $h=InetGet(StringFormat("https://msdl.microsoft.com/download/%s",$f),$g,10)
  If @error Or $h=0 Then Return SetError(3,0,0)
  Return SetError(0,0,1)
EndFunc
