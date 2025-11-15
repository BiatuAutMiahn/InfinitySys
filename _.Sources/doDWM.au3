#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Description=InfinityPE DWM Manager
#AutoIt3Wrapper_Res_LegalCopyright=InfinityResearchAndDevelopment 2024
#AutoIt3Wrapper_Run_Au3Stripper=n
#Au3Stripper_Parameters=/debug
#AutoIt3Wrapper_Res_Fileversion=1.1.0.1036
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_Fileversion_First_Increment=y
#AutoIt3Wrapper_Res_ProductName=InfinityPE.DWM
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Outfile_x64=..\..\InfinityPE.DWM.exe
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
AutoItSetOption("ExpandEnvStrings", 1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("ExpandEnvStrings", 1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("TrayAutoPause", 0)
#include <Misc.au3>
#include "Includes\DWM.au3"
Global Const $VERSION = "1.1.0.1036"
Global Const $sAlias="InfinityPE.DWM"
Global Const $sTitle=$sAlias&" v"&$VERSION
;Global $sDwmAppPath=@SystemDir&"\InfinitySys\AeroGlass"
;Global $sDwmApp="DWMBlurGlass.exe"
;Global $iDwmAppPid=-1

$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,$sTitle,"Program must be run from InfinityPE! If circumvented, irreparable damage will occur to windows.")
    Exit 1
EndIf
_Singleton("InfinityPE.DWM")
Exit doDWM()
