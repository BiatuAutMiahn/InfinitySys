#Region ;**** Directives created by AutoIt3Wrapper_GUI ****

#AutoIt3Wrapper_Icon=Res\ctdkgrsq.ico
#AutoIt3Wrapper_Outfile_x64=InitTC.exe
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <Debug.au3>
#include <WinAPIDiag.au3>
#include <iNet.au3>

#include "Includes\Toast.au3"
#include "Includes\JSON.au3"
#include "Includes\ArrayMultiColSort.au3"

$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,"initCTPE","Program must be run from CorsicaPE! If circumvented, irreparable damage will occur to windows.")
    Exit 1
EndIf
Global $g_sCfgPath
Global $g_jsonCfg
Global $g_sArcDrive=RegRead("HKLM\System\CurrentControlSet\Control\CorsicaPE","ArcDrive")
_loadCfg()

;Local $sCfgFile=EnvGet("SystemDrive")&"\cfgCTPE.json"
;If Not FileExists($sCfgFile) Then Exit 1
;Local $hFile=FileOpen($sCfgFile)
Local $vCts=_JSON_Get($g_jsonCfg,"cts")
If $vCts="" Then Exit 2
; Check internet connection
Local $bConn, $hTimer=TimerInit()
Local $sTitle="Init TakeControl+"
If Not _WinAPI_IsInternetConnected() Then
    _Toast_Show(0,$sTitle,"Waiting for network...")
EndIf
While Sleep(1000)
    $bConn=_WinAPI_IsInternetConnected()
    If $bConn Then ExitLoop
    If TimerDiff($hTimer)>=900000 Then
        _Toast_Show(0,$sTitle,"Cannot connect to network! Error 2, Exiting.",10)
        Exit 2
    EndIf
WEnd
_Toast_Hide()
_Toast_Show(0,$sTitle,"Downloading TakeControl...")
Local $hDl=InetGet("https://startcontrol.com/s/"&$vCts,"X:\TakeControl.exe", 1+8,0)
If @error Then
    _Toast_Hide()
    _Toast_Show(0,$sTitle,"Download Failed, Error 4. Exiting!")
    Exit 4
EndIf
If $hDl=0 Then
    _Toast_Hide()
    _Toast_Show(0,$sTitle,"Download Failed, Error 5. Exiting!")
    Exit 5
EndIf
_Toast_Hide()
_Toast_Show(0,$sTitle,"Launching...")
Run("X:\TakeControl.exe")
ProcessWait("BASupApp.exe")
ProcessClose("BASupApp.exe")
$tcdir=@LocalAppDataDir&"\BeAnywhere Support Express\GetSupport"
FileCreateShortcut($tcdir&"\BASupApp.exe",@DesktopDir&"\ElevateTC.lnk",$tcdir,"-elevate_and_sas")
Run($tcdir&"\BASupApp.exe -elevate_and_sas",$tcdir)
Exit

Func _loadCfg()
    ;_pushLogStack("_loadCfg")
    Local $aPaths[]=[2,$g_sArcDrive,EnvGet("SystemDrive")]
    ;Local $sCfg=;$g_sCfgFile=EnvGet("SystemDrive")
    For $j=1 To $aPaths[0]
        $sCfg=$aPaths[$j]&"\cfgCTPE.json"
        If Not FileExists($sCfg) Then ContinueLoop
        Local $hFile=FileOpen($sCfg)
        Local $vCfg=_JSON_Parse(FileRead($hFile))
        If Not @error Then
            $g_sCfgPath=$sCfg
            $g_jsonCfg=$vCfg
            FileClose($hFile)
            ;_popLogStack()
            Return SetError(0,0,1)
        EndIf
        FileClose($hFile)
        ;_popLogStack()
        Return SetError(0,0,0)
    Next
EndFunc
