#include <APIConstants.au3>
#include <WinAPISys.au3>

RegWrite("HKCU\Control Panel\Colors","Background","REG_SZ","36 86 152")
_WinAPI_SetSysColors($COLOR_DESKTOP,0x985624)
