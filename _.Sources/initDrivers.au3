#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_Outfile_x64=..\..\initDrivers.exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/mo
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Include <debug.au3>
#Include <file.au3>
#include <Misc.au3>
#include <WinAPIShPath.au3>

#include "Includes\WinObj.au3"
#include "Includes\ArrayMultiColSort.au3"

; Get Sys Info
Global $vSysMfg,$vSysModel,$vSysSerial,$vSysSKU,$vSysFamily
$oWmi=ObjGet("winmgmts:{impersonationLevel=impersonate}!\\.\")
If IsObj($oWmi) Then
    $oBios=$oWmi.ExecQuery('SELECT * From Win32_BIOS',"WQL")
    If IsObj($oBios) Then
       $oBios=$oBios.ItemIndex(0)
       $vSysMfg=_cs($oBios.Manufacturer)
       $vSysSerial=_cs($oBios.SerialNumber)
    EndIf
    $oCompSys=$oWmi.ExecQuery('SELECT * From Win32_ComputerSystem',"WQL")
    If IsObj($oCompSys) Then
        $oCompSys=$oCompSys.ItemIndex(0)
        $vSysModel=_cs($oCompSys.Model)
        $vSysSKU=_cs($oCompSys.SystemSKUNumber)
        $vSysFamily=_cs($oCompSys.SystemFamily)
    Endif
EndIf

Global $sData=@SystemDir&"\InfinitySys"
Global $sArcDrive
Local $sRegKey="HKLM\System\CurrentControlSet\Control"
Local $bLogDevs=1
Global $bNoFilter=StringInStr($CmdLineRaw,"-Force")
Global $sSysReg="HKLM\SYSTEM\CurrentControlSet\Control\CorsicaPE"

$sArcDrive=_GetArcDrive()
FileDelete($sArcDrive&"\_.ScanDriversNew.log")
_Log(@CRLF)
;$vSysMfg,$vSysModel,$vSysSerial,$vSysSKU,$vSysFamily
_Log("devMfg: "&$vSysMfg&@CRLF)
_Log("devModel: "&$vSysModel&@CRLF)
_Log("devSerial: "&$vSysSerial&@CRLF)
_Log("devSKU: "&$vSysSKU&@CRLF)
_Log("devFamily: "&$vSysFamily&@CRLF&@CRLF)
_Log("Scanning Driver Paths..."&@CRLF)
$aDDBs=_ScanDrivers()
;_DebugArrayDisplay($aDDBs)
_Log("Done"&@CRLF&@CRLF)
Local $sDrvCfg,$aCfgLoad,$aCfgExcl[]=[0]

_Log("[DriverDB(s) Found]"&@CRLF)
For $i=1 To $aDDBs[0]
    _Log(StringFormat("%s",$aDDBs[$i])&@CRLF)
Next
_Log("[Exclusions]"&@CRLF)
For $i=1 To $aCfgExcl[0]
    _Log($aCfgExcl[$i]&@CRLF)
Next



Local $aMatches[]=[0],$iMax=0,$aDone[]=[0]
Local $sDrvPath
Local $aExport[]=[0],$iExp=0
Local $sDrvLoadRegEx="DrvLoad: (?:Unable to|Successfully) load(?:ed)? ([a-zA-Z]:\\.*\.inf)(?:\.| \(Error (0x[0-9A-Fa-f]+)\).)"
Do
    Dim $aMatches[]=[0]
    For $i=1 To $aDDBs[0]
        $sCmd=StringFormat('%s\bin\ddbUtil.exe "%s" -list',$sData,$aDDBs[$i])
        Local $sBuf="",$bCapt=0
        $sBuf=CmdGetOut($sCmd)
        If $sBuf="" Then ContinueLoop
        $aLines=StringSplit($sBuf,@CRLF,1)
        $sDrvPath=_WinAPI_PathRemoveFileSpec($aDDBs[$i])
        For $j=1 To $aLines[0]
            $sLine=StringStripWS($aLines[$j],3)
            If $sLine="" Then ContinueLoop
            If Not $bCapt Then
                If $sLine<>"[Matches]" Then
                    ContinueLoop
                Else
                    $bCapt=1
                    ContinueLoop
                EndIf
            EndIf
            For $k=1 To $aDone[0]
                If $aDone[$k]=$sDrvPath&"\"&$sLine Then ContinueLoop 2
            Next
            If Not FileExists($sDrvPath&"\"&$sLine) Then
                _Log(StringFormat("FileNotFound: %s\r\n",$sDrvPath&"\"&$sLine))
                ContinueLoop
            EndIf
            $iMax=UBound($aMatches,1)
            ReDim $aMatches[$iMax+1]
            $aMatches[$iMax]=$sDrvPath&"\"&$sLine
            $aMatches[0]=$iMax
        Next
    Next
    If $aMatches[0]>0 Then
        $sDrvLoad=''
        For $i=1 To $aMatches[0]
            $iExMax=UBound($aDone,1)
            ReDim $aDone[$iExMax+1]
            $aDone[$iExMax]=$aMatches[$i]
            $aDone[0]=$iExMax
            For $j=1 To $aCfgExcl[0]
              If StringRegExp($aMatches[$i],$aCfgExcl[$j]) Then
                _Log('Excluding: "'&$aMatches[$i]&'", Matching: "'&$aCfgExcl[$j]&'"'&@CRLF)
                ContinueLoop 2
              EndIf
            Next
            $sDrvLoad&='"'&$aMatches[$i]&'"'
            If $i<$aMatches[0] Then $sDrvLoad&=' '
        Next
        _Log(@CRLF)
        $sOut=CmdGetOut('X:\Windows\System32\drvload.exe '&$sDrvLoad,@SystemDir)
        If StringRegExp($sOut,$sDrvLoadRegEx) Then
            $aMatch=StringRegExp($sOut,$sDrvLoadRegEx,4)
            For $m=0 To UBound($aMatch,1)-1
                $iExp=UBound($aExport,1)
                ReDim $aExport[$iExp+1]
                $aExport[$iExp]=($aMatch[$m])[1]
                $aExport[0]=$iExp
            Next
        EndIf
    EndIf
Until $aMatches[0]=0
FileDelete("X:\initDrivers.ini")
$sPad=StringFormat("%%0%ds",StringLen($aExport[0]))
For $i=1 To $aExport[0]
    IniWrite("X:\initDrivers.ini","drvload",StringFormat($sPad,$i-1),$aExport[$i])
Next

Func CmdGetOut($sCmd,$sWorkDir=@SystemDir)
    Local $sBuf,$iPid,$vPeek,$sStdOut
    _Log(StringFormat("\r\n\r\nRun: [%s]",$sCmd)&@CRLF)
    $iPid=Run($sCmd,$sWorkDir,@SW_HIDE,0x8)
    Do
        $vPeek=StdoutRead($iPid,1,0)
        If $vPeek<>"" Then
            $sStdOut=StdoutRead($iPid)
            $sBuf&=$sStdOut
            If StringInStr($sStdOut,@CRLF) Then
                $aml=StringSplit(StringStripCR($sStdOut),@LF,1)
                For $x=1 To $aml[0]
                    _Log(StringFormat("[%s]: %s\r\n",$iPid,($aml[$x])))
                Next
            Else
                _Log(StringFormat("[%s]: %s\r\n",$iPid,$sStdOut))
            EndIf
        EndIf
    Until Not ProcessExists($iPid)
    Return $sBuf
EndFunc

Func _ScanDrivers()
    Local $aScanPaths[]=[0],$aRet[]=[0],$iMax=0
    _ScanDrv_PushBack($aScanPaths,"x:\drivers")
    ; Check Boot Drive
    Local $sRegKey="HKLM\System\CurrentControlSet\Control"
    Local $sBootArgs=RegRead($sRegKey,"SystemStartOptions")
    Local $sBootDev,$sArcPath
    If StringRegExp($sBootArgs,"RDPATH=([^\\]*)") Then
        $sArcPath=StringRegExp($sBootArgs,"RDPATH=([^\\]*)",1)[0]
        $sArcDev=_ArcGetDev($sArcPath)
        $sArcDrive=_DevGetDrive($sArcDev)
        _ScanDrv_PushBack($aScanPaths,$sArcDrive&"\Drivers")
    EndIf
    ;_DebugArrayDisplay($aScanPaths)
    For $i=1 To $aScanPaths[0]
        $aList=_FileListToArrayRec($aScanPaths[$i],"*.ddb",1,1,0,2)
        If @error Then
            _Log("Error "&@error&' while scanning "'&$aScanPaths[$i]&'"'&@CRLF)
            ContinueLoop
        EndIf
        ;_Log(@error&@CRLF)
        ;_Log(@extended&@CRLF)
        ;MsgBox(64,"",$aScanPaths[$i]&@CRLF)
        ;_DebugArrayDisplay($aList,$aScanPaths[$i])
        ;_DebugArrayDisplay($aList)
        For $j=1 To $aScanPaths[0]
          Local $sDrvCfg=$aScanPaths[$j]&"\DriverCfg.ini"
          If Not FileExists($sDrvCfg) Then ContinueLoop
          $aCfgLoad=IniReadSection($sDrvCfg,"DrvLoad.Exclude")
          If @error Then ContinueLoop
          For $k=1 To $aCfgLoad[0][0]
            For $l=1 To $aCfgExcl[0]
              If $aCfgLoad[$k][1]=$aCfgExcl[$l] Then ContinueLoop 2
            Next
            Local $iCfgExcl=UBound($aCfgExcl,1)
            $aCfgExcl[$iCfgExcl]=$aCfgLoad[$k][1]
            $aCfgExcl[0]=$iCfgExcl
          Next
        Next

        For $j=1 To $aList[0]
            ;$vSysMfg,$vSysModel,$vSysSerial,$vSysSKU,$vSysFamily
            ;ConsoleWrite($aList[$j]&@CRLF)
            ;ClipPut("(?i)[a-z]:\\drivers\\(generic|storage|network|wlan|hid|system|"&$vSysMfg&'|'&$vSysModel&")(?:\\("&$vSysModel&'|'&$vSysSKU&"))?\\[^\\]+\.ddb")
            If Not $bNoFilter And Not StringRegExp($aList[$j],"(?i)[a-z]:\\drivers\\(?:(generic|storage|network|wlan|hid|system)\\.+\.ddb|("&$vSysMfg&'|'&$vSysModel&")(?:\\("&$vSysModel&'|'&$vSysSKU&"))?\\[^\\]+\.ddb)") Then ContinueLoop
            $iMax=UBound($aRet,1)
            ReDim $aRet[$iMax+1]
            $aRet[$iMax]=$aList[$j]
        Next
    Next
    $aRet[0]=$iMax
    Return $aRet
EndFunc

Func _ScanDrv_PushBack(ByRef $aPaths, $sPath)
    Local $iMax=0
    If FileExists($sPath) And StringInStr(FileGetAttrib($sPath),'d') Then
        ConsoleWrite($sPath&@CRLF)
        Local $iMax=UBound($aPaths,1)
        ReDim $aPaths[$iMax+1]
        $aPaths[$iMax]=$sPath
        $aPaths[0]=$iMax
    EndIf
EndFunc

Func _Log($sLine)
    FileWriteLine($sArcDrive&"\_.initDrivers.log",$sLine)
    FileWriteLine("X:\_.initDrivers.log",$sLine)
    ConsoleWrite($sLine)
EndFunc

Func _GetArcDrive()
    _Log("Getting ARC Drive..."&@CRLF)
    Local $sSysReg="HKLM\System\CurrentControlSet\Control"
    Local $sArcDrive=RegRead($sSysReg&"\CorsicaPE","ArcDrive")
    If Not @Error Then
        If FileExists($sArcDrive) Then
            _Log("ARC Drive found at: "&$sArcDrive&@CRLF)
            Return $sArcDrive
        EndIf
        _Log("ARC Drive was removed. Checking..."&@CRLF)
    EndIf
    Local $sBootArgs=RegRead($sSysReg,"SystemStartOptions")
    Local $sArcDev,$sArcPath
    If StringRegExp($sBootArgs,"RDPATH=([^\\]*)") Then
        $sArcPath=StringRegExp($sBootArgs,"RDPATH=([^\\]*)",1)[0]
        _Log("ARC Path:"&$sArcPath&@CRLF)
        $sArcDev=_ArcGetDev($sArcPath)
        _Log("ARC Dev:"&$sArcDev&@CRLF)
        $sArcDrive=_DevGetDrive($sArcDev)
        _Log("ARC Drive:"&$sArcDrive&@CRLF)
        RegWrite($sSysReg&"\CorsicaPE","ArcDrive","REG_SZ",$sArcDrive)
        Return $sArcDrive
    EndIf
EndFunc

Func _cs($s)
    Local $r=StringStripWS($s,7)
    If StringRight($r,1)='.' Then $r=StringTrimRight($r,1)
    Return $r
EndFunc
