#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_Outfile_x64=..\..\InfinityPE.Init.exe
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Description=InfinityPE Managment
#AutoIt3Wrapper_Res_LegalCopyright=InfinityResearchAndDevelopment 2024
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Run_Au3Stripper=n
#Au3Stripper_Parameters=/debug
#AutoIt3Wrapper_Res_Fileversion=1.1.0.1083
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_Fileversion_First_Increment=y
#AutoIt3Wrapper_Res_ProductName=InfinityPE.Init
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 Author:         BiatuAutMiahn[@outlook.com]

 Script Function:
	Initialize & Manage InfinityPE

#ce ----------------------------------------------------------------------------
AutoItSetOption("ExpandEnvStrings", 1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("TrayAutoPause", 0)

#Include <Array.au3>
#include <String.au3>
#include <WindowsConstants.au3>
#include <WinAPI.au3>
#include <WinAPISys.au3>
#include <WinAPIFiles.au3>
#include <WinAPIProc.au3>
#include <WinAPIDiag.au3>
#include <WinAPIGdi.au3>
#include <File.au3>
#include <SecurityConstants.au3>
#include <Security.au3>
#include <APISysConstants.au3>
#include <WinAPIGdiDC.au3>
#include <debug.au3>
#include <misc.au3>

#include "Includes\HotKey_21b.au3"
#include "Includes\Services.au3"
#include "Includes\SetupAPI.au3"
#include "Includes\WinObj.au3"
#include "Includes\JSON.au3"
#include "Includes\DWM.au3"

Global Const $VERSION = "1.1.0.1083"
Global Const $sAlias="CorsicaPE.Init"
Global Const $sTitle=$sAlias&" v"&$VERSION
$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,$sTitle,"Program must be run from CorsicaPE! If circumvented, irreparable damage will occur to windows.")
    Exit 1
EndIf

If $Cmdline[0]<>1 Then
    MsgBox(16,$sTitle,"Nothing to do!")
    Exit 1
EndIf

Global $sSystemDrive=EnvGet("SystemDrive")
Global $sBootDrive
Global $sLogFile=$sSystemDrive&"\CorsicaPE.Log"
Global $sNetWorkgroup="WORKGROUP";"INFINITYRND"
Global $sNetComputerName="CorsicaPE-"&StringUpper(Hex(Random(0,65535,1),4))
Global $sHost
Global $sBootSrcWim=""
Global $sBootSrcRW=""
Global $sBootSrcType=""
Global $aDevices[1][3]
Global $aDrvStore
Global $vCts=""
Global $sCfgFile=EnvGet("SystemDrive")&"\cfgCTPE.json"

Global $iUIDWM,$iUIProgressLast,$idUIProgress,$idUIStatus,$hUI
Global Const $VK_F12 = 0x7B
Global Const $VK_F11 = 0x7A
;Global Const $DIRECTORY_QUERY = 0x0001
;Global Const $DIRECTORY_TRAVERSE = 0x0002
;Global Const $CM_LOCATE_DEVNODE_NORMAL = 0x0
Global Const $DBT_DEVNODES_CHANGED = 0x7
;Global Const $sTagUNICODESTRING = "USHORT Length;USHORT MaximumLength;PTR Buffer;"
;Global Const $sTagOBJECT_ATTRIBUTES = "ULONG Length;HANDLE RootDirectory;PTR ObjectName;ULONG Attributes;PTR SecurityDescriptor;PTR SecurityQualityOfService"
Global $hGui
Global $sArcDrive
Global $aDrvLoad[]=[0]
Global $bArm64
Global $sSysShell
Global $iShellTimeout=10000
Global $aShells[]=[0]
Global $g_iTotProg
Global $g_iCurProg
Switch $CmdLine[1]
  Case "Boot"
        $bHasRun=RegRead("HKLM\SYSTEM\CurrentControlSet\Control\CorsicaPE","Init.Boot")=1
        If $bHasRun Then
            MsgBox(16,$sTitle,'Warning: This program should not be run twice!')
            Exit 1
        EndIf
        RegWrite("HKLM\SYSTEM\CurrentControlSet\Control\CorsicaPE","Init.Boot","REG_DWORD",1)
        $g_iTotProg=34
        $g_iCurProg=0
        _InitUI()
        _InitCommon()
        _StatusUI("Executing winpeshl.exe...")
        Local $sCfgWPES=@SystemDir&"\winpeshl.ini"
        FileDelete($sCfgWPES)
        FileWriteLine($sCfgWPES,"[LaunchApps]")
        FileWriteLine($sCfgWPES,"%Comspec%,/c Echo Doing Nothing...")
        _StatusUI("Waiting 2s for INT...",$g_iTotProg)
        _HotKey_Assign(BitOR($CK_CONTROL,$CK_SHIFT,$VK_F12), 'doPrompt')
        _HotKey_Assign(BitOR($CK_CONTROL,$CK_SHIFT,$VK_F11), 'doGetDeps')
        _GracePrompt()
        _Exec(@SystemDir&"\winpeshl.exe")
        _StatusUI("Executing wpeinit.exe...")
        _Exec(@SystemDir&'\wpeinit.exe')
        _StatusUI("Initializing...")
        ; ARM64 Debug
        ;
        ;$aDrives=DriveGetDrive("ALL")
        ;For $i=1 To $aDrives[0]
        ;  $sPath=$aDrives[$i]&"\arm64.CTPE\GetDeps"
        ;  If FileExists($sPath&"\GetDeps.exe") Then
        ;    Run($sPath&"\GetDeps.exe",$sPath,@SW_MAXIMIZE,0x10000)
        ;    ExitLoop
        ;  EndIf
        ;Next

        ;Run("X:\Programs.64\GetDeps\GetDeps.exe","X:\Programs.64\GetDeps",@SW_SHOW,0x10000)
        ;_Exec("PECMD.exe DISP W1024 H768 B32 F60")
        ;_ChangeWallpaper(@SystemDir&"\winpe.jpg",2,0)
        _Log("Machine Type: "&$sHost)
        ;$sNetComputerName="CorsicaPE-"&StringUpper(Hex(Random(0,65535,1),4))
        ;_StatusUI("Executing wpeinit.exe...")
        ;_Exec(@SystemDir&'\wpeinit.exe')
        ;_StatusUI("Executing winpeshl.exe...")
        ;_Exec(@SystemDir&"\winpeshl.exe")

        ;_Exec("Ux.exe")
        _StatusUI("Configuring Workgroup")
        $iRet=_SetWorkgroup($sNetWorkgroup)
        If @error Then
            _Log("Failed -> "&_WinAPI_GetLastErrorMessage()&","&@Extended,2)
        Else
            _Log("Success",2)
        EndIf

         _StatusUI("Configuring Computer Name")
         _Log("Configuring Computer Name -> "&$sNetComputerName,1)
         $iRet=_SetComputerName($sNetComputerName)
         If @error Then
             _Log("Failed -> "&_WinAPI_GetLastErrorMessage()&","&@Extended,2)
         Else
             _Log("Success",2)
         EndIf
        ;InitSwap
        ;InitPersist
        ;_DriverNoSign()
        ;_StatusUI("Initializing Services")
        _Log("Initializing Services",1)
        RegDelete("HKLM\SYSTEM\CurrentControlSet\Control\MiniNT")
        _InitService("eventsystem")
        _InitService("eventlog")
        _InitService("wecsvc")
        RegWrite("HKLM\SYSTEM\CurrentControlSet\Control\MiniNT")
        _InitService("swprv")
        _InitService("vss")



        _StatusUI("Initializing System Drivers")
        _InitDrvL("Initializing System Drivers","machine.inf,hal.inf,ramdisk.inf,battery.inf,wpdfs.inf,wpdmtp.inf")

