#include "SetupApi.au3"
#include <StructureConstants.au3>
#Include <WinAPI.au3>
#Include <Debug.au3>

$aDevs=_CM_Enum_Device_Info(0,"",BitOr($DIGCF_PRESENT, $DIGCF_ALLCLASSES, $DIGCF_PROFILE))
ConsoleWrite($aDevs&@CRLF)
_DebugArrayDisplay($aDevs,@Error)
Exit
