#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_Outfile_x64=..\..\InfinityPE.Shell11.exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Description=InfinityPE Shell11 Init
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_ProductName=InfinityPE.Shell11
#AutoIt3Wrapper_Res_LegalCopyright=InfinityResearchAndDevelopment 2025
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#Au3Stripper_Parameters=/debug
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
AutoItSetOption("ExpandEnvStrings", 1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("ExpandEnvStrings", 1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("TrayAutoPause", 0)
#include <Misc.au3>
Global Const $VERSION = "1.0.0.0"
Global Const $sAlias="InfinityPE.Shell11"
Global Const $sTitle=$sAlias&" v"&$VERSION
Global $sAppPath=@SystemDir&"\InfinitySys\Ex7"
Global $sAppExec=$sAppPath&"\explorer.exe"
Global $sAgPath=@SystemDir&"\InfinitySys\AeroGlass"
Global $sAgExec=@SystemDir&"\InfinityPE.DWM.exe"
Global $sAgConf=$sAgPath&"\Data\Config.ini"

$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,$sTitle,"Program must be run from InfinityPE! If circumvented, irreparable damage may occur to windows.")
    Exit 1
EndIf
If Not FileExists($sAppPath) Then Exit 1
;HKCU\Software\Microsoft\Windows\CurrentVersion\ThemeManager
;DllName
;HKCU\Software\Microsoft\Windows\CurrentVersion\Themes
;InstallTheme
ConsoleWrite("Applying Aero Theme...(This may take a few minutes)"&@CRLF)
;Global $sThemeRegRoot="HKCU\Software\Microsoft\Windows\CurrentVersion"
;Global $sStyle=@WindowsDir&"\Resources\Themes\Windows Aero\Styles\Redstone\Redstone.msstyles"
;RegWrite($sThemeRegRoot&"\ThemeManager","DllName","REG_EXPAND_SZ",$sStyle)
;RegWrite($sThemeRegRoot&"\ThemeManager","InstallTheme","REG_EXPAND_SZ",$sStyle)
RunWait(@SystemDir&'\rundll32.exe '&@SystemDir&'\themecpl.dll,OpenThemeAction '&@WindowsDir&'\Resources\Themes\Shell11.theme',@SystemDir,@SW_SHOW)

; Configure DWMBlurGlass
ConsoleWrite("Configuring DWM..."&@CRLF)
ConsoleWrite($sAgConf&@CRLF)
IniWrite($sAgConf,"config","oldBtnHeight","false")
IniWrite($sAgConf,"config","titleBtnOffsetX","")
IniWrite($sAgConf,"config","titlebtnGlow","false")
RunWait("Taskkill /f /im dwm.exe",@SystemDir,@SW_SHOW)
RunWait($sAgExec,@SystemDir,@SW_SHOW)

ConsoleWrite("Configuring Explorer..."&@CRLF)
RegWrite("HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon","Shell","REG_SZ","X:\Windows\Explorer.exe")
; Disable Open-Shell
Global $sOsRoot=@ProgramFilesDir&"\Open-Shell"
Global $sOsExec=$sOsRoot&"\StartMenu.exe"
Global $sOsHook=$sOsRoot&"\StartMenuDLL.dll"
RunWait("Taskkill /f /im explorer.exe",@SystemDir,@SW_SHOW)
FileMove($sOsRoot&'\_StartMenu.exe',$sOsExec,9)
FileMove($sOsRoot&'\_StartMenuDLL.dll',$sOsHook,9)
Run("X:\Windows\Explorer.exe")