;~         _Exec("drvload.exe "& _
;~             @SystemDir&"\DriverStore\FileRepository\machine.inf_amd64_neutral_a2f120466549d68b\machine.inf "& _
;~             &@SystemDir&"\DriverStore\FileRepository\hal.inf_amd64_1b81fabb9d26098a\hal.inf "& _
;~             &@WindowsDir&"\INF\ramdisk.inf " _
;~             &@SystemDir&"\DriverStore\FileRepository\battery.inf_amd64_0085c9b256fe0a22\battery.inf "& _
;~             &@SystemDir&"\DriverStore\FileRepository\wpdfs.inf_amd64_c3bf01033d09bf92\wpdfs.inf "& _
;~             &@SystemDir&"\DriverStore\FileRepository\wpdmtp.inf_amd64_396b6ab021beed75\wpdmtp.inf")


        _StatusUI("Initializing Network Drivers")
        _InitDrvL("Initializing Network Drivers", _
          "athw8.inf," & _
          "netathr.inf," & _
          "netathr10.inf," & _
          "netbc63.inf," & _
          "netbc64.inf," & _
          "netrtwlane.inf," & _
          "netrtwlane_13.inf," & _
          "netrtwlanu.inf," & _
          "netwbn02.inf," & _
          "netwen00.inf," & _
          "netwen01.inf," & _
          "netwlan92de.inf," & _
          "netwlv32.inf," & _
          "netwns32.inf," & _
          "netwsn00.inf," & _
          "netwtn02.inf," & _
          "netwtn04.inf," & _
          "netwsw01.inf," & _
          "nete1g3e.inf," & _
          "netwxw00.inf," & _
          "netvwififlt.inf," & _
          "netvwifibus.inf")

        _StatusUI("Initializing Audio Drivers")
        _InitDrvL("Initializing Audio Drivers", _
          "vmaudio.inf," & _
          "wdmaudio.inf," & _
          "wdma_usb.inf," & _
          "wdmaudiocoresystem.inf," & _
          "wdmvsc.inf," & _
          "hdaudbuf.inf," & _
          "hdaudss.inf," & _
          "hdaudio.inf")

        _StatusUI("Initializing Display Drivers")
        _InitDrvL("Initializing Display Drivers", _
          "basicdisplay.inf," & _
          "basicrender.inf," & _
          "c_display.inf," & _
          "display.inf," & _
          "displayoverride.inf")
        ;DisplayChangeRes(1024,768,32,60)

        If $sHost="VirtualBox" Then
            _StatusUI("Initializing VirtualBox Services")
            _InitVBox()
        EndIf

        ;_FindDeviceRecur(_CM_Locate_DevNode(""))
        ;_ArrayDisplay($aDevices)

        ;Local $aDrivers=_FileListToArrayRec("X:\Drivers","*.inf",1,1,0,2)
        ;For $i=1 To $aDrivers[0]
        ;    ConsoleWrite($aDrivers[$i]&',')
        ;    ConsoleWrite(RunWait(@SystemDir&'\Drvload.exe "'&$aDrivers[$i]&'"',"",@SW_SHOW,0x10000)&@CRLF)
        ;Next
        ;If MsgBox(33,$sTitle,"Abort Run Legacy ScanDrivers?",10)=0 Then _Exec("ScanDrivers.exe",0)

        ;_FileWriteFromArray($sSystemDrive&"\Drivers.ini",$aDevices)

        _StatusUI("Scanning for Other Devices...")
        _rescanDevs()

        _StatusUI("Initializng ms_ndisuio network protocol")
        _Exec("netcfg.exe -c p -i ms_ndisuio")
        _StatusUI("Initializng ms_sstp network protocol")
        _Exec("netcfg.exe -c p -i ms_sstp")
        _StatusUI("Installing ms_nativewifip network service")
        _Exec("netcfg.exe -c s -i ms_nativewifip")
        _Exec("netcfg.exe -c p -i ms_vwifi")
        _Exec("netcfg.exe -c s -i ms_vwifi")
        _InitService("Wlansvc")
        _InitService("WinHttpAutoProxySvc")
        _InitService("lmhosts")
        _InitService("lanmanserver")
        _InitService("sens")
        _InitService("profsvc")
        RegWrite("HKLM\SYSTEM\Setup", "SystemSetupInProgress", "REG_DWORD", 0)
        _InitService("netprofm")
        RegWrite("HKLM\SYSTEM\Setup", "SystemSetupInProgress", "REG_DWORD", 1)
        ;_Log("Configuring Explorer",1)
        ;_StatusUI("Configuring Shell")
        ;_ShellCfg();RunWait(@ComSpec&" /c ShellConfig.cmd")
        _StatusUI("Initializing Extra Drivers")
        Local $iDrvInitPid=_Exec("InitDrivers.exe",0,1)
        _StatusUI("Registering Fonts")
        _Exec(@SystemDir&'\AddFonts.exe',1,1)
        _Exec(@SystemDir&'\InitCTPE.exe',1,1)
        _StatusUI("Refreshing Program Attributes")
        _RefreshFolderAttribs(@ProgramsCommonDir)
        _RefreshFolderAttribs(@ProgramsDir)
        _RefreshFolderAttribs($sSystemDrive&"\System\Programs")

        ;RunWait(@SystemDir & "\Drvload.exe %WinDir%\System32\DriverStore\FileRepository\cui_dch.inf_amd64_de4302f9ce503910\cui_dch.inf " _
        ;    & "%WinDir%\System32\DriverStore\FileRepository\iigd_ext.inf_amd64_6772842a19a83819\iigd_ext.inf " _
        ;    & "%WinDir%\System32\DriverStore\FileRepository\iigd_dch.inf_amd64_8593324338be39de\iigd_dch.inf ")

        ;_Exec("%WinDir%\System32\InfinitySys\AeroGlass\DWMBlurGlass.exe loaddll")
        ;Run("X:\Windows\System32\InfinityPE.DWM.exe")
        _Log("Configuring Logon",1)
        _StatusUI("Configuring Logon")
        FileCopy("X:\Windows\System32\Config\Default","X:\Users\Default\NTUSER.DAT",9)
        _Exec('net accounts /maxpwage:unlimited')
        _Exec('net user InfinityUser "" /add')
        _Exec('net localgroup Administrators InfinityUser /add')
        _Exec('net localgroup Users InfinityUser /add')
        _Exec("secedit.exe /configure /db " & @WindowsDir & "\security\database\unattend.sdb /cfg " & @WindowsDir & "\security\templates\unattend.inf /log " & @WindowsDir & "\security\logs\unattend.log")
        ;RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "DefaultUserName", "REG_SZ", "InfinityUser")
        ;RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "AutoAdminLogon", "REG_SZ", "1")
        ;RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "DefaultPassword", "REG_SZ", "")
        ;RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "ForceAutoLogon", "REG_DWORD", "1")
;~         RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce", "ReConn", "REG_SZ", "System.Init.exe Logon")
        _InitService("seclogon")
        RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "AutoSwitchToAdmin", "REG_DWORD", 0)
        RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "userinit", "REG_SZ","userinit.exe,"&@AutoItExe&" Logon")

;~         _Exec("Ux.exe")
        ;Get Driverless Devices
