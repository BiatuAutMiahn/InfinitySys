#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile_x64=..\Null.exe
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Description=InfinityPE Null Shell
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=n
#AutoIt3Wrapper_Res_LegalCopyright=InfinityResearchAndDevelopment 2017
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.15.0 (Beta)
 Author:         BiatuAutMiahn[@outlook.com]

 Script Function:
	Empty Shell

#ce ----------------------------------------------------------------------------
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
Global $iUIDWM,$iUIProgressLast,$idUIProgress,$idUIStatus,$hUI
Func _StatusUI($sMsg,$iProg)
    GUICtrlSetData($idUIStatus,"Status: "&$sMsg)
    If $iProg=100 Then
        GUICtrlSetData($idUIProgress,99)
        Sleep(1)
        GUICtrlSetData($idUIProgress,98)
        Sleep(1)
        GUICtrlSetData($idUIProgress,100)
    Else
        GUICtrlSetData($idUIProgress,$iProg+1)
        Sleep(1)
        GUICtrlSetData($idUIProgress,$iProg)
    EndIf
EndFunc
Func _InitUI($iProgress=0)
    Local $iWidth=@DesktopWidth/4
    Local $iHeight=@DesktopHeight/(12)
    Local $iPosX=(@DesktopWidth/2)-($iWidth/2)
    Local $iPosY=(@DesktopHeight/2)-$iHeight
    Local Static $iAlpha = 0xABCDEF
    GUIRegisterMsg(132, "WM_NCHITTEST")
    ;If _WinAPI_DwmIsCompositionEnabled() Then
    ;    $iUIDWM=1
    ;    $hUI=GUICreate("",$iWidth-14,$iHeight-34,$iPosX+1,$iPosY+19,BitOR($ws_overlapped,$ws_popup,$ws_sizebox),BitOR($ws_ex_topmost,$ws_ex_toolwindow,$ws_ex_layered))
    ;    GUISetBkColor($iAlpha)
    ;    _WinAPI_DwmGetColorizationColor()
    ;    _WinAPI_SetLayeredWindowAttributes($hUI,$iAlpha,0,$lwa_colorkey)
    ;    _WinAPI_DwmExtendFrameIntoClientArea($hUI)
    ;    $idUIStatus= GUICtrlCreateLabel("Status: ",16,2,$iWidth)
    ;    $idUIProgress= GUICtrlCreateProgress(4,$iHeight-($iHeight/2)-16,$iWidth-22,$iHeight/4)
    ;Else
    $iUIDWM=0
    $hUI1=GUICreate("Initializing...", $iWidth+2,$iHeight,$iPosX,$iPosY,0,BitOR($ws_ex_topmost,$ws_ex_toolwindow))
    $idUIStatus= GUICtrlCreateLabel("Status: ",16,8,$iWidth)
    $idUIProgress= GUICtrlCreateProgress(4,$iHeight-($iHeight/2)-10,$iWidth-14,$iHeight/4)
    ;EndIf
    GUICtrlSetData($idUIProgress,$iProgress)
    $iUIProgressLast=$iProgress
    GUISetState(@SW_SHOW,$hUI)
    ;AdlibRegister("_RefreshUI",125)
EndFunc
Func _RefreshUI()
    Local $iActiveDWM=_WinAPI_DwmIsCompositionEnabled()
	If $iUIDWM=0 And $iActiveDWM Then
        GUIDelete($hUI)
        _InitUI($iUIProgressLast)
	ElseIf $iUIDWM=1 And Not $iActiveDWM Then
        GUIDelete($hUI)
        _InitUI($iUIProgressLast)
	EndIf
EndFunc

Func wm_nccalcsize($hwnd, $imsg, $wparam, $lparam)
	Return 0
EndFunc

Func wm_nchittest($hwnd, $imsg, $wparam, $lparam)
	Return 0
EndFunc
_InitUI()
While Sleep(250)
    $iRand=Random(0,100,1)
    _StatusUI($iRand,$iRand)
WEnd
