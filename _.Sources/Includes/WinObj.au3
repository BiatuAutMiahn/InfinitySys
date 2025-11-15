#include <WinAPI.au3>

Global Const $DIRECTORY_QUERY = 0x0001
Global Const $DIRECTORY_TRAVERSE = 0x0002
Global Const $sTagUNICODESTRING = "USHORT Length;USHORT MaximumLength;PTR Buffer;"
Global Const $sTagOBJECT_ATTRIBUTES = "ULONG Length;HANDLE RootDirectory;PTR ObjectName;ULONG Attributes;PTR SecurityDescriptor;PTR SecurityQualityOfService"

Func _ArcGetDev($sArchName)
    Local $sDev=_objGetTarget("ArcName",$sArchName)
    Local $iSplit=StringInStr($sDev,"\",0,-1)
    $sDirObj=StringLeft($sDev,$iSplit-1)
    Return _objGetTarget($sDirObj,StringMid($sDev,$iSplit+1))
EndFunc

Func _DevGetVol($sDev)
    Return _objFromTarget("GLOBAL??",$sDev,"volume\{[a-z0-9]{8}(?:-[a-z0-9]{4}){3}-[a-z0-9]{12}\}")
EndFunc

Func _DevGetDrive($sDev)
    Return _objFromTarget("GLOBAL??",$sDev,"[a-z]:")
EndFunc


Func _objFromTarget($sPath,$sName,$vFilter="")
    Local $aObj=_GetObjects($sPath,$vFilter)
    For $i=1 To $aObj[0][0]
        If $aObj[$i][1]=$sName Then Return SetError(0,0,$aObj[$i][0])
    Next
    Return SetError(1,0,0)
EndFunc

Func _objGetTarget($sPath,$sName,$vFilter="")
    Local $aObj=_GetObjects($sPath,$vFilter)
    For $i=1 To $aObj[0][0]
        If $aObj[$i][0]=$sName Then Return SetError(0,0,$aObj[$i][1])
    Next
    Return SetError(1,0,0)
EndFunc

Func _GetObjects($sSource = "\", $sRegExp="")
    If StringLeft($sSource,1) <> "\" Then $sSource = "\" & $sSource
    Local $tNameSource = _tName($sSource)
    Local $tUnicodeString = _RtlInitUnicodeString($tNameSource)
    Local $pUnicodeString = DllStructGetPtr($tUnicodeString)
    Local $tObject_Attributes = _InitializeObjectAttributes($pUnicodeString)
    Local $pObject_Attributes = DllStructGetPtr($tObject_Attributes)
    Local $hDirectory = _NtOpenDirectoryObject($pObject_Attributes, BitOR($DIRECTORY_TRAVERSE, $DIRECTORY_QUERY))
    ;If @error Then Return SetError((@Error*10),@extended,0)
    Local $tData = 0
    Local $tName = 0
    Local $tType = 0
    Local $index = 0
    Local $bytes = 0
    Local $tBuffer = 0
    Local $aArcName[1][2]
    Local $taName = 0
    Local $tStr = 0
    Local $tAttr = 0
    Local $hLink = 0
    Local $taTarget = 0
    Local $tTarget = 0
    Local $tSTarget = 0
    Local $iMax
    $tBuffer = DllStructCreate("byte Data[32767]")
    Local $aRet = DllCall("Ntdll.dll", "LONG", "NtQueryDirectoryObject", "HANDLE", $hDirectory, "ptr", DllStructGetPtr($tBuffer), "ULONG", 32767, "BOOL", False, "BOOL", True, "ULONG*", 0, "ULONG*", 0)
    ;If @error Or $aRet[0] < 0 Then Return SetError((@Error*10)+1,$aRet[0],0)
    $index = $aRet[6]
    $bytes = $aRet[7]
    For $i = 0 To $index - 1
        $tData = DllStructCreate($sTagUNICODESTRING & $sTagUNICODESTRING, DllStructGetPtr($tBuffer) + ($i * (@AutoItX64 ? 32 : 16)))
        $tName = DllStructCreate("wchar wNameString[" & DllStructGetData($tData, 1) & "]", DllStructGetData($tData, 3))
        If $sRegExp<>"" And Not StringRegExp(StringLower($tName.wNameString),$sRegExp) Then ContinueLoop
        $tType = DllStructCreate("wChar wTypeString[" & DllStructGetData($tData, 4) & "]", DllStructGetData($tData, 6))
        $taName = _tName($tName.wNameString)
        $iMax=UBound($aArcName,1)
        ReDim $aArcName[$iMax + 1][2]
        $aArcName[$iMax][0] = $tName.wNameString
        $tStr = _RtlInitUnicodeString($taName)
        $tAttr = _InitializeObjectAttributes(DllStructGetPtr($tStr), 0, $hDirectory)
        $hLink = _NtOpenSymbolicLinkObject(DllStructGetPtr($tAttr), $GENERIC_READ)
        ;If @error Or $aRet[0] < 0 Then Return SetError((@Error*10)+2,$aRet[0],0)
        $taTarget = _tName("")
        $tTarget = _RtlInitUnicodeString($taTarget)
        $tTarget.MaximumLength = 512
        _NtQuerySymbolicLinkObject($hLink, $tTarget)
        ;If @error Or $aRet[0] < 0 Then Return SetError((@Error*10)+3,$aRet[0],0)
        $tSTarget = DllStructCreate("wchar wString[" & DllStructGetData($tTarget, 1) & "]", DllStructGetData($tTarget, 3))
        $aArcName[$iMax][1] = (IsDllStruct($tSTarget) = 1) ? $tSTarget.wString : ""
        $tType = 0
        $tName = 0
        $tData = 0
        $tSTarget = 0
        _WinAPI_CloseHandle($hLink)
    Next
    $aArcName[0][0]=$iMax
    Return $aArcName
EndFunc   ;==>_GetObjects


Func _RtlInitUnicodeString($tSourceString)
    Local $tUnicodeString = DllStructCreate($sTagUNICODESTRING)
    DllCall("Ntdll.dll", "NONE", "RtlInitUnicodeString", "struct*", $tUnicodeString, "struct*", $tSourceString)
    If @error Then SetError(@error, 0, 0)
    Return $tUnicodeString
EndFunc   ;==>_RtlInitUnicodeString

Func _tName($String)
    Local $t = DllStructCreate("wchar String[512]")
    DllStructSetData($t, 1, $String)
    Return $t
EndFunc   ;==>_tName


Func _InitializeObjectAttributes($pObjectName, $ulAttributes = 0, $hRootDirectory = Null, $pSecurityDescriptor = Null)
    Local $tObject_Attributes = DllStructCreate($sTagOBJECT_ATTRIBUTES)
    DllStructSetData($tObject_Attributes, 1, DllStructGetSize($tObject_Attributes))
    DllStructSetData($tObject_Attributes, 2, $hRootDirectory)
    DllStructSetData($tObject_Attributes, 3, $pObjectName)
    Return $tObject_Attributes
EndFunc   ;==>_InitializeObjectAttributes


Func _NtQuerySymbolicLinkObject($hLinkHandle, $tLinkTarget)
    Local $aRet = DllCall("Ntdll.dll", "LONG", "NtQuerySymbolicLinkObject", "HANDLE", $hLinkHandle, "struct*", $tLinkTarget, "ULONG*", 0)
    If @error Then SetError(@error, 0, 0)
    If $aRet[0] <> 0 Then SetError(1, $aRet[0], 0)
EndFunc   ;==>_NtQuerySymbolicLinkObject

Func _NtOpenDirectoryObject($pObjectAttr, $AccessMask)
    Local $aRet = DllCall("Ntdll.dll", "LONG", "NtOpenDirectoryObject", "HANDLE*", 0, "ULONG", $AccessMask, "PTR", $pObjectAttr)
    If @error Then SetError(@error, 0, 0)
    If $aRet[0] < 0 Or $aRet[1] = 0 Then SetError(1, $aRet[0], 0)
    Return $aRet[1]

EndFunc   ;==>_NtOpenDirectoryObject

;~ Retur hLink
Func _NtOpenSymbolicLinkObject($pObjectAttr, $AccessMask)
    Local $aRet = DllCall("Ntdll.dll", "LONG", "NtOpenSymbolicLinkObject", "HANDLE*", 0, "ULONG", $AccessMask, "PTR", $pObjectAttr)
    If @error Then Return SetError(@error, 0, 0)
    If $aRet[0] < 0 Or $aRet[1] = 0 Then Return SetError(1, 0, 0)
    Return $aRet[1]
EndFunc   ;==>_NtOpenSymbolicLinkObject
