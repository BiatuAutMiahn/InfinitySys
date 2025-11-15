#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Include <debug.au3>
#Include <file.au3>
#include <Misc.au3>

;#Include "IniEx.au3"
#include "Includes\WinObj.au3"
#include "Includes\ArrayMultiColSort.au3"
#include "Includes\SetupApi.au3"
#include "Includes\ScanDevs.au3"

Global $sArcDrive
Local $sRegKey="HKLM\System\CurrentControlSet\Control"
Local $sBootArgs=RegRead($sRegKey,"SystemStartOptions")
Local $sBootDev,$sArcPath
Local $bLogDevs=1
If StringRegExp($sBootArgs,"RDPATH=([^\\]*)") Then
    $sArcPath=StringRegExp($sBootArgs,"RDPATH=([^\\]*)",1)[0]
    $sArcDev=_ArcGetDev($sArcPath)
    $sArcDrive=_DevGetDrive($sArcDev)
EndIf
FileDelete($sArcDrive&"\_.ScanDrivers.log")
_Log("Scanning Driver Paths...")
Global $aDriverPaths=_ScanDrivers()
_Log("Done"&@CRLF)

_Log("Loading Driver Exclusions...")
Local $sDrvCfg,$aCfgLoad,$aCfgExcl[]=[0]
For $i=1 To $aDriverPaths[0][0]
  Local $sDrvCfg=$aDriverPaths[$i][0]&"\DriverCfg.ini"
  If Not FileExists($sDrvCfg) Then ContinueLoop
  $aCfgLoad=IniReadSection($sDrvCfg,"DrvLoad.Exclude")
  If @error Then ContinueLoop
  For $j=1 To $aCfgLoad[0][0]
    For $k=1 To $aCfgExcl[0]
      If $aCfgLoad[$j][1]=$aCfgExcl[$k] Then ContinueLoop 2
    Next
    Local $iCfgExcl=UBound($aCfgExcl,1)
    $aCfgExcl[$iCfgExcl]=$aCfgLoad[$j][1]
    $aCfgExcl[0]=$iCfgExcl
  Next
Next
_Log("Done"&@CRLF)

_Log("[Driver Paths]"&@CRLF)
For $i=1 To $aDriverPaths[0][0]
    _Log(StringFormat("%s (Found %s Drivers)",$aDriverPaths[$i][0],($aDriverPaths[$i][1])[0][0])&@CRLF)
Next
_Log("[Exclusions]"&@CRLF)
For $i=1 To $aCfgExcl[0]
    _Log($aCfgExcl[$i]&@CRLF)
Next

Local $aExclude[]=[0], $iExMax=0

