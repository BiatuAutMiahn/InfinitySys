#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\ctdkgrsq.ico
#AutoIt3Wrapper_Outfile_x64=..\..\InitRamInst.exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Fileversion=1.0.0.3
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <MemoryConstants.au3>
If $CmdLine[0]<>1 Then
    MsgBox(48,"RamInst","Please drag and drop the desired install image into this program to continue."&@LF&@LF&"WARNING: This installation method is experimental.")
    Exit 2
EndIf
$sImg=$CmdLine[1]
If Not FileExists($sImg) Then
    MsgBox(16,"RamInst",'"'&$sImg&'" Cannot be accessed.')
    Exit 1
EndIf
$aMem=MemGetStats()
$iMemFree=Floor(($aMem[$MEM_AVAILPHYSRAM]/1024/1024)-2)
$iSizeImg=FileGetSize($sImg)/1024/1024/1024
If $iMemFree<$iSizeImg Then
    MsgBox(16,"RamInst",'Not enough free RAM for RamDrive.')
    Exit 1
EndIf
ConsoleWrite("Creating RamDrive..."&@CRLF)
$iRet=RunWait('imdisk -a -s '&Ceiling($iSizeImg)&'G -m Z: -p "/fs:ntfs /v:RAMDISK /q /y"')
If $iRet=0 Then
    ConsoleWrite($iRet&@CRLF)
    ConsoleWrite("Copying install image..."&@CRLF)
    DirCreate('Z:\sources')
    _ShellCopy($sImg,'Z:\sources')
EndIf
MsgBox(64,"RamInst","Please detach the USB drive, and press ok to continue.")
ConsoleWrite("Running WinInst..."&@CRLF)
Run("X:\System\Programs\InfinitySetup\InitSetup.exe")

Func _ShellCopy($sSrc,$sDst)
    $oShell=ObjCreate("shell.application")
    $oShell.namespace($sDst).CopyHere($sSrc,512+16)
EndFunc
