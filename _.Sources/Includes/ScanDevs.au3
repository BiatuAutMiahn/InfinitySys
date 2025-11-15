#include-once
#include "SetupApi.au3"
#include "ArrayMultiColSort.au3"

; Based on https://www.autoitx.com/thread-72581-1-1.html

Global Const $tagSPDEVINFODATA="dword Size;byte Guid[16];dword DevInst;ulong_ptr Reserved"

Func _GetSysDevs()
    Local $hDevs,$tSP_DEVINFO,$aDevs[1][11],$i,$iMax
    Local $sName,$sDesc,$sService,$sRegDriver="HKLM\System\CurrentControlSet\Control\Class\"
    $hDevs=__SetupDiGetClassDevs(2+4,0)
    $i=0
    While __SetupDiEnumDeviceInfo($hDevs,$i,$tSP_DEVINFO)
        $iMax=UBound($aDevs,1)
        ReDim $aDevs[$iMax+1][11]
        $aDevs[$iMax][0]=StringStripWS(StringLower(__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_CLASS)),8)
        $aDevs[$iMax][1]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_CLASSGUID)
        $aDevs[$iMax][2]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_MFG)
        $aDevs[$iMax][3]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_SERVICE)
        $aDevs[$iMax][4]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_DRIVER)
        $aDevs[$iMax][5]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_DEVICEDESC)
        $aDevs[$iMax][6]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_FRIENDLYNAME)
        $aDevs[$iMax][7]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_HARDWAREID)
        $aDevs[$iMax][8]=__SetupDiGetDeviceRegistryProperty($hDevs,$tSP_DEVINFO,$SPDRP_COMPATIBLEIDS)
        $aDevs[$iMax][9]=RegRead($sRegDriver&$aDevs[$iMax][4],"DriverDate")
        $aDevs[$iMax][10]=RegRead($sRegDriver&$aDevs[$iMax][4],"DriverVersion")
        $i+=1
    WEnd
    $aDevs[0][0]=$iMax
    _SetupDiDestroyDeviceInfoList($hDevs)
    Local $aSort[][2]=[ _
        [1, 0], _
        [2, 0], _
        [7, 0], _
        [8, 0] _
    ]
    _ArrayMultiColSort($aDevs,$aSort,1)
    Return $aDevs
EndFunc

Func __SetupDiEnumDeviceInfo($hDevs,$iMemberIdx, ByRef $tSP_DEVINFO_DATA)
    Local $iResult,$pSP_DEVINFO_DATA
    If Not IsDllStruct($tSP_DEVINFO_DATA) Then
        $tSP_DEVINFO_DATA=DllStructCreate($tagSPDEVINFODATA)
        DllStructSetData($tSP_DEVINFO_DATA,"Size",DllStructGetSize($tSP_DEVINFO_DATA))
    EndIf
    $pSP_DEVINFO_DATA=DllStructGetPtr($tSP_DEVINFO_DATA)
    $iResult=DllCall("Setupapi.dll","int","SetupDiEnumDeviceInfo","hWnd",$hDevs,"int",$iMemberIdx,"ptr",$pSP_DEVINFO_DATA)
    Return SetError(_WinAPI_GetLastError(),0,$iResult[0])
EndFunc        ;==>_SetupDiEnumDeviceInfo


Func __SetupDiGetClassDevs($iFlags,$pGuid=0,$sEnumerator="")
    Local $iResult,$sType="str"
    If $sEnumerator="" Then $sType="ptr"
    If IsDllStruct($pGuid) Then $pGuid=DllStructGetPtr($pGuid)
    $iResult=DllCall("Setupapi.dll","hWnd","SetupDiGetClassDevs","ptr",$pGuid,$sType,$sEnumerator,"hWnd",0,"dword",$iFlags)
    Return SetError(_WinAPI_GetLastError(),0,$iResult[0])
EndFunc

Func __SetupDiGetDeviceRegistryProperty($hDevs,$pSP_DEVINFO_DATA,$iProperty)
    Local $iResult,$tBuffer,$pBuffer,$vResult,$iSysError
    If IsDllStruct($pSP_DEVINFO_DATA) Then $pSP_DEVINFO_DATA=DllStructGetPtr($pSP_DEVINFO_DATA)
    $iResult=DllCall("Setupapi.dll","int","SetupDiGetDeviceRegistryProperty","hWnd",$hDevs,"ptr",$pSP_DEVINFO_DATA,"dword",$iProperty,"int*",0,"ptr",0,"dword",0,"int*",0)
    $tBuffer=DllStructCreate("byte["&$iResult[7]&"]")
    $pBuffer=DllStructGetPtr($tBuffer)
    $iResult=DllCall("Setupapi.dll","int","SetupDiGetDeviceRegistryProperty","hWnd",$hDevs,"ptr",$pSP_DEVINFO_DATA,"dword",$iProperty,"int*",0,"ptr",$pBuffer,"dword",$iResult[7],"int*",0)
    If $iResult[0]=0 Then $iSysError=_WinAPI_GetLastError()
    $vResult=DllStructGetData($tBuffer,1)
    $tBuffer=0
    Switch $iResult[4]
        Case $REG_MULTI_SZ
            $vResult=StringTrimRight(BinaryToString($vResult),2)
            If $vResult<>"" Then
                Local $aSplit=StringSplit($vResult,ChrW(0x0))
                For $j=1 To $aSplit[0]
                    $aSplit[$j]=BinaryToString($aSplit[$j])
                Next
                $vResult=$aSplit
            EndIf
        Case $REG_SZ
            $vResult=BinaryToString($vResult)
        Case $REG_NONE
            $vResult=""
    EndSwitch
    Return SetError($iSysError,$iResult[4],$vResult)
EndFunc