Func _doIt()
    _Log("Scanning System Devices...")
    $aDevices=_GetSysDevs()
    _Log("Done"&@CRLF)
    Local $iMaxY=UBound($aDevices,2)-1
    ;_DebugArrayDisplay($aDevices)
    If $bLogDevs Then
        For $z=1 To $aDevices[0][0]
            Local $sHwdesc="["&$z&'|'
            $sHwdesc&=StringFormat("%s,%s,%s,%s,%s,%s,%s,%s,%s",$aDevices[$z][0],$aDevices[$z][1],$aDevices[$z][2],$aDevices[$z][3],$aDevices[$z][4],$aDevices[$z][5],$aDevices[$z][6],$aDevices[$z][9],$aDevices[$z][10])
            Local $aHwid=$aDevices[$z][7]
            Local $aCpid=$aDevices[$z][8]
            If IsArray($aHwid) Then
                $sHwdesc&=$aHwid[0]&','
            Else
                $sHwdesc&='0,'
            EndIf
            If IsArray($aCpid) Then
                $sHwdesc&=$aCpid[0]&','
            Else
                $sHwdesc&='0,'
            EndIf
            $sHwdesc&=']'&@CRLF
            If IsArray($aHwid) Then
                For $y=1 To $aHwid[0]
                    $sHwdesc&=$aHwid[$y]&@CRLF
                Next
            EndIf
            If IsArray($aCpid) Then
                For $y=1 To $aCpid[0]
                    $sHwdesc&=$aCpid[$y]&@CRLF
                Next
            EndIf
            _Log($sHwdesc)
            ;ConsoleWrite($sHwdesc)
        Next
        $bLogDevs=0
    EndIf

    ; Filter Devs
    ;If $aDevices[$i][0]<>"" Then ContinueLoop
    Local $aMatches[1][2],$aDevMaster[1][2],$bCapt=0,$iMaxDevHW=1,$iMaxDevCP=1
    $aMatches[0][0]=0
    Local $z=1
    Local $iTimer=TimerInit()
    Do
        $bCapt=0
        For $z=1 To $aDevices[0][0]
            $aCPIDs=$aDevices[$z][8]
            ;if $aDevices[$z][4]<>"" Then ContinueLoop
            If Not IsArray($aCPIDs) Then ContinueLoop
            If $iMaxDevCP>$aCPIDs[0] Then ContinueLoop
            ;For $y=1 To $aMatches[0][0]
            ;    If $aMatches[$y][0]=$z Then ContinueLoop 2
            ;Next
            For $y=1 To $aDevMaster[0][0]
                If $aDevMaster[$y][1]=StringLower($aCPIDs[$iMaxDevCP]) Then ContinueLoop 2
            Next
            ;_DebugArrayDisplay($aHwids)
            $iMax=UBound($aDevMaster,1)
            ReDim $aDevMaster[$iMax+1][2]
            $aDevMaster[$iMax][0]=$z
            $aDevMaster[$iMax][1]=StringLower($aCPIDs[$iMaxDevCP])
            $aDevMaster[0][0]=$iMax
            $bCapt=1
        Next
        $iMaxDevCP+=1
    Until $bCapt=0

    ;_DebugArrayDisplay($aDevMaster,$iMaxDevHW&','&$iMaxDevCP)
    Local $sInf,$sDrvClass,$sDrvDate,$sDrvVer,$sHwid
    Local $iDev,$sDevClass,$sDevDate,$sDevVer
    For $z=1 To $aDriverPaths[0][0]
        $aDrivers=$aDriverPaths[$z][1]
        ;_DebugArrayDisplay($aDrivers)
        For $y=1 To $aDrivers[0][0]
            $sInfPath=StringLower($aDrivers[$y][0])
            For $j=1 To $aExclude[0]
                If $aExclude[$j]=$sInfPath Then ContinueLoop 2
            Next
            For $x=1 To $aMatches[0][0]
                If $aMatches[$x][1]=$sInfPath Then
                    ContinueLoop 2
                EndIf
            Next
            $sDrvClass=$aDrivers[$y][1]
            ;If StringInStr("display,antivirus,holographic",$sDrvClass) Then ContinueLoop
            $sDrvDate=$aDrivers[$y][3]
            $sDrvVer=$aDrivers[$y][4]
            $sInf=$aDrivers[$y][5]
            For $x=1 To $aDevMaster[0][0]
                $iDev=$aDevMaster[$x][0]
                ;For $w=1 To $aMatches[0][0]
                ;    If $aMatches[$w][0]=$iDev Then ContinueLoop 2
                ;Next
                $sDevClass=StringStripWS(StringLower($aDevices[$iDev][0]),3)
                If $sDrvClass<>$sDevClass And $sDevClass<>"" And $sDrvClass<>"" Then ContinueLoop
                ;_Log(StringFormat("%s<>%s",$sDrvClass,$sDevClass)&@CRLF)
                $sHwid=$aDevMaster[$x][1]

                If Not StringInStr($sInf,$sHwid,1) Then ContinueLoop
                ;If $aDevMaster[$x][1]="acpi\mshw0350" Then _Log("!"&@CRLF)
                $sDevDate=$aDevices[$iDev][9]
                $sDevVer=$aDevices[$iDev][10]
                $ivCmp=_VersionCompare($sDrvVer,$sDevVer)
                If $ivCmp<1 Then ContinueLoop

                _Log(StringFormat("[%s]\r\nsHwid: %s\r\nDate: %s<>%s\r\n Ver: %s<>%s:%s\r\n",$sInfPath,$sHwid,$sDrvDate,$sDevDate,$sDrvVer,$sDevVer,$ivCmp)&@CRLF)
                $iMatchMax=UBound($aMatches,1)
                ReDim $aMatches[$iMatchMax+1][2]
                $aMatches[$iMatchMax][0]=$iDev
                $aMatches[$iMatchMax][1]=$sInfPath
                $aMatches[0][0]=$iMatchMax
            Next
        Next
        ;_DebugArrayDisplay($aMatches)
    Next
    $iTimer=TimerDiff($iTimer)
    ;For $i=1 To $aMatches[0][0]
    ;    $aMatches[0][0]
    ;Next
    _Log($iTimer&@CRLF)
    If Not $aMatches[0][0] Then
        _Log("No applicable drivers found."&@CRLF)
    Else
        $sDrvLoad=''
        For $i=1 To $aMatches[0][0]
            $iExMax=UBound($aExclude,1)
            ReDim $aExclude[$iExMax+1]
            $aExclude[$iExMax]=$aMatches[$i][1]
            $aExclude[0]=$iExMax
            For $j=1 To $aCfgExcl[0]
              If StringRegExp($aMatches[$i][1],$aCfgExcl[$j]) Then
                _Log('Excluding: "'&$aMatches[$i][1]&'", Matching: "'&$aCfgExcl[$j]&'"'&@CRLF)
                ContinueLoop 2
              EndIf
            Next
            $sDrvLoad&='"'&$aMatches[$i][1]&'"'
            If $i<$aMatches[0][0] Then $sDrvLoad&=' '
        Next
        _Log(@CRLF)
        _Log($sDrvLoad&@CRLF)
        RunWait('X:\Windows\System32\drvload.exe '&$sDrvLoad,@ScriptDir,@SW_SHOW,0x10)
    EndIf
    ;_DebugArrayDisplay($aExclude)
    Return $aMatches[0][0]