;~         Run("cmd.exe")

        ;NET Load

        ;Begin Logon
        If ProcessExists($iDrvInitPid) Then
            _StatusUI("Waiting for initDriver to finish...")
            ProcessWaitClose($iDrvInitPid,60000)
        EndIf

        If $bArm64 Then
          ;$sSysShell=@SystemDir&"\InfinitySys\Ex6\Explorer.exe"
          ;RegWrite("HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon","Shell","REG_SZ",$sSysShell)
        ;  Run(@ComSpec,"",@SW_MINIMIZE)
        ;  ;Run(@AutoItExe&" Logon")
        EndIf
        _StatusUI("Waiting 2s for INT...")
        _GracePrompt()
        ;Else
        _Log("Initializing Logon",1)
        _StatusUI("Initializing Logon")
        DllCall("wtsapi32.dll", "int", "WTSDisconnectSession", "ptr", 0, "dword", -1, "ptr", 0)
        ;EndIf
        GUIDelete($hGui)
        _WinAPI_EmptyWorkingSet()
        While Sleep(1000)
        WEnd
  Case "Logon"
        _Singleton("InfinityPE.Logon_"&@UserName)
        $g_iTotProg=8
        $g_iCurProg=0
        _InitUI()
        _InitCommon()
        _StatusUI("Waiting 2s for INT...",$g_iTotProg)
        _GracePrompt()
        _StatusUI("Configuring Explorer")
        _Log("Configuring Explorer",1)
        Local $iKillTimer=TimerInit()
        If Not $bArm64 Then
          If FileExists($sSystemDrive&"\Program Files\Open-Shell\StartMenu.exe") Then
            ProcessWait("StartMenu.exe",10)
            Run("taskkill /f /im StartMenu.exe")
          EndIf
          ProcessWait("Explorer.exe",10)
          Run("taskkill /f /im Explorer.exe")
        EndIf
        ;_StatusUI("Initializing DWM...",$g_iTotProg)
        ;If Not $bArm64 Then Run(@SystemDir&"\InfinityPE.DWM.exe")
        ;_DriverNoSign()
        ;Enable NumLock
        ;Send("{NUMLOCK on}")

        RegWrite("HKCU\Control Panel\Colors","Background","REG_SZ","36 86 152")
        _WinAPI_SetSysColors($COLOR_DESKTOP,0x985624)

        ;[Class:Shell_TrayWnd]
        _ShellCfg()
        ;_StatusUI("Initializing Network Drive")
        ;_Log("Initializing Network Drive",1)
        ;$hTimer=TimerInit()
        ;Do
        ;    Sleep(1000)
        ;    If TimerDiff($hTimer)>10000 Then
        ;        ExitLoop
        ;    EndIf
        ;Until _WinAPI_IsNetworkAlive()
        ;_Exec("net use T: \\192.168.0.2\reminst\InfinityPE /USER:INFINITYCOMMS\Biatu <snip>")
        If $sHost="VirtualBox" Then
            _StatusUI("Starting VirtualBox Tray...")
            Run("X:\Windows\System32\VBoxTray.exe",@SystemDir)
        EndIf
        ;_StatusUI("Fixing Themes...")
        ;_Exec("net stop UxSms")
        ;_Exec("net start UxSms")
        _WinAPI_DwmEnableComposition(1)
        ;_Exec("Ux.exe")
        ;_Exec("psexec.exe -accepteula -i -s "&@ScriptFullPath&" Shell")
    ;Case "Shell"
        ;_DriverNoSign()
        ;Local $g_iTotProg=100/8
        ;_InitUI()
        ;MsgBox(64,"","")
        ;Run("X:\Programs.64\GetDeps\GetDeps.exe","X:\Programs.64\GetDeps")
        ;Sleep(5000)
        ;While ProcessExists("runonce.exe")
        ;    Sleep(1000)
        ;    ProcessClose("runonce.exe")
        ;WEnd
        ;_StatusUI("Configuring Shell")
        ;_ShellCfg()
        ;Run("Explorer.exe")
        ;Sleep(4000)
        ;While ProcessExists("Explorer.exe")
        ;    ProcessClose("Explorer.exe")
        ;WEnd
        ;RegWrite("HKCU\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
        ;RegWrite("HKU\.DEFAULT\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
        ;RegWrite("HKLM\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
        ;GFX Load
        ;_StatusUI("Initializing Graphics")

		;If Not _WinAPI_DwmIsCompositionEnabled() Then _Exec("net stop UxSms")
;~ 		Run("explorer.exe")
;~ 		ProcessWait("explorer.exe")
        ;If Not _WinAPI_DwmIsCompositionEnabled() Then
        ;    _InitGFX()
        ;    _Exec("net start UxSms")
        ;    _WinAPI_DwmEnableComposition(1)
        ;EndIf
        ;_WinAPI_DwmEnableComposition(1)
        ;NetworkPersist
        ;_DriverNoSign()

        ; Init Aud
        _StatusUI("Configuring Audio")
        _Exec('VolCtrl.exe --level 67 --unmute',1,1)

        ;MsgBox(64,"","")
        _Log("Initializing Applications",1)
        _StatusUI("Registering Applications")
        _Exec(@SystemDir&"\Infinity.RegApp.exe",1,1)
        ;_StatusUI("Registering MMC")
        ;_Log("MMC",2)
        ;_Exec("regsvr32 /s X:\Windows\System32\mmcndmgr.dll")
        _StatusUI("Registering MSI Installer")
        _Log("MSI",2)
        _Exec("regsvr32 /s X:\Windows\System32\msi.dll",1,1)
        _Exec("regsvr32 /s X:\Windows\SysWow64\msi.dll")
        ;_StatusUI("Starting MiniTool Partition Wizard Services")
        ;_Log("MiniTool Partition Wizard",2)
        ;_InitService("pwdrvio")
        ;_InitService("pwdspio")
        ;_StatusUI("Notepad++")
        ;_Log("Notepad++",2)
        ;_Exec("Regsvr32 /s X:\Programs.64\Notepad++\NppShell_06.dll")
        ;_StatusUI("7-zip")
        ;_Log("7-Zip",2)
        ;_Exec("Regsvr32 /s X:\Programs.64\7-Zip\7-zip.dll")
        ;_Exec("Regsvr32 /s X:\Programs.64\7-Zip\7-zip32.dll")
        ;_StatusUI("PdaNet")
        ;_Log("PdaNet",2)
        ;_Exec("Regsvr32 /s X:\Programs.32\PdaNet\brw.dll")
        ;_StatusUI("Firefox")
        ;_Log("Firefox",2)
        ;_Exec("Regsvr32 /s X:\Programs.64\Firefox\AccessibleHandler.dll")
        ;_StatusUI("Bulk Rename Utility")
        ;_Log("Bulk Rename Utility",2)
        ;_Exec("Regsvr32 /s X:\Programs.64\BRU\BRUhere64.dll")
        _StatusUI("HTML Help")
        _Log("HTML Help",2)
        _Exec("Regsvr32 /s X:\Windows\System32\hhctrl.ocx",1,1)
        _Exec("Regsvr32 /s X:\Windows\SysWow64\hhctrl.ocx")
        _Exec("Regsvr32 /s X:\Windows\System32\itss.dll",1,1)
        _Exec("Regsvr32 /s X:\Windows\SysWow64\itss.dll")
        _Exec("Regsvr32 /s X:\Windows\SysWow64\itircl.dll",1,1)
        _Exec("Regsvr32 /s X:\Windows\System32\itircl.dll")
        ;_StatusUI("Starting Explorer")
        ;Run("explorer.exe")
        RegWrite("HKCU\Control Panel\Colors","Background","REG_SZ","36 86 152")
        _WinAPI_SetSysColors($COLOR_DESKTOP,0x985624)
        If Not $bArm64 Then _InitShell()
        RegWrite("HKCU\Control Panel\Colors","Background","REG_SZ","36 86 152")
        _WinAPI_SetSysColors($COLOR_DESKTOP,0x985624)
        _StatusUI("Starting PENetwork")
        RegWrite("SOFTWARE\PENetwork","FirstCompleted","REG_DWORD",0)
        Run("X:\Program Files\PENetwork\PENetwork.exe")
        ;Shortcuts
        If FileExists("X:\Windows\System32\GetHostDrivers.exe") Then
            FileCreateShortcut("X:\Windows\System32\GetHostDrivers.exe",@DesktopCommonDir&"\Get Host Drivers.lnk",@SystemDir)
        EndIf
        If FileExists("X:\Windows\System32\InitRamInst.exe") Then
            FileCreateShortcut("X:\Windows\System32\InitRamInst.exe",@DesktopCommonDir&"\Init RAM Install.lnk",@SystemDir)
        EndIf
        ;Sleep(10000)
        ;ProcessClose("PENetwork.exe")
        ;RegWrite("SOFTWARE\PENetwork","FirstCompleted","REG_DWORD",0)
        ;Run("X:\Program Files\PENetwork\PENetwork.exe")
        If Not $vCts="" Then
            If FileExists("X:\Windows\System32\InitTC.exe") Then
                Run("X:\Windows\System32\InitTC.exe")
            EndIf
        EndIf
        ;Run($sSysShell)
        ;_Log("PowerISO",2)
        ;_Exec("Regsvr32 /s X:\Programs.64\PowerISO\PWRISOSH.DLL")
        ;Sleep(1000)
;
;~         _Log("Clearing Policies..."&RegDelete("HKLM\Software\Policies"))
;~         RegWrite("HKLM\Software\Policies")
;~         RegWrite("HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce", "ReConn", "REG_SZ", "System.Init.exe Shell2")

    ;Case "Apps"
    ;Scan for Programs[.32|.64]\\.*\\.InfinityPE\Program.ini
    ;
    ;Case "Update"
    ;   Get Reg
    ;   Get Arc Paths
    ;       If Fail, Attempt manually
    ;   PhoneHome, Check for new packages
    ;Case "NetDev"
    ;Case "InitDrivers"
        ;Scan For Hardware Devices
        ;
    ;Case "InitPersist"
    ;Case "InitNetPersist"
    Case Else
        Exit 1
EndSwitch

Func _DriverNoSign()
    RegWrite("HKCU\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
    RegWrite("HKCU\Software\Microsoft\Driver Signing","Policy","reg_binary",0x00)
    RegWrite("HKCU\Software\Microsoft\Non-Driver Signing","Policy","reg_binary",0x00)
    RegWrite("HKU\.DEFAULT\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
    RegWrite("HKLM\Software\Policies\Microsoft\Windows NT\Driver Signing","BehaviorOnFailedVerify","reg_dword",0)
    RegWrite("HKLM\Software\Microsoft\Driver Signing","Policy","reg_binary",0x00)
    RegWrite("HKLM\Software\Microsoft\Non-Driver Signing","Policy","reg_binary",0x00)
EndFunc

;~ Func _FindDeviceRecur($hDevInst)
;~         Local $aChild, $sDescr, $sClass,$iMax
;~         $aChild=_CM_Enumerate_Children($hDevInst)
;~         For $i=1 To $aChild[0]
;~             $hDevInst=_CM_Locate_DevNode($aChild[$i])
;~             $sClass=_CM_Get_DevNode_Registry_Property($hDevInst,$CM_DRP_CLASS)
;~             _CM_Get_DevNode_Status_Ex($hDevInst,0)
;~             $iProb=@extended
;~             If ($sClass="" And $iProb<>0) Then
;~                 $iMax=UBound($aDevices,1)
;~                 ReDim $aDevices[$iMax+1][3]
;~                 $sDescr=_CM_Get_Device_Display_Name_Ex($hDevInst)
;~                 $aDevices[0][0]=$iMax
;~                 $aDevices[$iMax][0]=$sDescr
;~                 $aDevices[$iMax][1]=$aChild[$i]
;~                 $aDevices[$iMax][2]=$iProb
;~             EndIf
;~             _FindDeviceRecur($hDevInst)
;~         Next
;~         ;Return $aDevices
;~ EndFunc

Func _ShellCfg()
    ;Run("Infinity.RegApp.exe")
    ;FileDelete(@DesktopDir&"\Desktop.ini")
    ;FileDelete(@DesktopCommonDir&"\Desktop.ini")
    RegWrite("HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced","IconsOnly","REG_DWORD",1)
    RegWrite("HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams","Settings","REG_BINARY",Binary("0x080000000600000001000000e525f165e17b1048ba9dd271c8432ce304000000be01000043000000"))
    RegWrite("HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults","{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}","REG_BINARY",Binary("0x1c000000000000000000000000000000000000000000000000000000f1f1f1f114000000000000000000000000000000d0020000cc0200003153505305d5cdd59c2e1b10939708002b2cf9ae830000002200000000470072006f0075007000420079004b00650079003a0046004d005400490044000000080000004e0000007b00300030003000300030003000300030002d0030003000300030002d0030003000300030002d0030003000300030002d003000300030003000300030003000300030003000300030007d0000000000330000002200000000470072006f00750070004200790044006900720065006300740069006f006e00000013000000010000005b0000000a0000000053006f00720074000000420000001e000000700072006f0070003400320039003400390036003700320039003500000000001c0000000100000030f125b7ef471a10a5f102608c9eebac0a00000001000000250000001400000000470072006f0075007000560069006500770000000b000000000000001b0000000a000000004d006f006400650000001300000006000000230000001200000000490063006f006e00530069007a00650000001300000030000000bd000000100000000043006f006c0049006e0066006f000000420000001e000000700072006f00700034003200390034003900360037003200390035000000000078000000fddfdffd100000000000000000000000040000001800000030f125b7ef471a10a5f102608c9eebac0a0000001001000030f125b7ef471a10a5f102608c9eebac0e0000007800000030f125b7ef471a10a5f102608c9eebac040000007800000030f125b7ef471a10a5f102608c9eebac0c000000500000002f0000001e00000000470072006f0075007000420079004b00650079003a00500049004400000013000000000000001f0000000e00000000460046006c00610067007300000013000000010020413100000020000000004c006f0067006900630061006c0056006900650077004d006f0064006500000013000000020000000000000000000000"))
    RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced","IconsOnly","REG_DWORD",1)
    RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams","Settings","REG_BINARY",Binary("0x080000000600000001000000e525f165e17b1048ba9dd271c8432ce304000000be01000043000000"))
    RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults","{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}","REG_BINARY",Binary("0x1c000000000000000000000000000000000000000000000000000000f1f1f1f114000000000000000000000000000000d0020000cc0200003153505305d5cdd59c2e1b10939708002b2cf9ae830000002200000000470072006f0075007000420079004b00650079003a0046004d005400490044000000080000004e0000007b00300030003000300030003000300030002d0030003000300030002d0030003000300030002d0030003000300030002d003000300030003000300030003000300030003000300030007d0000000000330000002200000000470072006f00750070004200790044006900720065006300740069006f006e00000013000000010000005b0000000a0000000053006f00720074000000420000001e000000700072006f0070003400320039003400390036003700320039003500000000001c0000000100000030f125b7ef471a10a5f102608c9eebac0a00000001000000250000001400000000470072006f0075007000560069006500770000000b000000000000001b0000000a000000004d006f006400650000001300000006000000230000001200000000490063006f006e00530069007a00650000001300000030000000bd000000100000000043006f006c0049006e0066006f000000420000001e000000700072006f00700034003200390034003900360037003200390035000000000078000000fddfdffd100000000000000000000000040000001800000030f125b7ef471a10a5f102608c9eebac0a0000001001000030f125b7ef471a10a5f102608c9eebac0e0000007800000030f125b7ef471a10a5f102608c9eebac040000007800000030f125b7ef471a10a5f102608c9eebac0c000000500000002f0000001e00000000470072006f0075007000420079004b00650079003a00500049004400000013000000000000001f0000000e00000000460046006c00610067007300000013000000010020413100000020000000004c006f0067006900630061006c0056006900650077004d006f0064006500000013000000020000000000000000000000"))
    RegWrite("HKU\.default\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced","IconsOnly","REG_DWORD",1)
    RegWrite("HKU\.default\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams","Settings","REG_BINARY",Binary("0x080000000600000001000000e525f165e17b1048ba9dd271c8432ce304000000be01000043000000"))
    RegWrite("HKU\.default\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults","{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}","REG_BINARY",Binary("0x1c000000000000000000000000000000000000000000000000000000f1f1f1f114000000000000000000000000000000d0020000cc0200003153505305d5cdd59c2e1b10939708002b2cf9ae830000002200000000470072006f0075007000420079004b00650079003a0046004d005400490044000000080000004e0000007b00300030003000300030003000300030002d0030003000300030002d0030003000300030002d0030003000300030002d003000300030003000300030003000300030003000300030007d0000000000330000002200000000470072006f00750070004200790044006900720065006300740069006f006e00000013000000010000005b0000000a0000000053006f00720074000000420000001e000000700072006f0070003400320039003400390036003700320039003500000000001c0000000100000030f125b7ef471a10a5f102608c9eebac0a00000001000000250000001400000000470072006f0075007000560069006500770000000b000000000000001b0000000a000000004d006f006400650000001300000006000000230000001200000000490063006f006e00530069007a00650000001300000030000000bd000000100000000043006f006c0049006e0066006f000000420000001e000000700072006f00700034003200390034003900360037003200390035000000000078000000fddfdffd100000000000000000000000040000001800000030f125b7ef471a10a5f102608c9eebac0a0000001001000030f125b7ef471a10a5f102608c9eebac0e0000007800000030f125b7ef471a10a5f102608c9eebac040000007800000030f125b7ef471a10a5f102608c9eebac0c000000500000002f0000001e00000000470072006f0075007000420079004b00650079003a00500049004400000013000000000000001f0000000e00000000460046006c00610067007300000013000000010020413100000020000000004c006f0067006900630061006c0056006900650077004d006f0064006500000013000000020000000000000000000000"))
    FileSetAttrib("%SystemDrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup","-RASHNOT")
    FileSetAttrib("%SystemDrive%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup","-RASHNOT")
    FileSetAttrib("%SystemDrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup","+SH")
    FileSetAttrib("%SystemDrive%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup","+SH")
EndFunc

Func _InitVBox()
    ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\vboxguest.inf_amd64_neutral_c1c3a23271b0e375\vboxguest.inf",1)
    ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\vboxmouse.inf_amd64_neutral_7f412c49ccbbddff\vboxmouse.inf",1)
    ;_InitGFX()
    ;_InitService("vboxservice")
EndFunc

Func _InitGFX()
    If $sHost="VirtualBox" Then
        ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\vboxvideowddm.inf_amd64_neutral_4abeb766b91c5f62\vboxvideowddm.inf",1)
    Else
        ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\nv_lh.inf_amd64_neutral_bc69f20e3115af59\nv_LH.inf",1)
        ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\atiilhag.inf_amd64_neutral_0a660e899f5038a2\atiilhag.inf",1)
        ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\igdlh64.inf_amd64_neutral_fc2bea7bf411a3c4\igdlh64.inf",1)
        ;_Exec("drvload.exe "&@SystemDir&"\DriverStore\FileRepository\igdlh.inf_amd64_neutral_54a12b57f547d08e\igdlh.inf",1)
    EndIf
EndFunc

Func _RegDll($sFile,$iWow64=0,$iWait=1,$iHide=1)
    Local $sCmd
    If $iWow64 Then
        $sCmd=@WindowsDir&'\SysWow64\regsvr32.exe'
    Else
        $sCmd=@SystemDir&'\regsvr32.exe'
    EndIf
    If $iWait Then
        RunWait($sCmd&' /s "'&$sFile&'"')
    Else
        Run($sCmd&' /s "'&$sFile&'"')
    EndIf
EndFunc

Func _EnableAero()
;~     Local $hPrev = _WinAPI_GetThreadDesktop(_WinAPI_GetCurrentThreadId())
    Local $hDesktop = _WinAPI_CreateDesktop('SetAero', BitOR($DESKTOP_CREATEWINDOW, $DESKTOP_SWITCHDESKTOP))
    If Not $hDesktop Then
        MsgBox(64, 'Error', 'Unable to create desktop.')
        Exit
    EndIf
;~     _WinAPI_SwitchDesktop($hDesktop)
    Local $pText = _WinAPI_CreateString('SetAero')
    Local $tProcess = DllStructCreate($tagPROCESS_INFORMATION)
    Local $tStartup = DllStructCreate($tagSTARTUPINFO)
    DllStructSetData($tStartup, 'Size', DllStructGetSize($tStartup))
    DllStructSetData($tStartup, 'Desktop', $pText)
    If _WinAPI_CreateProcess('', @SystemDir & '\System.Init.exe Aero', 0, 0, 0, $CREATE_NEW_PROCESS_GROUP, 0, 0, $tStartup, $tProcess) Then
        ProcessWaitClose(DllStructGetData($tProcess, 'ProcessID'))
    EndIf
;~     _WinAPI_SwitchDesktop($hPrev)
    _WinAPI_CloseDesktop($hDesktop)
    _WinAPI_FreeMemory($pText)
EndFunc

Func _Exec($sCmd,$iHide=1,$iNoWait=0)
    Local $vRet
    _Log("Exec: "&$sCmd,1)
	If $iNoWait Then
        If $iHide Then
            Return Run($sCmd, @SystemDir, @SW_HIDE, 65536)
        Else
            Return Run($sCmd, @SystemDir)
        EndIf
	Else
        If $iHide Then
            $vRet=RunWait($sCmd, @SystemDir, @SW_HIDE, 65536)
        Else
            $vRet=RunWait($sCmd, @SystemDir)
        EndIf
        _Log("Return -> "&$vRet,2)
        Return $vRet
	EndIf
EndFunc

Func _InitService($sName)
    _StatusUI("Starting "&$sName&" service")
    _Log("Starting "&$sName,2)
    If Not _Service_Exists($sName) Then
        _Log("Failed -> Service does not exist.",3)
        Return SetError(1,0,0)
    EndIf
    Local $aRet=_Service_QueryStatus($sName)
    If $aRet[1]=$SERVICE_RUNNING Then
        _Log("Failed -> Already Running.",3)
        Return SetError(2,0,0)
    EndIf
    If $aRet[1]<>$SERVICE_STOPPED Then
        _Log("Failed -> Service not in a stopped state.",3)
        Return SetError(3,0,0)
    EndIf
    _Service_Start($sName)
    $aRet=_Service_QueryStatus($sName)
    Sleep(125)
    If $aRet[1]=$SERVICE_START_PENDING Then
        Local $hTimer=TimerInit()
        Do
            If TimerDiff($hTimer)>=10000 Then
                _Log("Failed -> Timed out",3)
                Return SetError(4,0,0)
            EndIf
            $aRet=_Service_QueryStatus($sName)
            If $aRet[1]=$SERVICE_RUNNING Or $aRet[1]=$SERVICE_STOPPED Then ExitLoop
            Sleep(50)
        Until False
    EndIf
    If $aRet[1]=$SERVICE_RUNNING Then
        _Log("Success",3)
        Return SetError(0,0,1)
    ElseIf $aRet[1]=$SERVICE_STOPPED Then
        _Log("Failed -> Service failed to start.",3)
        Return SetError(5,0,0)
    EndIf
EndFunc

Func _Log($sString,$iTab=0)
    Local $sMsg="["&@YEAR&"."&@MON&"."&@MDAY&","&@HOUR&":"&@MIN&":"&@SEC&"] "&_StringRepeat("  ",$iTab)&$sString
    FileWriteLine($sLogFile,$sMsg)
    ConsoleWrite($sMsg&@CRLF)
EndFunc

Func _SetWorkgroup($sName)
	Local $tName=DllStructCreate("wchar["&(15+1)&"]")
	DllStructSetData($tName,1,StringUpper($sName))
	Local $aRet=DllCall("netapi32.dll", "dword", "NetJoinDomain","ptr",0,"ptr",DllStructGetPtr($tName),"ptr",0,"ptr",0,"ptr",0, "dword", 0x00000040)
	If $aRet[0]<>0 Then
		Return SetError(_WinAPI_GetLastError(),0,0)
    EndIf
    Return SetError(0,0,1)
EndFunc

Func _SetComputerName($sName)
	Local $sLogonKey = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
	Local $sCtrlKey = "HKLM\SYSTEM\CurrentControlSet"
	If StringRegExp($sName, '|/|:|*|?|"|<|>|.|,|~|!|@|#|$|%|^|&|(|)|;|{|}|_|=|+|[|]|x60' & "|'", 0) = 1 Then Return SetError(1,0,0)
	Local $aRet = DllCall("Kernel32.dll","BOOL","SetComputerNameEx","int",5,"str",$sName)
	If $aRet[0] = 0 Then
        Return SetError(_WinAPI_GetLastError(),0,0)
	EndIf
	RegWrite($sCtrlKey&"\Control\ComputerName\ActiveComputerName","ComputerName","REG_SZ",$sName)
	RegWrite($sCtrlKey&"\Control\ComputerName\ComputerName","ComputerName","REG_SZ",$sName)
	RegWrite($sCtrlKey&"\Services\EventLog\State","LastComputerName","REG_SZ",$sName)
	RegWrite($sCtrlKey&"\Services\Tcpip\Parameters","Hostname","REG_SZ",$sName)
	RegWrite($sCtrlKey&"\Services\Tcpip\Parameters","NV Hostname","REG_SZ",$sName)
	RegWrite($sLogonKey,"AltDefaultDomainName","REG_SZ",$sName)
	RegWrite($sLogonKey,"DefaultDomainName","REG_SZ",$sName)
	RegWrite("HKEY_USERS\.Default\Software\Microsoft\Windows Media\WMSDK\General","ComputerName","REG_SZ",$sName)
	RegWrite($sCtrlKey&"\Control\Session Manager\Environment","ComputerName","REG_SZ",$sName)
	_SetEnv("ComputerName",$sName)
    If @error Then
        Return SetError(@Error,@extended+10,0)
    EndIf
    Return SetError(0,0,1)
EndFunc

Func _SetEnv($sVar, $sData)
	RegWrite("HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment", $sVar, "REG_SZ", $sData)
	Local $aRet = DllCall("Kernel32.dll", "BOOL", "SetEnvironmentVariable", "str", $sVar, "str", $sData)
	If $aRet[0] = 0 Then
		Return SetError(_WinAPI_GetLastError(),0,0)
	EndIf
	$aRet = DllCall("user32.dll", "lresult", "SendMessageTimeoutW", "hwnd", 65535, "dword", 26, "ptr", 0, "wstr", "Environment", "dword", 2, "dword", 5000, "dword_ptr*", 0)
	If $aRet[0] = 0 Then
		Return SetError(_WinAPI_GetLastError(),1,0)
	EndIf
    Return SetError(0,0,1)
EndFunc

Func _GetMonInfo()
    Local $sDisplays[1][1]
    Local $aData=_WinAPI_EnumDisplayMonitors()
    If Not IsArray($aData) Then Return SetError(1,0,0)
    For $i=1 To $aData[0][0]
        $hMon=$aData[$i][0]
        $aRet=_WinAPI_GetMonitorInfo($hMon)
        If @error Then Return SetError(1,1,0)
        Local $iMax=UBound($sDisplays,1)
        ReDim $sDisplays[$iMax+1][9]
        $sDisplays[$iMax][0]=$hMon
        $sDisplays[$iMax][1]=$aRet[2]
        $sDisplays[$iMax][2]=$aRet[3]
        $sDisplays[$iMax][3]=StringFormat("%d,%d,%d,%d",DllStructGetData($aRet[0],1),DllStructGetData($aRet[0],2),DllStructGetData($aRet[0],3),DllStructGetData($aRet[0],4))
        $sDisplays[$iMax][4]=StringFormat("%d,%d,%d,%d",DllStructGetData($aRet[1],1),DllStructGetData($aRet[1],2),DllStructGetData($aRet[1],3),DllStructGetData($aRet[1],4))
        Local $i=0,$aRes[1]
        While 1
            $aRet=_WinAPI_EnumDisplaySettings($sDisplays[$iMax][2],$i)
            If Not IsArray($aRet) Then ExitLoop
            _ArrayDisplay($aRet)
            ConsoleWrite(StringFormat("$s, %sx%s@%s (%sbbp)\r\n",$sDisplays[$iMax][2],$aRet[0],$aRet[1],$aRet[2],$aRet[3]))
            $i+=1
        WEnd
        ;$aMon[$iMax][1]=$aData[$i][0]
    Next
    _DebugArrayDisplay($sDisplays)
EndFunc

;Func _GetDisplayRes()
;Local $aData = _WinAPI_GetMonitorInfo($hMonitor)
;If Not @error Then
;        ConsoleWrite('Handle:      ' & $hMonitor & @CRLF)
;        ConsoleWrite('Rectangle:   ' & DllStructGetData($aData[0], 1) & ', ' & DllStructGetData($aData[0], 2) & ', ' & DllStructGetData($aData[0], 3) & ', ' & DllStructGetData($aData[0], 4) & @CRLF)
;        ConsoleWrite('Work area:   ' & DllStructGetData($aData[1], 1) & ', ' & DllStructGetData($aData[1], 2) & ', ' & DllStructGetData($aData[1], 3) & ', ' & DllStructGetData($aData[1], 4) & @CRLF)
;        ConsoleWrite('Primary:     ' & $aData[2] & @CRLF)
;        ConsoleWrite('Device name: ' & $aData[3] & @CRLF)
;EndIf

;_WinAPI_GetMonitorInfo ( $hMonitor )
;_WinAPI_EnumDisplaySettings ( $sDevice, $iMode )

;_WinAPI_EnumDisplayDevices ( $sDevice, $iDevNum )
;EndFunc
;~ Local $i = 0, $aData

;~ While 1
;~         $aData = _WinAPI_EnumDisplaySettings('', $i)
;~         If IsArray($aData) Then
;~                 ConsoleWrite($aData[0] & ' x ' & $aData[1] & ' x ' & $aData[2] & ' bit' & @CRLF)
;~         Else
;~                 ExitLoop
;~         EndIf
;~         $i += 1
;~ WEnd

;~ $aData = _WinAPI_EnumDisplaySettings('', $ENUM_CURRENT_SETTINGS)


;~         Local $aDevice, $i = 0, $sText
;~         While 1
;~                 $aDevice = _WinAPI_EnumDisplayDevices("", $i)
;~                 If @error Or Not $aDevice[0] Then ExitLoop
;~                 $sText = "Successful? " & $aDevice[0] & @CRLF
;~                 $sText &= "Device (Adapter or Monitor): " & $aDevice[1] & @CRLF
;~                 $sText &= "Description (Adapter or Monitor): " & $aDevice[2] & @CRLF
;~                 $sText &= "Device State Flag: " & $aDevice[3] & @CRLF
;~                 If BitAND($aDevice[3], 32) Then $sText &= @TAB & "- The device has more display modes than its output devices support" & @CRLF

;~                 If BitAND($aDevice[3], 16) Then $sText &= @TAB & "- The device is removable; it cannot be the primary display" & @CRLF
;~                 If BitAND($aDevice[3], 8) Then $sText &= @TAB & "- The device is VGA compatible" & @CRLF
;~                 If BitAND($aDevice[3], 4) Then $sText &= @TAB & "- Represents a pseudo device used to mirror application drawing for remoting" & @CRLF
;~                 If BitAND($aDevice[3], 2) Then $sText &= @TAB & "- The primary desktop is on the device" & @CRLF
;~                 If BitAND($aDevice[3], 1) Then $sText &= @TAB & "- The device is part of the desktop" & @CRLF

;~                 $sText &= "Plug and Play identifier string: " & $aDevice[4] & @CRLF
;~                 MsgBox($MB_SYSTEMMODAL, "", $sText)
;~                 $i += 1
;~         WEnd


Func DisplayChangeRes($width, $height, $bpp, $freq)
    Local Const $DM_PELSWIDTH = 0x00080000
    Local Const $DM_PELSHEIGHT = 0x00100000
    Local Const $DM_BITSPERPEL = 0x00040000
    Local Const $DM_DISPLAYFREQUENCY = 0x00400000
    Local Const $CDS_TEST = 0x00000002
    Local Const $CDS_UPDATEREGISTRY = 0x00000001
    Local Const $DISP_CHANGE_RESTART = 1
    Local Const $DISP_CHANGE_SUCCESSFUL = 0
    Local Const $HWND_BROADCAST = 0xffff
    Local Const $WM_DISPLAYCHANGE = 0x007E
    Local $DEVMODE = DllStructCreate("byte[32];int[10];byte[32];int[6]")
    Local $b = DllCall("user32.dll", "int", "EnumDisplaySettings", "ptr", 0, "long", 0, "ptr", DllStructGetPtr($DEVMODE))
    If @error Then
        $b = 0
    Else
        $b = $b[0]
    EndIf
    If $b <> 0 Then
        DllStructSetData($DEVMODE, 2, BitOR($DM_PELSWIDTH, $DM_PELSHEIGHT, $DM_BITSPERPEL, $DM_DISPLAYFREQUENCY), 5)
        DllStructSetData($DEVMODE, 4, $width, 2)
        DllStructSetData($DEVMODE, 4, $height, 3)
        DllStructSetData($DEVMODE, 4, $bpp, 1)
        DllStructSetData($DEVMODE, 4, $freq, 5)
        $b = DllCall("user32.dll", "int", "ChangeDisplaySettings", "ptr", DllStructGetPtr($DEVMODE), "int", $CDS_TEST)
        If @error Then
            $b = -1
        Else
            $b = $b[0]
        EndIf
        Select
            Case $b = $DISP_CHANGE_RESTART
                $DEVMODE = 0
                Return 2
            Case $b = $DISP_CHANGE_SUCCESSFUL
                DllCall("user32.dll", "int", "ChangeDisplaySettings", "ptr", DllStructGetPtr($DEVMODE), "int", $CDS_UPDATEREGISTRY)
                DllCall("user32.dll", "int", "SendMessage", "hwnd", $HWND_BROADCAST, "int", $WM_DISPLAYCHANGE, _
                        "int", $bpp, "int", $height * 2 ^ 16 + $width)
                $DEVMODE = 0
                Return 1
            Case Else
                $DEVMODE = 0
                Return $b
        EndSelect
    EndIf
EndFunc  ;==>DisplayChangeRes

Func _VCheck()
    Local $strComputer = ".", $sMake, $sModel, $sBIOSVersion, $bIsVM, $sVMPlatform
    Local $objWMIService = ObjGet("winmgmts:\\" & $strComputer & "\root\CIMV2")
    Local $colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_ComputerSystem")
    If IsObj($colItems) Then
        For $objItem In $colItems
            $sMake = $objItem.Manufacturer
            $sModel = $objItem.Model
        Next
    EndIf

    $colItems = $objWMIService.ExecQuery("SELECT * FROM Win32_BIOS", "WQL", 0x10 + 0x20)
    If IsObj($colItems) Then
        For $objItem In $colItems
            $sBIOSVersion = $objItem.SMBIOSBIOSVersion
        Next
    EndIf
    $bIsVM = False
    $sVMPlatform = ""
    If $sModel = "Virtual Machine" Then
        $sVMPlatform = "Hyper-V"
        $bIsVM = True
    ElseIf $sModel = "VMware Virtual Platform" Then
        $sVMPlatform = "VMware"
        $bIsVM = True
    ElseIf $sModel = "VirtualBox" Then
        $bIsVM = True
        $sVMPlatform = "VirtualBox"
    EndIf
    If $bIsVM Then Return $sVMPlatform
    Return "Bare Metal"
EndFunc   ;==>_VCheck

Func _RefreshFolderAttribs($sPath)
    Local $aFiles=_FileListToArrayRec($sPath,"*",2,1)
    If @error Then Return
    For $i=1 To $aFiles[0]
        FileSetAttrib($sPath&"\"&$aFiles[$i],"-RASHNOT")
        If $aFiles[$i]="Startup" Then
            FileSetAttrib($sPath&"\"&$aFiles[$i],"+H")
        Else
            FileSetAttrib($sPath&"\"&$aFiles[$i],"+S")
        EndIf
    Next
    Return
EndFunc

Func _StatusUI($sMsg,$iOpt=0)
    GUICtrlSetData($idUIStatus,"Status: "&$sMsg)
    Local $iProg=($g_iTotProg/100)*$g_iCurProg
    If $iProg>100 Then $iProg=100
    If $iProg<0 Then $iProg=0
    If $iProg=100 Then
        GUICtrlSetData($idUIProgress,100)
        Sleep(1)
        GUICtrlSetData($idUIProgress,99)
        Sleep(1)
        GUICtrlSetData($idUIProgress,100)
    Else
        GUICtrlSetData($idUIProgress,$iProg+1)
        Sleep(1)
        GUICtrlSetData($idUIProgress,$iProg)
        $g_iCurProg+=1
    EndIf
EndFunc

Func _InitUI($iProgress=0)
    Local $iWidth=@DesktopWidth/4
    Local $iHeight=@DesktopHeight/12
    Local $iPosX=(@DesktopWidth/2)-($iWidth/2)
    Local $iPosY=(@DesktopHeight/2)-$iHeight
    ;Local Static $iAlpha = 0xABCDEF
    GUIRegisterMsg(132, "WM_NCHITTEST")
;~     If _WinAPI_DwmIsCompositionEnabled() Then
;~         $iUIDWM=1
;~         $hUI=GUICreate("",$iWidth-14,$iHeight-34,$iPosX+1,$iPosY+19,BitOR($ws_overlapped,$ws_popup,$ws_sizebox),BitOR($ws_ex_topmost,$ws_ex_toolwindow,$ws_ex_layered))
;~         GUISetBkColor($iAlpha)
;~         _WinAPI_DwmGetColorizationColor()
;~         _WinAPI_SetLayeredWindowAttributes($hUI,$iAlpha,0,$lwa_colorkey)
;~         _WinAPI_DwmExtendFrameIntoClientArea($hUI)
;~         $idUIStatus= GUICtrlCreateLabel("Status: ",16,2,$iWidth)
;~         $idUIProgress= GUICtrlCreateProgress(4,$iHeight-($iHeight/2)-16,$iWidth-22,$iHeight/4)
;~     Else
    $iUIDWM=0
    $hGui=GUICreate("Initializing...", $iWidth+2,$iHeight,$iPosX,$iPosY,0,BitOR($ws_ex_topmost,$ws_ex_toolwindow))
    $idUIStatus= GUICtrlCreateLabel("Status: ",16,8,$iWidth)
    $idUIProgress= GUICtrlCreateProgress(4,$iHeight-($iHeight/2)-10,$iWidth-14,$iHeight/4)
;~     EndIf
    GUICtrlSetData($idUIProgress,$iProgress)
    $iUIProgressLast=$iProgress
    GUISetState(@SW_SHOW,$hUI)
    WinActivate($hUI)
;~     AdlibRegister("_RefreshUI",125)
EndFunc

Func wm_nccalcsize($hwnd, $imsg, $wparam, $lparam)
	Return 0
EndFunc

Func wm_nchittest($hwnd, $imsg, $wparam, $lparam)
	Return 0
EndFunc

;~ Func _RefreshUI()
;~     Local $iActiveDWM=_WinAPI_DwmIsCompositionEnabled()
;~ 	If $iUIDWM=0 And $iActiveDWM Then
;~         GUIDelete($hUI)
;~         _InitUI($iUIProgressLast)
;~ 	ElseIf $iUIDWM=1 And Not $iActiveDWM Then
;~         GUIDelete($hUI)
;~         _InitUI($iUIProgressLast)
;~ 	EndIf
;~ EndFunc

Func _NtQueryDirectoryArcNames()
    Local $aDrives=_NtQueryDirectoryDrives()
    Local $iDrive=-1
    Local $aArcNames[1][2],$iMax
    Local $aObjects = _NtQueryDirectoryObjects("ArcName")
    Local $sDriveRegEx="\\(Device\\Harddisk\d{1,2})\\(Partition\d{1,2})"
    Local $sDevice
    For $i=0 To UBound($aDrives,1)-1
        Local $aDevList=$aDrives[$i][1]
        If Not IsArray($aDevList) Then ContinueLoop
        For $j=0 To UBound($aObjects,1)-1
            If StringRegExp($aObjects[$j][2],$sDriveRegEx) Then
                Local $aDrive=StringRegExp($aObjects[$j][2],$sDriveRegEx,1)
                If @error Then ContinueLoop
                Local $aObject=_NtQueryDirectoryObjects($aDrive[0])
                If Not IsArray($aObject) Then ContinueLoop
                For $k=0 To UBound($aObject,1)-1
                    If $aObject[$k][0]=$aDrive[1] Then
                        For $l=1 To UBound($aDevList,1)-1
                            If $aDevList[$l]=$aObject[$k][2] Then
                                $iMax=UBound($aArcNames,1)
                                ReDim $aArcNames[$iMax+1][2]
                                $aArcNames[$iMax][0]=$aObjects[$j][0]
                                $aArcNames[$iMax][1]=$aDrives[$i][0]
                                $aArcNames[0][0]+=1
                            EndIf
                        Next
                    EndIf
                Next
                Else
                For $k=1 To UBound($aDevList,1)-1
                    If $aDevList[$k]=$aObjects[$j][2] Then
                        $iMax=UBound($aArcNames,1)
                        ReDim $aArcNames[$iMax+1][2]
                        $aArcNames[$iMax][0]=$aObjects[$j][0]
                        $aArcNames[$iMax][1]=$aDrives[$i][0]
                        $aArcNames[0][0]+=1
                    EndIf
                Next
            EndIf
        Next
    Next
    Return $aArcNames
EndFunc

Func _NtQueryDirectoryDrives()
    Local $aDrives[0][2]
    Local $aObjects = _NtQueryDirectoryObjects("GLOBAL??")
    For $i = 0 To UBound($aObjects) - 1
        If StringRegExp($aObjects[$i][0],"^[A-Za-z]\:$") Then
            Local $iMax=UBound($aDrives,1)
            ReDim $aDrives[$iMax+1][2]
            $aDrives[$iMax][1]=$aObjects[$i][2]
            $aDrives[$iMax][0]=$aObjects[$i][0]
        EndIf
    Next
    For $i=0 To UBound($aDrives)-1
        Dim $aEntries[2]
        $aEntries[0]=1
        $aEntries[1]=$aDrives[$i][1]
        For $j=0 To UBound($aObjects)-1
            If $aObjects[$j][0]=$aDrives[$i][0] Then ContinueLoop
            If $aObjects[$j][2]=$aDrives[$i][1] Then
                Local $iMax=UBound($aEntries,1)
                ReDim $aEntries[$iMax+1]
                $aEntries[$iMax]=$aObjects[$j][0]
                $aEntries[0]+=1
            EndIf
        Next
        If $aEntries[0]>1 Then $aDrives[$i][1]=$aEntries
    Next
    Return $aDrives
EndFunc

Func _NtQueryDirectoryObjects($sSource="\")
    If $sSource <> "\" Then $sSource = "\" & $sSource
    Local $tNameSource = _tName($sSource)
    Local $tUnicodeString = _RtlInitUnicodeString($tNameSource)
    Local $pUnicodeString = DllStructGetPtr($tUnicodeString)
    Local $tObject_Attributes = _InitializeObjectAttributes($pUnicodeString)
    Local $pObject_Attributes = DllStructGetPtr($tObject_Attributes)
    Local $hDirectory = _NtOpenDirectoryObject($pObject_Attributes, BitOR($DIRECTORY_TRAVERSE, $DIRECTORY_QUERY))
    Local $tData = 0
    Local $tName = 0
    Local $tType = 0
    Local $index = 0
    Local $bytes = 0
    Local $tBuffer = 0
    Local $aObjects[0]
    Local $taName = 0
    Local $tStr = 0
    Local $tAttr = 0
    Local $hLink = 0
    Local $taTarget = 0
    Local $tTarget = 0
    Local $tSTarget = 0
    $tBuffer = DllStructCreate("byte Data[32767]")
    Local $aRet = DllCall("Ntdll.dll", "LONG", "NtQueryDirectoryObject", "HANDLE", $hDirectory, "ptr", DllStructGetPtr($tBuffer), "ULONG", 32767, "BOOL", False, "BOOL", True, "ULONG*", 0, "ULONG*", 0)
    If @error Or $aRet[0] < 0 Then Return
    $index = $aRet[6]
    $bytes = $aRet[7]
    For $i = 0 To $index - 1
        $tData = DllStructCreate($sTagUNICODESTRING & $sTagUNICODESTRING, DllStructGetPtr($tBuffer) + ($i * 16))
        $tName = DllStructCreate("wchar wNameString[" & DllStructGetData($tData, 1) & "]", DllStructGetData($tData, 3))
        $tType = DllStructCreate("wChar wTypeString[" & DllStructGetData($tData, 4) & "]", DllStructGetData($tData, 6))
        $taName = _tName($tName.wNameString)
        $tStr = _RtlInitUnicodeString($taName)
        $tAttr = _InitializeObjectAttributes(DllStructGetPtr($tStr), 0, $hDirectory)
        $hLink = _NtOpenSymbolicLinkObject(DllStructGetPtr($tAttr), $GENERIC_READ)
        $taTarget = _tName("")
        $tTarget = _RtlInitUnicodeString($taTarget)
        $tTarget.MaximumLength = 512
        _NtQuerySymbolicLinkObject($hLink, $tTarget)
        $tSTarget = DllStructCreate("wchar wString[" & DllStructGetData($tTarget, 1) & "]", DllStructGetData($tTarget, 3))
        ReDim $aObjects[UBound($aObjects) + 1][3]
        $aObjects[UBound($aObjects) - 1][0] = $tName.wNameString
        $aObjects[UBound($aObjects) - 1][1] = $tType.wTypeString
        $aObjects[UBound($aObjects) - 1][2] = (IsDllStruct($tSTarget) = 1) ? $tSTarget.wString : ""
        $tType = 0
        $tName = 0
        $tData = 0
        $tSTarget = 0
        _WinAPI_CloseHandle($hLink)
    Next
    Return $aObjects
EndFunc   ;==>_GetObjects


; #FUNCTION# ====================================================================================================================
; Name...........: _ChangeWallpaper
; Description ...: Change Windows Wallpaper
; Syntax.........: _ChangeWallpaper($sImage, [$iStyle])
; Parameters ....: $sImage   - The path of the .bmp file
;                   $$iStyle  - The numeric value of desidered style
;                              0 Tiled
;                              1 Centered
;                              2 Stretched
;                              3 Fit (Windows 7 and later)
;                              4 Fill (Windows 7 and later)
;                               5 Screen Width
;                   $bResize   - Automatically resize th image if has a higher resolution than screen
; Return values .: On Success - Return the new file name.
;                  On Failure -
;                               @error = 1 The image doesn't exist
;                               @error = 2 The image is not a .bmp file
;                               @error = 3 Invalid style
;                               @error = 4 Style not supported by OS
;                               @error = 5 Unable to change the wallpaper
; Author ........: Nessie
; ===============================================================================================================================

Func _ChangeWallpaper($sImage, $iStyle = 0, $bResize = True)
    If Not FileExists($sImage) Then Return SetError(1, 0, "")

    Local $sImageExt = StringLower(StringRight($sImage, 4))

    Local $fWinVer = _GetWinVersion()
    If $sImageExt <> '.bmp' And $fWinVer < 6.0 Then
        Return SetError(2, 0, "")
    Else
        If $fWinVer >= 6.0 And $sImageExt <> '.bmp' And $sImageExt <> '.jpg' Then
            Return SetError(2, 0, "")
        EndIf
    EndIf
    If $iStyle < 0 Or $iStyle > 5 Then Return SetError(3, 0, "")
    If $fWinVer < 6.0 Then ; More info http://msdn.microsoft.com/en-us/library/windows/desktop/ms724832%28v=vs.85%29.aspx
        If $iStyle > 2 Then Return SetError(4, 0, "")
    EndIf
    Local $sWallpaperKey = "HKEY_CURRENT_USER\Control Panel\Desktop"
    Local $iTileWallPaper, $iWallpaperStyle
    Switch $iStyle
        Case 0
            $iTileWallPaper = 1
            $iWallpaperStyle = 0
        Case 1
            $iTileWallPaper = 0
            $iWallpaperStyle = 0
        Case 2
            $iTileWallPaper = 0
            $iWallpaperStyle = 2
        Case 3
            $iTileWallPaper = 0
            $iWallpaperStyle = 6
        Case 4
            $iTileWallPaper = 0
            $iWallpaperStyle = 10
        Case 5
            $iTileWallPaper = 0
            $iWallpaperStyle = 4
    EndSwitch

    RegWrite($sWallpaperKey, "TileWallPaper", "REG_SZ", $iTileWallPaper)
    If @error Then Return SetError(5, 0, "")
    RegWrite($sWallpaperKey, "WallpaperStyle", "REG_SZ", $iWallpaperStyle)
    If @error Then Return SetError(5, 0, "")

    ;Thanks to guinness for his advice
    ; Idea from here: http://www.autoitscript.com/forum/topic/19370-autoit-wrappers/page__st__280#entry652536
    ; $SPI_SETDESKWALLPAPER, $SPIF_UPDATEINIFILE and $SPIF_SENDCHANGE can be found on APIConstants.au3 included on WinAPIEx by Yashied
    ;Return _WinAPI_SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, DllStructGetPtr($tBuffer), BitOR($SPIF_UPDATEINIFILE, $SPIF_SENDCHANGE))
    Local $tBuffer = DllStructCreate('wchar Text[' & StringLen($sImage) + 1 & ']')
    DllStructSetData($tBuffer, 'Text', $sImage)
    Return _WinAPI_SystemParametersInfo(0x0014, 0, DllStructGetPtr($tBuffer), BitOR(0x0001, 0x0002))
    If @error Then Return SetError(5, 0, "")

    Return True
EndFunc   ;==>_ChangeWallpaper

Func _GetWinVersion()
    Local $sRet = RegRead('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\', 'CurrentVersion')
    If @error Then Return SetError(0, 0, "")
    Return $sRet
EndFunc   ;==>_GetWinVersion

Func _ExitWindowsEx($iCode=0x00000005)
#cs
Private Const EWX_LOGOFF As Long = 0
Private Const EWX_SHUTDOWN As Long = 1
Private Const EWX_REBOOT As Long = 2
Private Const EWX_POWEROFF As Long = 8
Private Const EWX_FORCE As Long = 4
Private Const EWX_FORCEIFHUNG As Long = 16
#ce
    Local $hToken = _Security__OpenProcessToken(_WinAPI_GetCurrentProcess(), $TOKEN_ALL_ACCESS)
    If $hToken Then
    ; $hToken it this process' token with $TOKEN_ALL_ACCESS access
    ; Enable SeDebugPrivilege for this token
    If _Security__SetPrivilege($hToken, $SE_SHUTDOWN_NAME, True) Then
    ;... Do whatever with this token now and here...
    ; MsgBox(262144, "TokenPrivileges", $SE_SHUTDOWN_NAME & " enabled!")

    DllCall("user32.dll", "int", "ExitWindowsEx", "uint",BitOR(0x00000000, 0x00000004), "dword", 0)

    ; Disable
    _Security__SetPrivilege($hToken, $SE_SHUTDOWN_NAME, False)
    ; MsgBox(262144, "TokenPrivileges", $SE_SHUTDOWN_NAME & " disabled!")
    EndIf
    ; Close handle when done
    _WinAPI_CloseHandle($hToken)
    EndIf
EndFunc

Func _rescanDevs()
    $pHwnd=DllStructGetPtr(DllStructCreate("hwnd hwnd;"))
    $iResult = DllCall($SETUPAPI_DllHandle, "long", "CM_Locate_DevNode_ExW", "ptr", $pHwnd, "ptr", 0, "ulong", $CM_LOCATE_DEVNODE_NORMAL, "ptr", 0)
    $iResult = DllCall($SETUPAPI_DllHandle, "long", "CM_Reenumerate_DevNode", "dword", $pHwnd, "ulong", 0, "ptr", 0)
    DllCall("user32.dll", "int", "SendMessage", "hwnd", $HWND_BROADCAST, "int", $WM_DEVICECHANGE, "wparam", $DBT_DEVNODES_CHANGED, "lparam", 0)
EndFunc

; ===============================================================================================================================
; Name...........: _ArrayUnique2D
; Description....: Create an 2D array that contains only the unique values from the referenced array.
; Syntax.........: _ArrayUnique2D(ByRef $aArray, $iColSearch)
; Parameters.....: $aArray - Source Array
;                  $iColSearch - Column containing the values to return unique.
; Return values..: An 2D array containing the unique values from $aArray
; Author.........: pixelsearch
; Remarks........: https://www.autoitscript.com/forum/topic/207784-array-unique-with-a-2d-array-return/?do=findComment&comment=1498856
; Related........:
; ===============================================================================================================================
Func _ArrayUnique2D(ByRef $aArray, $iColSearch)

	Local $iRows = UBound($aArray, $UBOUND_ROWS), $iCols = UBound($aArray, $UBOUND_COLUMNS)
	Local $aArray2[$iRows][$iCols], $iRow = -1, $oDictionary = ObjCreate("Scripting.Dictionary")

	For $i = 0 To $iRows - 1
		If Not $oDictionary.Exists($aArray[$i][$iColSearch]) Then ; key exists ?
			$oDictionary.Add($aArray[$i][$iColSearch], $i) ; key important, item not.
			$iRow += 1 ; 0+
			For $j = 0 To $iCols - 1
				$aArray2[$iRow][$j] = $aArray[$i][$j]
			Next
		EndIf
	Next

	ReDim $aArray2[$iRow + 1][$iCols]
	Return $aArray2

EndFunc   ;==>_ArrayUnique2D

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


Func _gdsp($sPat)
  Local $iPatLen=StringLen($sPat)
  For $i=1 To $aDrvStore[0]
    If StringLeft($aDrvStore[$i],$iPatLen)=$sPat Then Return SetError(0,0,@SystemDir&"\DriverStore\FileRepository\"&$aDrvStore[$i]&"\"&$sPat)
  Next
  Return SetError(1,0,'')
EndFunc

Func _rdla()
  Dim $aDrvLoad[]=[0]
EndFunc

Func _adla($sInf)
  For $i=1 To $aDrvLoad[0]
    If $aDrvLoad[$i]=$sInf Then Return SetError(0,1,0)
  Next
  Local $iMax=UBound($aDrvLoad,1)
  ReDim $aDrvLoad[$iMax+1]
  $aDrvLoad[$iMax]=$sInf
  $aDrvLoad[0]=$iMax
EndFunc

Func _pdla()
  Local $sDrvStr=""
  For $i=1 To $aDrvLoad[0]
    $sDrvStr&='"'&$aDrvLoad[$i]&'"'
    If $i<$aDrvLoad[$i] Then $sDrvStr&=' '
  Next
  Return _Exec(@SystemDir&"\Drvload.exe "&$sDrvStr)
EndFunc

Func _InitDrvL($sCapt,$sDL)
  _Log("Initializing System Drivers",1)
  _rdla()
  $atdl=StringSplit($sDL,',')
  For $i=1 To $atdl[0]
    $sdp=_gdsp($atdl[$i])
    If $sdp Then
      _Log('Queueing: "'&$atdl[$i]&'"',2)
      _adla($sdp)
    Else
      _Log('Cannot find driver: "'&$atdl[$i]&'"',2)
    EndIf
  Next
  _Log('[ProcDriverList]',2)
  _pdla()
EndFunc

Func _GracePrompt()
  Local $iPid,$tGrace=TimerInit(),$hDll_User32=DllOpen("user32.dll")
  Do
    If _IsPressed(10,$hDll_User32) Then
      _Log("doGracePrompt")
      _StatusUI("Waiting for prompt to close...",$g_iTotProg)
      $iPid=Run(@ComSpec)
      While ProcessExists($iPid)
          Sleep(1000)
      WEnd
    EndIf
  Until TimerDiff($tGrace)>=2000
  DllClose($hDll_User32)
EndFunc

Func _isArm64()
  Local $a=DllOpen("Kernel32.dll"),$b='handle',$c='dword',$i='bool',$e=DllCall($a,$b,'OpenProcess',$c,0x1000,$i,0,$c,@AutoItPID)
  If @Error Or Not $e[0] Then
    DllClose($a)
    Return SetError(@Error+20,@Extended,0)
  EndIf
	Local $f="ushort",$g=DllStructCreate($f),$j="ptr"
	Local $k=DllCall($a,$i,'IsWow64Process2',$b,$e[0],'bool*',0,$j,DllStructGetPtr($g),$j,0)
	If __CheckErrorCloseHandle($k,$e[0]) Then
    DllClose($a)
    Return SetError(@Error,@Extended,0)
  EndIf
	Return DllStructGetData($g,1)=0xAA64
EndFunc   ;==>_WinAPI_IsWow64Process

Func doGetDeps()
  Local $sGetDepsPath=_GetDepsPath()
  If @Error Then
    _Log("Error: GetDeps not found!")
    Return
  EndIf
  Local $sCmd=$sGetDepsPath&"\GetDeps.exe"
  Local $sPsCmd=_GetPsPath()
  If $sPsCmd Then $sCmd=$sPsCmd&' -accepteula -i "'&$sCmd&'"'
  _Log("doGetDeps: "&$sCmd)
  Run($sCmd,$sGetDepsPath,@SW_SHOW,0x10000)
EndFunc

Func doPrompt()
    Local $sCmd=@ComSpec
    Local $sPsCmd=_GetPsPath()
    If $sPsCmd Then $sCmd=$sPsCmd&' -accepteula -i "'&$sCmd&'"'
    _Log("doPrompt: "&$sCmd)
    Run($sCmd,@SystemDir,@SW_SHOW,0x10000)
EndFunc

Func _GetDepsPath()
    Local $aPaths=StringSplit("\GetDeps,\Programs\GetDeps,\System\Programs\GetDeps",',')
    ; Check ArcDrive
    For $j=1 To $aPaths[0]
      If FileExists($sArcDrive&$aPaths[$j]&"\GetDeps.exe") Then Return SetError(0,0,$sArcDrive&$aPaths[$j])
    Next
    ; Check External Drives
    Local $aSysDrives=DriveGetDrive("ALL"),$iMax,$sDrive
    Local $aDrives[]=[0]
    For $i=1 To $aSysDrives[0]
      $sDrive=StringLower($aSysDrives[$i])
      If $sDrive=StringLower($sArcDrive) Or $sDrive=StringLower($sSystemDrive) Then ContinueLoop
      $iMax=UBound($aDrives,1)
      ReDim $aDrives[$iMax+1]
      $aDrives[$iMax]=$sDrive
    Next
    $aDrives[0]=$iMax
    For $i=1 To $aDrives[0]
      For $j=1 To $aPaths[0]
        If FileExists($aDrives[$i]&'\'&$aPaths[$j]&"\GetDeps.exe") Then Return SetError(0,0,$aDrives[$i]&'\'&$aPaths[$j])
      Next
    Next
    ; Check InfinitySys
    If FileExists(@SystemDir&"\InfinitySys\GetDeps\GetDeps.exe") Then
      Return SetError(0,0,@SystemDir&"\InfinitySys\GetDeps")
    EndIf
    ; Check System GetDeps
    For $j=1 To $aPaths[0]
      If FileExists($sSystemDrive&$aPaths[$j]&"\GetDeps.exe") Then Return SetError(0,0,$sSystemDrive&$aPaths[$j])
    Next
    Return SetError(1,0,'')
EndFunc

Func _GetPsPath()
    Local $a=($bArm64?"psexec64a.exe":"psexec64.exe")
    Local $b[]=[3,@ScriptDir&"\"&$a,@SystemDir&"\InfinitySys\bin\"&$a,@SystemDir&"\"&$a]
    For $i=1 To $b[0]
      If FileExists($b[$i]) Then Return SetError(0,0,$b[$i])
    Next
    Return SetError(1,0,'')
EndFunc

Func _InitCommon()
  $bArm64=_isArm64()
  If $bArm64 Then _Log("!! Arm64 !!")
  $sSysShell=RegRead("HKLM\Software\Windows NT\CurrentVersion\Winlogon","Shell")
  If $sSysShell="" Then $sSysShell="Explorer.exe"
  _PushBack($aShells,$sSysShell)
  _PushBack($aShells,"Explorer.exe")
  _PushBack($aShells,@SystemDir&"\InfinitySys\Ex7\Explorer.exe")
  _PushBack($aShells,@SystemDir&"\InfinitySys\Ex6\Explorer.exe")
  _PushBack($aShells,@ComSpec)
  $sHost=_VCheck()
  $aDrvStore=_FileListToArray(@SystemDir&"\DriverStore\FileRepository","*",2)
  If FileExists($sCfgFile) Then
      Local $hFile=FileOpen($sCfgFile)
      Local $vCfg=_JSON_Parse(FileRead($hFile))
      FileClose($hFile)
      $vCts=_JSON_Get($vCfg,"cts")
      If Not $vCts="" Then
          $sNetComputerName="CorsicaPE-"&$vCts
      EndIf
  EndIf
  _CM_Enable_Privileges()
  $sArcDrive=_GetArcDrive()
EndFunc

Func _InitShell()
  Local $iPid,$hTimer
  For $i=1 To $aShells[0]
    _Log('Initializing Shell: "'&$aShells[$i]&'"')
    $hTimer=TimerInit()
    RegWrite("HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon","Shell","REG_SZ",$aShells[$i])
    If StringInStr($aShells[$i],"Ex7\Explorer.exe") Then
      RunWait('Reg Import "'&@SystemDir&'\InfinitySys\Ex7\Import Me.reg"',@SystemDir,@SW_HIDE)
      RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced","FirstRunVersionCheck","REG_DWORD",1)
      RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced","FirstRunPrereleaseCheck","REG_DWORD",1)
      ; Open Shell
      Local $sOsRoot=@ProgramFilesDir&"\Open-Shell"
      Local $sOsExec=$sOsRoot&"\StartMenu.exe"
      Local $sOsHook=$sOsRoot&"\StartMenuDLL.dll"
      RunWait("Taskkill /f /im explorer.exe",@SystemDir,@SW_HIDE)
      RunWait("Taskkill /f /im StartMenu.exe",@SystemDir,@SW_HIDE)
      FileMove($sOsExec,$sOsRoot&'\_StartMenu.exe',9)
      FileMove($sOsHook,$sOsRoot&'\_StartMenuDLL.dll',9)
    EndIf
    $iPid=Run($aShells[$i],@WorkingDir,@SW_SHOW)
    While Sleep(500)
      If TimerDiff($hTimer)>=5000 Then
        If ProcessExists($iPid) Or (StringInStr($aShells[$i],"explorer.exe") And ProcessExists("explorer.exe") And WinExists("[Class:Shell_TrayWnd]")) Then
          _Log("Shell Persists.")
          Return SetError(0,0,1)
        EndIf
        If Not ProcessExists($iPid) Then
          _Log("Shell Exited.")
          ContinueLoop 2
        EndIf
      EndIf
    WEnd
  Next
  _Log("No Shells Functional!")
  Return SetError(1,0,0)
EndFunc

Func _PushBack(ByRef $aArr,$vElem)
  For $i=1 To $aArr[0]
    If $vElem=$aArr[$i] Then Return SetError(1,0,0)
  Next
  Local $iMax=UBound($aArr,1)
  ReDim $aArr[$iMax+1]
  $aArr[$iMax]=$vElem
  $aArr[0]=$iMax
  Return SetError(1,0,1)
EndFunc