EndFunc

While _doIt()
    Sleep(125)
WEnd
;Sleep(5000)
;_DebugArrayDisplay($aMatches,$iTimer)
;_DebugArrayDisplay($aDriverPaths)
;_DebugArrayDisplay($aDevices,$aDevices[0][0])
Func _ScanDrivers()
    Local $aPaths[1][2],$iMax=0
    _ScanDrv_PushBack($aPaths,"x:\drivers")
    ; Check Boot Drive
    Local $sRegKey="HKLM\System\CurrentControlSet\Control"
    Local $sBootArgs=RegRead($sRegKey,"SystemStartOptions")
    Local $sBootDev,$sArcPath
    If StringRegExp($sBootArgs,"RDPATH=([^\\]*)") Then
        $sArcPath=StringRegExp($sBootArgs,"RDPATH=([^\\]*)",1)[0]
        $sArcDev=_ArcGetDev($sArcPath)
        $sArcDrive=_DevGetDrive($sArcDev)
        _ScanDrv_PushBack($aPaths,$sArcDrive&"\Drivers")
    EndIf
    ;Local $aDrives=DriveGetDrive("FIXED")
    ;For $i=1 To $aDrives[0]
    ;    For $j=1 To $aPaths[0][0]
    ;        If StringLeft($aPaths[$j][0],2)=$aDrives[$i] Then ContinueLoop 2
    ;    Next
    ;    _ScanDrv_PushBack($aPaths,$aDrives[$i]&"\Windows\System32\DriverStore\FileRepository")
    ;Next
    For $i=1 To $aPaths[0][0]
        $aPaths[$i][1]=_PathParseDriverBasic($aPaths[$i][0])
    Next
    Return $aPaths
EndFunc

; Then Drives containing ?:\Windows\System32\DriverStore\FileRepository
; Then Removable Drives
; Then Fixed

Func _ScanDrv_PushBack(ByRef $aPaths, $sPath)
    If FileExists($sPath) And StringInStr(FileGetAttrib($sPath),'d') Then
        Local $iDimY=UBound($aPaths,2)
        Local $iMax=UBound($aPaths,1)
        ReDim $aPaths[$iMax+1][$iDimY]
        $aPaths[$iMax][0]=$sPath
        $aPaths[0][0]=$iMax
    EndIf
EndFunc

;$aPaths[2][0]=

;



Func _PathParseDriverBasic($sPath)
    Local $aDrivers[1][6]
    $aDrivers[0][0]=0
    Local $aFiles=_FileListToArrayRec($sPath,"*.inf",1,1,0,2)
    If @error Then Return $aDrivers
    Local $aDevs[1][2]
    Local $iMax=0
    Local $sMatch="(\d{2}/\d{2}/\d{4})\s*,\s*((?:(?:\d+))?(?:\.(?:\d+))?(?:\.(?:\d+))?(?:\.(?:\d+))?)"
    Local $sVerStr
    For $i=1 To $aFiles[0]
        $sInf=$aFiles[$i]
        $iMax=UBound($aDrivers,1)
        ReDim $aDrivers[$iMax+1][6]
        $aDrivers[$iMax][0]=$sInf
        $aDrivers[$iMax][1]=StringStripWS(StringLower(IniRead($sInf,"Version","Class","")),8)
        $aDrivers[$iMax][2]=StringLower(IniRead($sInf,"Version","ClassGUID",""))
        $sVerStr=IniRead($sInf,"Version","DriverVer","")
        If StringRegExp($sVerStr,$sMatch) Then
            $aMatch=StringRegExp($sVerStr,$sMatch,1)
            $aDrivers[$iMax][3]=$aMatch[0]
            $aDrivers[$iMax][4]=$aMatch[1]
        EndIf
        $aDrivers[$iMax][5]=StringStripWS(StringLower(FileRead($sInf)),8)
    Next
    $aDrivers[0][0]=$iMax
    Local $aSort[][2]=[ _
        [1, 0], _
        [3, 0], _
        [4, 0] _
    ]
    _ArrayMultiColSort($aDrivers,$aSort,1)
    Return $aDrivers
EndFunc

Func _Log($sLine)
    FileWriteLine($sArcDrive&"\_.ScanDrivers.log",$sLine)
    ConsoleWrite($sLine)
EndFunc
