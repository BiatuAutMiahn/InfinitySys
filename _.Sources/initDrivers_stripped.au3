#Region
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_Outfile_x64=..\..\initDrivers.exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/mo
#EndRegion
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083
Global Const $DT_DRIVETYPE = 1
Global Const $DT_SSDSTATUS = 2
Global Const $DT_BUSTYPE = 3
Global Const $PROXY_IE = 0
Global Const $PROXY_NONE = 1
Global Const $PROXY_SPECIFIED = 2
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5
Global Const $DLG_CENTERONTOP = 0
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $MCID_UNKNOWN = -1
Global Const $MCID_HAND = 0
Global Const $MCID_APPSTARTING = 1
Global Const $MCID_ARROW = 2
Global Const $MCID_CROSS = 3
Global Const $MCID_HELP = 4
Global Const $MCID_IBEAM = 5
Global Const $MCID_ICON = 6
Global Const $MCID_NO = 7
Global Const $MCID_SIZE = 8
Global Const $MCID_SIZEALL = 9
Global Const $MCID_SIZENESW = 10
Global Const $MCID_SIZENS = 11
Global Const $MCID_SIZENWSE = 12
Global Const $MCID_SIZEWE = 13
Global Const $MCID_UPARROW = 14
Global Const $MCID_WAIT = 15
Global Const $MCID_NONE = 16
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $SD_FORCEHUNG = 16
Global Const $SD_STANDBY = 32
Global Const $SD_HIBERNATE = 64
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000
Global Const $MOUSEEVENTF_MOVE = 0x0001
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002
Global Const $MOUSEEVENTF_LEFTUP = 0x0004
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040
Global Const $MOUSEEVENTF_WHEEL = 0x0800
Global Const $MOUSEEVENTF_XDOWN = 0x0080
Global Const $MOUSEEVENTF_XUP = 0x0100
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2
Global Const $DECLARED_LOCAL = -1
Global Const $DECLARED_UNKNOWN = 0
Global Const $DECLARED_GLOBAL = 1
Global Const $ASSIGN_CREATE = 0
Global Const $ASSIGN_FORCELOCAL = 1
Global Const $ASSIGN_FORCEGLOBAL = 2
Global Const $ASSIGN_EXISTFAIL = 4
Global Const $BI_ENABLE = 0
Global Const $BI_DISABLE = 1
Global Const $BREAK_ENABLE = 1
Global Const $BREAK_DISABLE = 0
Global Const $CDTRAY_OPEN = "open"
Global Const $CDTRAY_CLOSED = "closed"
Global Const $SEND_DEFAULT = 0
Global Const $SEND_RAW = 1
Global Const $DIR_DEFAULT = 0
Global Const $DIR_EXTENDED = 1
Global Const $DIR_NORECURSE = 2
Global Const $DIR_REMOVE = 1
Global Const $DT_ALL = "ALL"
Global Const $DT_CDROM = "CDROM"
Global Const $DT_REMOVABLE = "REMOVABLE"
Global Const $DT_FIXED = "FIXED"
Global Const $DT_NETWORK = "NETWORK"
Global Const $DT_RAMDISK = "RAMDISK"
Global Const $DT_UNKNOWN = "UNKNOWN"
Global Const $DT_UNDEFINED = 1
Global Const $DT_FAT = "FAT"
Global Const $DT_FAT32 = "FAT32"
Global Const $DT_EXFAT = "exFAT"
Global Const $DT_NTFS = "NTFS"
Global Const $DT_NWFS = "NWFS"
Global Const $DT_CDFS = "CDFS"
Global Const $DT_UDF = "UDF"
Global Const $DMA_DEFAULT = 0
Global Const $DMA_PERSISTENT = 1
Global Const $DMA_AUTHENTICATION = 8
Global Const $DS_UNKNOWN = "UNKNOWN"
Global Const $DS_READY = "READY"
Global Const $DS_NOTREADY = "NOTREADY"
Global Const $DS_INVALID = "INVALID"
Global Const $MOUSE_CLICK_LEFT = "left"
Global Const $MOUSE_CLICK_RIGHT = "right"
Global Const $MOUSE_CLICK_MIDDLE = "middle"
Global Const $MOUSE_CLICK_MAIN = "main"
Global Const $MOUSE_CLICK_MENU = "menu"
Global Const $MOUSE_CLICK_PRIMARY = "primary"
Global Const $MOUSE_CLICK_SECONDARY = "secondary"
Global Const $MOUSE_WHEEL_UP = "up"
Global Const $MOUSE_WHEEL_DOWN = "down"
Global Const $NUMBER_AUTO = 0
Global Const $NUMBER_32BIT = 1
Global Const $NUMBER_64BIT = 2
Global Const $NUMBER_DOUBLE = 3
Global Const $OBJ_NAME = 1
Global Const $OBJ_STRING = 2
Global Const $OBJ_PROGID = 3
Global Const $OBJ_FILE = 4
Global Const $OBJ_MODULE = 5
Global Const $OBJ_CLSID = 6
Global Const $OBJ_IID = 7
Global Const $EXITCLOSE_NORMAL = 0
Global Const $EXITCLOSE_BYEXIT = 1
Global Const $EXITCLOSE_BYCLICK = 2
Global Const $EXITCLOSE_BYLOGOFF = 3
Global Const $EXITCLOSE_BYSHUTDOWN = 4
Global Const $PROCESS_STATS_MEMORY = 0
Global Const $PROCESS_STATS_IO = 1
Global Const $PROCESS_LOW = 0
Global Const $PROCESS_BELOWNORMAL = 1
Global Const $PROCESS_NORMAL = 2
Global Const $PROCESS_ABOVENORMAL = 3
Global Const $PROCESS_HIGH = 4
Global Const $PROCESS_REALTIME = 5
Global Const $RUN_LOGON_NOPROFILE = 0
Global Const $RUN_LOGON_PROFILE = 1
Global Const $RUN_LOGON_NETWORK = 2
Global Const $RUN_LOGON_INHERIT = 4
Global Const $SOUND_NOWAIT = 0
Global Const $SOUND_WAIT = 1
Global Const $SHEX_OPEN = "open"
Global Const $SHEX_EDIT = "edit"
Global Const $SHEX_PRINT = "print"
Global Const $SHEX_PROPERTIES = "properties"
Global Const $TCP_DATA_DEFAULT = 0
Global Const $TCP_DATA_BINARY = 1
Global Const $UDP_OPEN_DEFAULT = 0
Global Const $UDP_OPEN_BROADCAST = 1
Global Const $UDP_DATA_DEFAULT = 0
Global Const $UDP_DATA_BINARY = 1
Global Const $UDP_DATA_ARRAY = 2
Global Const $TIP_NOICON = 0
Global Const $TIP_INFOICON = 1
Global Const $TIP_WARNINGICON = 2
Global Const $TIP_ERRORICON = 3
Global Const $TIP_BALLOON = 1
Global Const $TIP_CENTER = 2
Global Const $TIP_FORCEVISIBLE = 4
Global Const $WINDOWS_NOONTOP = 0
Global Const $WINDOWS_ONTOP = 1
Global Const $WIN_STATE_EXISTS = 1
Global Const $WIN_STATE_VISIBLE = 2
Global Const $WIN_STATE_ENABLED = 4
Global Const $WIN_STATE_ACTIVE = 8
Global Const $WIN_STATE_MINIMIZED = 16
Global Const $WIN_STATE_MAXIMIZED = 32
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_CANCELTRYCONTINUE = 6
Global Const $MB_HELP = 0x4000
Global Const $MB_ICONNONE = 0
Global Const $MB_ICONSTOP = 16
Global Const $MB_ICONERROR = 16
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONWARNING = 48
Global Const $MB_ICONINFORMATION = 64
Global Const $MB_ICONASTERISK = 64
Global Const $MB_USERICON = 0x00000080
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_DEFBUTTON4 = 768
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_DEFAULT_DESKTOP_ONLY = 0x00020000
Global Const $MB_RIGHT = 0x00080000
Global Const $MB_RTLREADING = 0x00100000
Global Const $MB_SETFOREGROUND = 0x00010000
Global Const $MB_TOPMOST = 0x00040000
Global Const $MB_SERVICE_NOTIFICATION = 0x00200000
Global Const $MB_RIGHTJUSTIFIED = $MB_RIGHT
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDCLOSE = 8
Global Const $IDHELP = 9
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_NOCASESENSEBASIC = 2
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $STR_CHRSPLIT = 0
Global Const $STR_ENTIRESPLIT = 1
Global Const $STR_NOCOUNT = 2
Global Const $STR_REGEXPMATCH = 0
Global Const $STR_REGEXPARRAYMATCH = 1
Global Const $STR_REGEXPARRAYFULLMATCH = 2
Global Const $STR_REGEXPARRAYGLOBALMATCH = 3
Global Const $STR_REGEXPARRAYGLOBALFULLMATCH = 4
Global Const $STR_ENDISSTART = 0
Global Const $STR_ENDNOTSTART = 1
Global Const $SB_ANSI = 1
Global Const $SB_UTF16LE = 2
Global Const $SB_UTF16BE = 3
Global Const $SB_UTF8 = 4
Global Const $SE_UTF16 = 0
Global Const $SE_ANSI = 1
Global Const $SE_UTF8 = 2
Global Const $STR_UTF16 = 0
Global Const $STR_UCS2 = 1
#Region Global Variables and Constants
Global $_g_ArrayDisplay_bUserFunc = False
Global $_g_ArrayDisplay_hListView
Global $_g_ArrayDisplay_iTranspose
Global $_g_ArrayDisplay_iDisplayRow
Global $_g_ArrayDisplay_aArray
Global $_g_ArrayDisplay_iDims
Global $_g_ArrayDisplay_nRows
Global $_g_ArrayDisplay_nCols
Global $_g_ArrayDisplay_iItem_Start
Global $_g_ArrayDisplay_iItem_End
Global $_g_ArrayDisplay_iSubItem_Start
Global $_g_ArrayDisplay_iSubItem_End
Global $_g_ArrayDisplay_aIndex
Global $_g_ArrayDisplay_aIndexes[1]
Global $_g_ArrayDisplay_iSortDir
Global $_g_ArrayDisplay_asHeader
Global $_g_ArrayDisplay_aNumericSort
Global $ARRAYDISPLAY_ROWPREFIX = "#"
Global $ARRAYDISPLAY_NUMERICSORT = "*"
Global Const $ARRAYDISPLAY_COLALIGNLEFT = 0
Global Const $ARRAYDISPLAY_TRANSPOSE = 1
Global Const $ARRAYDISPLAY_COLALIGNRIGHT = 2
Global Const $ARRAYDISPLAY_COLALIGNCENTER = 4
Global Const $ARRAYDISPLAY_VERBOSE = 8
Global Const $ARRAYDISPLAY_NOROW = 64
Global Const $ARRAYDISPLAY_CHECKERROR = 128
Global Const $_ARRAYCONSTANT_tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
Func __ArrayDisplay_Share(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default, $hUser_Function = Default, $bDebug = True, Const $_iScriptLineNumber = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sMsgBoxTitle = (($bDebug) ? ("_DebugArrayDisplay") : ("_ArrayDisplay"))
If $_g_ArrayDisplay_bUserFunc Then
$hUser_Function = Default
$bDebug = False
EndIf
If Not IsKeyword($hUser_Function) = $KEYWORD_DEFAULT Then
$_g_ArrayDisplay_bUserFunc = True
EndIf
If $sTitle = Default Then $sTitle = $sMsgBoxTitle
If $sArrayRange = Default Then $sArrayRange = ""
If $iFlags = Default Then $iFlags = 0
If $vUser_Separator = Default Then $vUser_Separator = ""
If $sHeader = Default Then $sHeader = ""
Local $iMin_ColWidth = 55
Local $iMax_ColWidth = 350
If $iDesired_Colwidth > 0 Then $iMax_ColWidth = $iDesired_Colwidth
If $iDesired_Colwidth < 0 Then $iMin_ColWidth = -$iDesired_Colwidth
If $iMax_ColWidth = Default Then $iMax_ColWidth = 350
If $iMax_ColWidth > 4095 Then $iMax_ColWidth = 4095
If $hUser_Function = Default Then $hUser_Function = 0
$_g_ArrayDisplay_iTranspose = BitAND($iFlags, $ARRAYDISPLAY_TRANSPOSE)
Local $iColAlign = BitAND($iFlags, 6)
Local $iVerbose = Int(BitAND($iFlags, $ARRAYDISPLAY_VERBOSE))
$_g_ArrayDisplay_iDisplayRow = Int(BitAND($iFlags, $ARRAYDISPLAY_NOROW) = 0)
Local $iButtonBorder = (($bDebug) ? (40) : (20))
#Region Check valid array
Local $sMsg = "", $iRet = 1
Local $fTimer = 0
If IsArray($aArray) Then
$_g_ArrayDisplay_aArray = $aArray
$_g_ArrayDisplay_iDims = UBound($_g_ArrayDisplay_aArray, $UBOUND_DIMENSIONS)
If $_g_ArrayDisplay_iDims = 1 Then $_g_ArrayDisplay_iTranspose = 0
$_g_ArrayDisplay_nRows = UBound($_g_ArrayDisplay_aArray, $UBOUND_ROWS)
$_g_ArrayDisplay_nCols = ($_g_ArrayDisplay_iDims = 2) ? UBound($_g_ArrayDisplay_aArray, $UBOUND_COLUMNS) : 1
Dim $_g_ArrayDisplay_aNumericSort[$_g_ArrayDisplay_nCols]
If $_g_ArrayDisplay_iDims > 2 Then
$sMsg = "Larger than 2D array passed to function"
$iRet = 2
EndIf
If $_iCallerError Then
If $bDebug Then
If IsDeclared("__g_sReportCallBack_DebugReport_Debug") Then
$sMsg = "@@ Debug( " & $_iScriptLineNumber & ") : @error = " & $_iCallerError & " in " & $sMsgBoxTitle & "( '" & $sTitle & "' )"
Execute('$__g_sReportCallBack_DebugReport_Debug("' & $sMsg & '")')
EndIf
$iRet = 3
ElseIf BitAND($iFlags, $ARRAYDISPLAY_CHECKERROR) Then
$sMsg = "@error = " & $_iCallerError & " when calling the function"
If $_iScriptLineNumber > 0 Then $sMsg &= " at line " & $_iScriptLineNumber
$iRet = 3
EndIf
EndIf
Else
$sMsg = "No array variable passed to function"
EndIf
If $sMsg Then
If $iVerbose And MsgBox($MB_SYSTEMMODAL + $MB_ICONERROR + $MB_YESNO,  $sMsgBoxTitle & "() Error: " & $sTitle, $sMsg & @CRLF & @CRLF & "Exit the script?") = $IDYES Then
Exit
Else
Return SetError($iRet, 0, 0)
EndIf
EndIf
#EndRegion Check valid array
#Region Check array range
Local $iCW_ColWidth = Number($vUser_Separator)
Local $sCurr_Separator = Opt("GUIDataSeparatorChar")
If $vUser_Separator = "" Then $vUser_Separator = $sCurr_Separator
$_g_ArrayDisplay_iItem_Start = 0
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_iSubItem_Start = 0
$_g_ArrayDisplay_iSubItem_End = (($_g_ArrayDisplay_iDims = 2) ? ($_g_ArrayDisplay_nCols - 1) : (0))
Local $avRangeSplit
If $sArrayRange Then
Local $vTmp, $aArray_Range = StringRegExp($sArrayRange & "||", "(?U)(.*)\|", $STR_REGEXPARRAYGLOBALMATCH)
If $aArray_Range[0] Then
$avRangeSplit = StringSplit($aArray_Range[0], ":")
If @error Then
$_g_ArrayDisplay_iItem_End = Number($aArray_Range[0])
Else
$_g_ArrayDisplay_iItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iItem_End = Number($avRangeSplit[2])
EndIf
EndIf
EndIf
If $_g_ArrayDisplay_iItem_Start < 0 Then $_g_ArrayDisplay_iItem_Start = 0
If $_g_ArrayDisplay_iItem_End >= $_g_ArrayDisplay_nRows Then $_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
If ($_g_ArrayDisplay_iItem_Start > $_g_ArrayDisplay_iItem_End) And ($_g_ArrayDisplay_iItem_End > 0) Then
$vTmp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iDims = 2 And $aArray_Range[1] Then
$avRangeSplit = StringSplit($aArray_Range[1], ":")
If @error Then
$_g_ArrayDisplay_iSubItem_End = Number($aArray_Range[1])
Else
$_g_ArrayDisplay_iSubItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iSubItem_End = Number($avRangeSplit[2])
EndIf
EndIf
If $_g_ArrayDisplay_iSubItem_Start > $_g_ArrayDisplay_iSubItem_End Then
$vTmp = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iSubItem_Start < 0 Then $_g_ArrayDisplay_iSubItem_Start = 0
If $_g_ArrayDisplay_iSubItem_End >= $_g_ArrayDisplay_nCols Then $_g_ArrayDisplay_iSubItem_End = $_g_ArrayDisplay_nCols - 1
EndIf
EndIf
Local $sDisplayData = "[" & $_g_ArrayDisplay_nRows & "]"
If $_g_ArrayDisplay_iDims = 2 Then
$sDisplayData &= " [" & $_g_ArrayDisplay_nCols & "]"
EndIf
Local $sTipData = ""
If $sArrayRange Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Range set " & $sArrayRange
EndIf
If $_g_ArrayDisplay_iTranspose Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Transposed"
EndIf
If $sArrayRange Or $_g_ArrayDisplay_iTranspose Then $_g_ArrayDisplay_aArray = __ArrayDisplay_CreateSubArray()
#EndRegion Check array range
#Region Check custom header
$_g_ArrayDisplay_asHeader = StringSplit($sHeader, $sCurr_Separator, $STR_NOCOUNT)
If UBound($_g_ArrayDisplay_asHeader) = 0 Then Dim $_g_ArrayDisplay_asHeader[1] = [""]
$sHeader = "Row"
Local $iIndex = $_g_ArrayDisplay_iSubItem_Start
If $_g_ArrayDisplay_iTranspose Then
$sHeader = "Row"
For $j = 0 To $_g_ArrayDisplay_nCols - 1
$sHeader &= $sCurr_Separator & $ARRAYDISPLAY_ROWPREFIX & " " & $j + $_g_ArrayDisplay_iSubItem_Start
Next
Else
If $_g_ArrayDisplay_asHeader[0] Then
For $iIndex = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
If $iIndex >= UBound($_g_ArrayDisplay_asHeader) Then ExitLoop
If StringRight($_g_ArrayDisplay_asHeader[$iIndex], 1) = $ARRAYDISPLAY_NUMERICSORT Then
$_g_ArrayDisplay_asHeader[$iIndex] = StringTrimRight($_g_ArrayDisplay_asHeader[$iIndex], 1)
$_g_ArrayDisplay_aNumericSort[$iIndex - $_g_ArrayDisplay_iSubItem_Start] = 1
EndIf
$sHeader &= $sCurr_Separator & $_g_ArrayDisplay_asHeader[$iIndex]
Next
EndIf
For $j = $iIndex To $_g_ArrayDisplay_iSubItem_End
$sHeader &= $sCurr_Separator & "Col " & $j
Next
EndIf
If Not $_g_ArrayDisplay_iDisplayRow Then $sHeader = StringTrimLeft($sHeader, 4)
#EndRegion Check custom header
#Region Generate Sort index for columns
__ArrayDisplay_SortIndexes(0, -1)
Local $hTimer = TimerInit()
__ArrayDisplay_SortIndexes(1, 1)
$fTimer = TimerDiff($hTimer)
If $fTimer * $_g_ArrayDisplay_nCols < 1000 Then
__ArrayDisplay_SortIndexes(2, $_g_ArrayDisplay_nCols)
Else
EndIf
#EndRegion Generate Sort index for columns
#Region GUI and Listview generation
If $iVerbose And ($_g_ArrayDisplay_nRows * $_g_ArrayDisplay_nCols) > 1000 Then
SplashTextOn($sMsgBoxTitle, "Preparing display" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
Local Const $_ARRAYCONSTANT_GUI_DOCKHCENTER = 8
Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = -3
Local Const $_ARRAYCONSTANT_GUI_EVENT_ARRAY = 1
Local Const $_ARRAYCONSTANT_GUI_FOCUS = 256
Local Const $_ARRAYCONSTANT_SS_CENTER = 0x1
Local Const $_ARRAYCONSTANT_SS_CENTERIMAGE = 0x0200
Local Const $_ARRAYCONSTANT_LVM_GETITEMRECT = (0x1000 + 14)
Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = (0x1000 + 44)
Local Const $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT = (0x1000 + 50)
Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = (0x1000 + 54)
Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 0x1
Local Const $_ARRAYCONSTANT_LVIS_SELECTED = 0x0002
Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 0x8
Local Const $_ARRAYCONSTANT_LVS_OWNERDATA = 0x1000
Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 0x20
Local Const $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER = 0x00010000
Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 0x0200
Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 0x00010000
Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 0x00020000
Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 0x00040000
Local $iCoordMode = Opt("GUICoordMode", 1)
Local $iOrgWidth = 210, $iHeight = 200, $iMinSize = 250
Local $hGUI = GUICreate($sTitle, $iOrgWidth, $iHeight, Default, Default, BitOR($_ARRAYCONSTANT_WS_SIZEBOX, $_ARRAYCONSTANT_WS_MINIMIZEBOX, $_ARRAYCONSTANT_WS_MAXIMIZEBOX))
Local $aiGUISize = WinGetClientSize($hGUI)
Local $idListView = GUICtrlCreateListView($sHeader, 0, 0, $aiGUISize[0], $aiGUISize[1] - $iButtonBorder, BitOR($_ARRAYCONSTANT_LVS_SHOWSELALWAYS, $_ARRAYCONSTANT_LVS_OWNERDATA))
$_g_ArrayDisplay_hListView = GUICtrlGetHandle($idListView)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_GRIDLINES, $_ARRAYCONSTANT_LVS_EX_GRIDLINES)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE)
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, (0x1000 + 31), 0, 0))
GUICtrlSetResizing($idListView, $_ARRAYCONSTANT_GUI_DOCKBORDERS)
Local $iColFill = $_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow
If $iColAlign Then
For $i = 0 To $iColFill - 1
__ArrayDisplay_JustifyColumn($idListView, $i, $iColAlign / 2)
Next
EndIf
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
Local $tRECT = DllStructCreate("struct; long Left;long Top;long Right;long Bottom; endstruct")
DllCall("user32.dll", "struct*", "SendMessageW", "hwnd", $_g_ArrayDisplay_hListView, "uint", $_ARRAYCONSTANT_LVM_GETITEMRECT, "wparam", 0, "struct*", $tRECT)
Local $aiWin_Pos = WinGetPos($hGUI)
Local $aiLV_Pos = ControlGetPos($hGUI, "", $idListView)
$iHeight = (($_g_ArrayDisplay_nRows + 3) * (DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top"))) + $aiWin_Pos[3] - $aiLV_Pos[3]
If $iHeight > @DesktopHeight - 100 Then
$iHeight = @DesktopHeight - 100
ElseIf $iHeight < $iMinSize Then
$iHeight = $iMinSize
EndIf
If $iVerbose Then SplashOff()
$_g_ArrayDisplay_iSortDir = 0x00000400
Local $iColumn = 0, $iColumnPrev = -1
If $_g_ArrayDisplay_iDisplayRow Then
$iColumnPrev = $iColumn
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
EndIf
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
#EndRegion GUI and Listview generation
Local $p__ArrayDisplay_NotifyHandler = DllCallbackGetPtr(DllCallbackRegister("__ArrayDisplay_NotifyHandler", "lresult", "hwnd;uint;wparam;lparam;uint_ptr;dword_ptr"))
DllCall("comctl32.dll", "bool", "SetWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0, "dword_ptr", 0)
#Region Adjust dialog width
Local $iWidth = 40, $iColWidth = 0, $aiColWidth[$iColFill]
Local $iColWidthHeader, $iMin_ColW = 55
For $i = 0 To $iColFill - 1
If $i > 0 Then $iMin_ColW = $iMin_ColWidth
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -1)
$iColWidth = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $sHeader <> "" Then
If $iColWidth = 0 Then ExitLoop
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -2)
$iColWidthHeader = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $iColWidth < $iMin_ColW And $iColWidthHeader < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
ElseIf $iColWidthHeader < $iColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iColWidth)
Else
$iColWidth = $iColWidthHeader
EndIf
Else
If $iColWidth < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
EndIf
EndIf
$iWidth += $iColWidth
$aiColWidth[$i] = $iColWidth
Next
If $iWidth > @DesktopWidth - 100 Then
$iWidth = 40
For $i = 0 To $iColFill - 1
If $aiColWidth[$i] > $iMax_ColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMax_ColWidth)
$iWidth += $iMax_ColWidth
Else
$iWidth += $aiColWidth[$i]
EndIf
If $i < 20 And $bDebug Then ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $iWidth = ' & $iWidth & " $i = " & $i & @CRLF)
Next
EndIf
If $iWidth > @DesktopWidth - 100 Then
$iWidth = @DesktopWidth - 100
ElseIf $iWidth < $iMinSize Then
$iWidth = $iMinSize
EndIf
#EndRegion Adjust dialog width
Local $iScrollBarSize = 0
If $iHeight = (@DesktopHeight - 100) Then $iScrollBarSize = 15
WinMove($hGUI, "", (@DesktopWidth - $iWidth + $iScrollBarSize) / 2, (@DesktopHeight - $iHeight) / 2, $iWidth + $iScrollBarSize, $iHeight)
$aiGUISize = WinGetClientSize($hGUI)
GUICtrlSetPos($idListView, 0, 0, $iWidth, $aiGUISize[1] - $iButtonBorder)
#Region Create bottom infos
Local $iButtonWidth_1 = $aiGUISize[0] / 2
Local $iButtonWidth_2 = $aiGUISize[0] / 3
Local $idCopy_ID = 9999, $idCopy_Data = 99999, $idData_Label = 99999, $idUser_Func = 99999, $idExit_Script = 99999
If $bDebug Then
$idCopy_ID = GUICtrlCreateButton("Copy Data && Hdr/Row", 0, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
$idCopy_Data = GUICtrlCreateButton("Copy Data Only", $iButtonWidth_1, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
Local $iButtonWidth_Var = $iButtonWidth_1
Local $iOffset = $iButtonWidth_1
If IsFunc($hUser_Function) Then
$idUser_Func = GUICtrlCreateButton("Run User Func", $iButtonWidth_2, $aiGUISize[1] - 20, $iButtonWidth_2, 20)
$iButtonWidth_Var = $iButtonWidth_2
$iOffset = $iButtonWidth_2 * 2
EndIf
$idExit_Script = GUICtrlCreateButton("Exit Script", $iOffset, $aiGUISize[1] - 20, $iButtonWidth_Var, 20)
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $iButtonWidth_Var, 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
Else
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $aiGUISize[0], 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
EndIf
If $_g_ArrayDisplay_iTranspose Or $sArrayRange Then
GUICtrlSetColor($idData_Label, 0xFF0000)
GUICtrlSetTip($idData_Label, $sTipData)
EndIf
GUICtrlSetResizing($idCopy_ID, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idCopy_Data, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idData_Label, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idUser_Func, $_ARRAYCONSTANT_GUI_DOCKHCENTER + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idExit_Script, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
#EndRegion Create bottom infos
GUISetState(@SW_SHOW, $hGUI)
If $fTimer > 1000 And Not $sArrayRange Then
Beep(750, 250)
ToolTip("Sorting Action can take as long as " & Ceiling($fTimer / 1000) & " sec" & @CRLF & @CRLF & "Please be patient when you click to sort a column", 50, 50, $sMsgBoxTitle, $TIP_WARNINGICON, $TIP_BALLOON)
Sleep(3000)
ToolTip("")
EndIf
#Region GUI Handling events
Local $iOnEventMode = Opt("GUIOnEventMode", 0), $aMsg
While 1
$aMsg = GUIGetMsg($_ARRAYCONSTANT_GUI_EVENT_ARRAY)
If $aMsg[1] = $hGUI Then
Switch $aMsg[0]
Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
ExitLoop
Case $idCopy_ID, $idCopy_Data
Local $iSel_Count = GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT, 0, 0)
If $iVerbose And (Not $iSel_Count) And ($_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start) * ($_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start) > 10000 Then
SplashTextOn($sMsgBoxTitle, "Copying data" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local $sClip = "", $sItem, $aSplit, $iFirstCol = 0
If $aMsg[0] = $idCopy_Data And $_g_ArrayDisplay_iDisplayRow Then $iFirstCol = 1
For $i = 0 To GUICtrlSendMsg($idListView, 0X1004, 0, 0) - 1
If $iSel_Count And Not (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
ContinueLoop
EndIf
$sItem = __ArrayDisplay_GetItemTextStringSelected($idListView, $i, $iFirstCol)
If $aMsg[0] = $idCopy_ID And Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = $ARRAYDISPLAY_ROWPREFIX & " " & ($i + $_g_ArrayDisplay_iItem_Start) & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip &= $sItem & @CRLF
Next
$sItem = $sHeader
If $aMsg[0] = $idCopy_ID Then
$sItem = $sHeader
If Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = "Row" & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip = $sItem & @CRLF & $sClip
EndIf
ClipPut($sClip)
SplashOff()
GUICtrlSetState($idListView, $_ARRAYCONSTANT_GUI_FOCUS)
Case $idListView
$iColumn = GUICtrlGetState($idListView)
If Not IsArray($_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]) Then
__ArrayDisplay_SortIndexes($iColumn + Not $_g_ArrayDisplay_iDisplayRow)
EndIf
If $iColumn <> $iColumnPrev Then
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumnPrev, 0x00004000 + $iColAlign / 2)
If $_g_ArrayDisplay_iDisplayRow And $iColumn = 0 Then
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
Else
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]
EndIf
EndIf
$_g_ArrayDisplay_iSortDir = ($iColumn = $iColumnPrev) ? $_g_ArrayDisplay_iSortDir = 0x00000400 ? 0x00000200 : 0x00000400 : 0x00000400
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
GUICtrlSendMsg($idListView, (0x1000 + 140), $iColumn, 0)
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
$iColumnPrev = $iColumn
Case $idUser_Func
Local $aiSelItems[1] = [0]
For $i = 0 To GUICtrlSendMsg($idListView, 0x1004, 0, 0) - 1
If (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
$aiSelItems[0] += 1
ReDim $aiSelItems[$aiSelItems[0] + 1]
$aiSelItems[$aiSelItems[0]] = $i + $_g_ArrayDisplay_iItem_Start
EndIf
Next
$hUser_Function($_g_ArrayDisplay_aArray, $aiSelItems)
$_g_ArrayDisplay_bUserFunc = False
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, -1)
Case $idExit_Script
GUIDelete($hGUI)
Exit
EndSwitch
EndIf
WEnd
#EndRegion GUI Handling events
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
DllCall("comctl32.dll", "bool", "RemoveWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0)
$_g_ArrayDisplay_aIndex = 0
Dim $_g_ArrayDisplay_aIndexes[1]
GUIDelete($hGUI)
Opt("GUICoordMode", $iCoordMode)
Opt("GUIOnEventMode", $iOnEventMode)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_NotifyHandler($hWnd, $iMsg, $wParam, $lParam, $iSubclassId, $pData)
If $iMsg <> 0x004E Then Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
Local Static $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Local Static $tagNMLVDISPINFO = $tagNMHDR & ";" & $_ARRAYCONSTANT_tagLVITEM
Local $tNMLVDISPINFO = DllStructCreate($tagNMLVDISPINFO, $lParam)
Switch HWnd(DllStructGetData($tNMLVDISPINFO, "hWndFrom"))
Case $_g_ArrayDisplay_hListView
Switch DllStructGetData($tNMLVDISPINFO, "Code")
Case -177
Local Static $tText = DllStructCreate("wchar[4096]"), $pText = DllStructGetPtr($tText)
Local $iItem = DllStructGetData($tNMLVDISPINFO, "Item")
Local $iRow = ($_g_ArrayDisplay_iSortDir = 0x00000400) ? $_g_ArrayDisplay_aIndex[$iItem] : $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows - 1 - $iItem]
Local $iCol = DllStructGetData($tNMLVDISPINFO, "SubItem")
Local $sTemp
If $_g_ArrayDisplay_iDisplayRow = 0 Then
$sTemp = __ArrayDisplay_GetData($iRow, $iCol)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
If $iCol = 0 Then
If $_g_ArrayDisplay_iTranspose Then
Local $sCaptionCplt = ""
If $iRow + $_g_ArrayDisplay_iItem_Start < UBound($_g_ArrayDisplay_asHeader)  And StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2) <> "" Then
$sCaptionCplt = " (" & StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2)
If StringRight($sCaptionCplt, 1) = $ARRAYDISPLAY_NUMERICSORT Then $sCaptionCplt = StringTrimRight($sCaptionCplt, 1)
$sCaptionCplt &= ")"
EndIf
DllStructSetData($tText, 1, "Col " & ($iRow + $_g_ArrayDisplay_iItem_Start) & $sCaptionCplt)
Else
DllStructSetData($tText, 1, $ARRAYDISPLAY_ROWPREFIX & " " & $iRow + $_g_ArrayDisplay_iItem_Start)
EndIf
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
$sTemp = __ArrayDisplay_GetData($iRow, $iCol - 1)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
EndIf
EndIf
Return
EndSwitch
EndSwitch
Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
#forceref $iSubclassId, $pData
EndFunc
Func __ArrayDisplay_GetData($iRow, $iCol)
Local $sTemp
If $_g_ArrayDisplay_iDims = 2 Then
$sTemp = $_g_ArrayDisplay_aArray[$iRow][$iCol]
Else
$sTemp = $_g_ArrayDisplay_aArray[$iRow]
EndIf
Switch VarGetType($sTemp)
Case "Array"
Local $sSubscript = ""
For $i = 1 To UBound($sTemp, 0)
$sSubscript = "[" & UBound($sTemp, $i) & "]"
Next
$sTemp = "{Array" & $sSubscript & "}"
Case "Map"
$sTemp = "{Map[" & UBound($sTemp) & "]}"
Case "Object"
$sTemp = "{Object}"
EndSwitch
If StringLen($sTemp) > 4095 Then $sTemp = StringLeft($sTemp, 4095)
Return $sTemp
EndFunc
Func __ArrayDisplay_SortIndexes($iColStart, $iColEnd = $iColStart)
Dim $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows]
If $iColEnd = -1 Then
Dim $_g_ArrayDisplay_aIndexes[$_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow + 1]
For $i = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$i] = $i
Next
$_g_ArrayDisplay_aIndexes[0] = $_g_ArrayDisplay_aIndex
EndIf
If $iColStart = -1 Then
$iColStart = 1
$iColEnd = $_g_ArrayDisplay_nCols
EndIf
If $iColStart Then
Local $tIndex
For $i = $iColStart To $iColEnd
$tIndex = __ArrayDisplay_GetSortColStruct($_g_ArrayDisplay_aArray, $i - 1)
For $j = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$j] = DllStructGetData($tIndex, 1, $j + 1)
Next
$_g_ArrayDisplay_aIndexes[$i] = $_g_ArrayDisplay_aIndex
Next
EndIf
EndFunc
Func __ArrayDisplay_GetSortColStruct(Const ByRef $aArray, $iCol)
If UBound($aArray, $UBOUND_DIMENSIONS) < 1 Or UBound($aArray, $UBOUND_DIMENSIONS) > 2 Then
Return SetError(6, 0, 0)
EndIf
Return __ArrayDisplay_SortArrayStruct($aArray, $iCol)
EndFunc
Func __ArrayDisplay_SortArrayStruct(Const ByRef $aArray, $iCol)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS)
Local $tIndex = DllStructCreate("uint[" & $_g_ArrayDisplay_nRows & "]")
Local $pIndex = DllStructGetPtr($tIndex)
Static $hDll = DllOpen("kernel32.dll")
Static $hDllComp = DllOpen("shlwapi.dll")
Local $lo, $hi, $mi, $r, $nVal1, $nVal2
For $i = 1 To $_g_ArrayDisplay_nRows - 1
$lo = 0
$hi = $i - 1
Do
$mi = Int(($lo + $hi) / 2)
If Not $_g_ArrayDisplay_iTranspose And $_g_ArrayDisplay_aNumericSort[$iCol] Then
If $iDims = 1 Then
$nVal1 = Number($aArray[$i])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)])
Else
$nVal1 = Number($aArray[$i][$iCol])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol])
EndIf
$r = $nVal1 < $nVal2 ? -1 : $nVal1 > $nVal2 ? 1 : 0
Else
If $iDims = 1 Then
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)]))[0]
Else
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i][$iCol]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol]))[0]
EndIf
EndIf
Switch $r
Case -1
$hi = $mi - 1
Case 1
$lo = $mi + 1
Case 0
ExitLoop
EndSwitch
Until $lo > $hi
DllCall($hDll, "none", "RtlMoveMemory", "struct*", $pIndex + ($mi + 1) * 4, "struct*", $pIndex + $mi * 4, "ulong_ptr", ($i - $mi) * 4)
DllStructSetData($tIndex, 1, $i, $mi + 1 + ($lo = $mi + 1))
Next
Return $tIndex
EndFunc
Func __ArrayDisplay_CreateSubArray()
Local $nRows = $_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start + 1
Local $nCols = $_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start + 1
Local $iRow = -1, $iCol, $iTemp, $aTemp
If $_g_ArrayDisplay_iTranspose Then
Dim $aTemp[$nCols][$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iCol][$iRow] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$iTemp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $iTemp
$iTemp = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $iTemp
$_g_ArrayDisplay_nRows = $nCols
$_g_ArrayDisplay_nCols = $nRows
Else
If $_g_ArrayDisplay_iDims = 1 Then
Dim $aTemp[$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$aTemp[$iRow] = $_g_ArrayDisplay_aArray[$i]
Next
Else
Dim $aTemp[$nRows][$nCols]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iRow][$iCol] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$_g_ArrayDisplay_nCols = $nCols
EndIf
$_g_ArrayDisplay_nRows = $nRows
EndIf
Return $aTemp
EndFunc
Func __ArrayDisplay_HeaderSetItemFormat($hWnd, $iIndex, $iFormat)
Local Static $tHDItem = DllStructCreate("uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State")
DllStructSetData($tHDItem, "Mask", 0x00000004)
DllStructSetData($tHDItem, "Fmt", $iFormat)
Local $aResult = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", 0x120C, "wparam", $iIndex, "struct*", $tHDItem)
Return $aResult[0] <> 0
EndFunc
Func __ArrayDisplay_GetItemText($idListView, $iIndex, $iSubItem = 0)
Local $tBuffer = DllStructCreate("wchar Text[4096]")
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $tItem = DllStructCreate($_ARRAYCONSTANT_tagLVITEM)
DllStructSetData($tItem, "SubItem", $iSubItem)
DllStructSetData($tItem, "TextMax", 4096)
DllStructSetData($tItem, "Text", $pBuffer)
If IsHWnd($idListView) Then
DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $idListView, "uint", 0x1073, "wparam", $iIndex, "struct*", $tItem)
Else
Local $pItem = DllStructGetPtr($tItem)
GUICtrlSendMsg($idListView, 0x1073, $iIndex, $pItem)
EndIf
Return DllStructGetData($tBuffer, "Text")
EndFunc
Func __ArrayDisplay_GetItemTextStringSelected($idListView, $iItem, $iFirstCol)
Local $sRow = "", $sSeparatorChar = Opt('GUIDataSeparatorChar')
Local $iSelected = $iItem
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, 0x101F, 0, 0))
Local $nCol = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hHeader, "uint", 0x1200, "wparam", 0, "lparam", 0)[0]
For $x = $iFirstCol To $nCol - 1
$sRow &= __ArrayDisplay_GetItemText($idListView, $iSelected, $x) & $sSeparatorChar
Next
Return StringTrimRight($sRow, 1)
EndFunc
Func __ArrayDisplay_JustifyColumn($idListView, $iIndex, $iAlign = -1)
Local $tColumn = DllStructCreate("uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order;int cxMin;int cxDefault;int cxIdeal")
If $iAlign < 0 Or $iAlign > 2 Then $iAlign = 0
DllStructSetData($tColumn, "Mask", 0x01)
DllStructSetData($tColumn, "Fmt", $iAlign)
Local $pColumn = DllStructGetPtr($tColumn)
Local $iRet = GUICtrlSendMsg($idListView, 0x1060, $iIndex, $pColumn)
Return $iRet <> 0
EndFunc
Func _SendMessage($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
Local $aCall = DllCall("user32.dll", $sReturnType, "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $wParam, $lParamType, $lParam)
If @error Then Return SetError(@error, @extended, "")
If $iReturn >= 0 And $iReturn <= 4 Then Return $aCall[$iReturn]
Return $aCall
EndFunc
Func _SendMessageA($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
Local $aCall = DllCall("user32.dll", $sReturnType, "SendMessageA", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $wParam, $lParamType, $lParam)
If @error Then Return SetError(@error, @extended, "")
If $iReturn >= 0 And $iReturn <= 4 Then Return $aCall[$iReturn]
Return $aCall
EndFunc
#Region Global Variables and Constants
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200
Global Const $FORMAT_MESSAGE_FROM_STRING = 0x00000400
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 0x00000800
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000
#EndRegion Global Variables and Constants
Func _WinAPI_Beep($iFreq = 500, $iDuration = 1000)
Local $aCall = DllCall("kernel32.dll", "bool", "Beep", "dword", $iFreq, "dword", $iDuration)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FormatMessage($iFlags, $pSource, $iMessageID, $iLanguageID, ByRef $pBuffer, $iSize, $vArguments)
Local $sBufferType = "struct*"
If IsString($pBuffer) Then $sBufferType = "wstr"
Local $aCall = DllCall("kernel32.dll", "dword", "FormatMessageW", "dword", $iFlags, "struct*", $pSource, "dword", $iMessageID,  "dword", $iLanguageID, $sBufferType, $pBuffer, "dword", $iSize, "ptr", $vArguments)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
If $sBufferType = "wstr" Then $pBuffer = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_GetErrorMessage($iCode, $iLanguage = 0, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $aCall = DllCall('kernel32.dll', 'dword', 'FormatMessageW', 'dword', BitOR($FORMAT_MESSAGE_FROM_SYSTEM, $FORMAT_MESSAGE_IGNORE_INSERTS), 'ptr', 0, 'dword', $iCode,  'dword', $iLanguage, 'wstr', '', 'dword', 4096, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return SetError($_iCallerError, $_iCallerExtended, StringRegExpReplace($aCall[5], '[' & @LF & ',' & @CR & ']*\Z', ''))
EndFunc
Func _WinAPI_GetLastError(Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $aCall = DllCall("kernel32.dll", "dword", "GetLastError")
Return SetError($_iCallerError, $_iCallerExtended, $aCall[0])
EndFunc
Func _WinAPI_GetLastErrorMessage(Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $iLastError = _WinAPI_GetLastError()
Local $tBufferPtr = DllStructCreate("ptr")
Local $nCount = _WinAPI_FormatMessage(BitOR($FORMAT_MESSAGE_ALLOCATE_BUFFER, $FORMAT_MESSAGE_FROM_SYSTEM, $FORMAT_MESSAGE_IGNORE_INSERTS),  0, $iLastError, 0, $tBufferPtr, 0, 0)
If @error Then Return SetError(-@error, @extended, "")
Local $sText = ""
Local $pBuffer = DllStructGetData($tBufferPtr, 1)
If $pBuffer Then
If $nCount > 0 Then
Local $tBuffer = DllStructCreate("wchar[" & ($nCount + 1) & "]", $pBuffer)
$sText = DllStructGetData($tBuffer, 1)
If StringRight($sText, 2) = @CRLF Then $sText = StringTrimRight($sText, 2)
EndIf
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pBuffer)
EndIf
Return SetError($_iCallerError, $_iCallerExtended, $sText)
EndFunc
Func _WinAPI_MessageBeep($iType = 1)
Local $iSound
Switch $iType
Case 1
$iSound = 0
Case 2
$iSound = 16
Case 3
$iSound = 32
Case 4
$iSound = 48
Case 5
$iSound = 64
Case Else
$iSound = -1
EndSwitch
Local $aCall = DllCall("user32.dll", "bool", "MessageBeep", "uint", $iSound)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MsgBox($iFlags, $sTitle, $sText)
BlockInput(0)
MsgBox($iFlags, $sTitle, $sText & "      ")
EndFunc
Func _WinAPI_SetLastError($iErrorCode, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
DllCall("kernel32.dll", "none", "SetLastError", "dword", $iErrorCode)
Return SetError($_iCallerError, $_iCallerExtended, Null)
EndFunc
Func _WinAPI_ShowError($sText, $bExit = True)
BlockInput(0)
MsgBox($MB_SYSTEMMODAL, "Error", $sText & "      ")
If $bExit Then Exit
EndFunc
Func _WinAPI_ShowLastError($sText = '', $bAbort = False, $iLanguage = 0, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sError
Local $iLastError = _WinAPI_GetLastError()
While 1
$sError = _WinAPI_GetErrorMessage($iLastError, $iLanguage)
If @error And $iLanguage Then
$iLanguage = 0
Else
ExitLoop
EndIf
WEnd
If StringStripWS($sText, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sText &= @CRLF & @CRLF
Else
$sText = ''
EndIf
_WinAPI_MsgBox(BitOR(0x00040000, BitShift(0x00000010, -2 * (Not $iLastError))), $iLastError, $sText & $sError)
If $iLastError Then
_WinAPI_SetLastError($iLastError)
If $bAbort Then
Exit $iLastError
EndIf
EndIf
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func _WinAPI_ShowMsg($sText)
_WinAPI_MsgBox($MB_SYSTEMMODAL, "Information", $sText)
EndFunc
Func __COMErrorFormating(ByRef $oCOMError, $sPrefix = @TAB)
Local Const $STR_STRIPTRAILING = 2
Local $sError = "COM Error encountered in " & @ScriptName & " (" & $oCOMError.Scriptline & ") :" & @CRLF &  $sPrefix & "Number        " & @TAB & "= 0x" & Hex($oCOMError.Number, 8) & " (" & $oCOMError.Number & ")" & @CRLF &  $sPrefix & "WinDescription" & @TAB & "= " & StringStripWS($oCOMError.WinDescription, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Description   " & @TAB & "= " & StringStripWS($oCOMError.Description, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Source        " & @TAB & "= " & $oCOMError.Source & @CRLF &  $sPrefix & "HelpFile      " & @TAB & "= " & $oCOMError.HelpFile & @CRLF &  $sPrefix & "HelpContext   " & @TAB & "= " & $oCOMError.HelpContext & @CRLF &  $sPrefix & "LastDllError  " & @TAB & "= " & $oCOMError.LastDllError & @CRLF &  $sPrefix & "Retcode       " & @TAB & "= 0x" & Hex($oCOMError.retcode)
Return $sError
EndFunc
Global Const $__g_sReportWindowText_Debug = "Debug Window hidden text"
Global Const $__g_sReportCallBack_DebugReport_Debug = _DebugReport
Global $__g_sReportTitle_Debug = "AutoIt Debug Report"
Global $__g_iReportType_Debug = 0
Global $__g_bReportWindowWaitClose_Debug = True, $__g_bReportWindowClosed_Debug = True
Global $__g_hReportEdit_Debug = 0
Global $__g_hReportNotepadEdit_Debug = 0
Global $__g_sReportCallBack_Debug
Global $__g_bReportTimeStamp_Debug = False
Global $__g_bComErrorExit_Debug = False, $__g_oComError_Debug = Null
Func _Assert($sCondition, $bExit = True, $iCode = 0x7FFFFFFF, $sLine = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $bCondition = Execute($sCondition)
If Not $bCondition Then
Local $sOutput = "Assertion Failed (Line " & $sLine & "): " & @CRLF & @CRLF & $sCondition
If _DebugOut(StringReplace($sOutput, @CRLF, "")) = 0 Then
MsgBox($MB_SYSTEMMODAL, "AutoIt Assert", $sOutput)
Else
$bExit = False
EndIf
If $bExit Then Exit $iCode
EndIf
Return SetError($_iCallerError, $_iCallerExtended, $bCondition)
EndFunc
Func _DebugArrayDisplay(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default, $hUser_Function = Default, Const $_iCallerScriptLineNumber = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $iRet = -1
While $iRet = -1
$iRet = __ArrayDisplay_Share($aArray, $sTitle, $sArrayRange, $iFlags, $vUser_Separator, $sHeader, $iDesired_Colwidth, $hUser_Function, True, $_iCallerScriptLineNumber, $_iCallerError, $_iCallerExtended)
WEnd
Return SetError(@error, @extended, $iRet)
EndFunc
Func _DebugBugReportEnv(Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sAutoItX64, $sAdminMode, $sCompiled, $sOsServicePack, $sMUIlang, $sKBLayout, $sCPUArch
If @AutoItX64 Then $sAutoItX64 = "/X64"
If IsAdmin() Then $sAdminMode = ", AdminMode"
If @Compiled Then $sCompiled = ", Compiled"
If @OSServicePack Then $sOsServicePack = "/" & StringReplace(@OSServicePack, "Service Pack ", "SP")
If @OSLang <> @MUILang Then $sMUIlang = ", MUILang: " & @MUILang
If @OSLang <> StringRight(@KBLayout, 4) Then $sKBLayout = ", Keyboard: " & @KBLayout
If @OSArch <> @CPUArch Then $sCPUArch = ", CPUArch: " & @CPUArch
Return SetError($_iCallerError, $_iCallerExtended, "AutoIt: " & @AutoItVersion & $sAutoItX64 & $sAdminMode & $sCompiled &  ", OS: " & @OSVersion & $sOsServicePack & "/" & @OSArch &  ", OSLang: " & @OSLang & $sMUIlang & $sKBLayout & $sCPUArch & @CRLF &  "  Script: " & @ScriptFullPath)
EndFunc
Func _DebugCOMError($iComDebug = Default, $bExit = False)
If $__g_iReportType_Debug <= 0 Or $__g_iReportType_Debug > 6 Then Return SetError(3, 0, 0)
If $iComDebug = Default Then $iComDebug = 1
If Not IsInt($iComDebug) Or $iComDebug < -1 Or $iComDebug > 1 Then Return SetError(1, 0, 0)
Switch $iComDebug
Case -1
Return SetError(IsObj($__g_oComError_Debug), $__g_bComErrorExit_Debug, 1)
Case 0
If $__g_oComError_Debug = Null Then SetError(0, 3, 1)
$__g_oComError_Debug = Null
$__g_bComErrorExit_Debug = False
Return 1
Case Else
$__g_bComErrorExit_Debug = $bExit
Local $vComErrorChecking = ObjEvent("AutoIt.Error")
If $vComErrorChecking = "" Then
$__g_oComError_Debug = ObjEvent("AutoIt.Error", __Debug_COMErrorHandler)
If @error Then Return SetError(4, @error, 0)
Return SetError(0, 1, 1)
ElseIf FuncName($vComErrorChecking) = FuncName(__Debug_COMErrorHandler) Then
Return SetError(0, 2, 1)
Else
Return SetError(2, 0, 0)
EndIf
EndSwitch
EndFunc
Func _DebugOut(Const $sOutput, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
If $__g_iReportType_Debug <= 0 Or $__g_iReportType_Debug > 6 Then Return SetError(3, 0, 0)
If IsNumber($sOutput) = 0 And IsString($sOutput) = 0 And IsBool($sOutput) = 0 Then Return SetError(1, 0, 0)
__Debug_ReportWrite($sOutput & @CRLF)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func _DebugSetup(Const $sTitle = Default, $bBugReportInfos = Default, $vReportType = Default, $sLogFile = Default, $bTimeStamp = False, Const $_iCallerError = @error, $_iCallerExtended = @extended)
If $__g_iReportType_Debug Then Return SetError($_iCallerError + 1000, $_iCallerExtended, $__g_iReportType_Debug)
If $bBugReportInfos = Default Then $bBugReportInfos = False
If $vReportType = Default Then $vReportType = 1
If $sLogFile = Default Then $sLogFile = ""
Switch $vReportType
Case 1
#forceref __Debug_ReportWindowWrite
$__g_sReportCallBack_Debug = "__Debug_ReportWindowWrite("
Case 2
$__g_sReportCallBack_Debug = "ConsoleWrite("
Case 3
$__g_sReportCallBack_Debug = "MsgBox(4096, '" & $__g_sReportTitle_Debug & "',"
Case 4
$__g_sReportCallBack_Debug = "FileWrite('" & $sLogFile & "',"
Case 5
#forceref __Debug_ReportNotepadWrite
$__g_sReportCallBack_Debug = "__Debug_ReportNotepadWrite("
Case Else
If Not IsString($vReportType) Then Return SetError(2, 0, 0)
If $vReportType = "" Then Return SetError(3, 0, 0)
$__g_sReportCallBack_Debug = $vReportType & "("
$vReportType = 6
EndSwitch
If Not ($sTitle = Default) Then $__g_sReportTitle_Debug = $sTitle
$__g_iReportType_Debug = $vReportType
$__g_bReportTimeStamp_Debug = $bTimeStamp
OnAutoItExitRegister("__Debug_ReportClose")
If $bBugReportInfos Then _DebugReport(_DebugBugReportEnv() & @CRLF & @CRLF)
Return SetError($_iCallerError, $_iCallerExtended, $__g_iReportType_Debug)
EndFunc
Func _DebugReport($sData, $bLastError = False, $bExit = False, Const $_iCallerError = @error, $_iCallerExtended = @extended)
If $__g_iReportType_Debug <= 0 Or $__g_iReportType_Debug > 6 Then Return SetError($_iCallerError, $_iCallerExtended, 0)
Local $iLastError = _WinAPI_GetLastError()
__Debug_ReportWrite($sData, $bLastError, $iLastError)
If $bExit Then Exit
_WinAPI_SetLastError($iLastError)
If $bLastError Then $_iCallerExtended = $iLastError
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func _DebugReportEx($sData, $bLastError = False, $bExit = False, Const $_iCallerError = @error, $_iCallerExtended = @extended)
If $__g_iReportType_Debug <= 0 Or $__g_iReportType_Debug > 6 Then Return SetError($_iCallerError, $_iCallerExtended, 0)
Local $iLastError = _WinAPI_GetLastError()
If IsInt($_iCallerError) Then
Local $sTemp = StringSplit($sData, "|", $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($sTemp) > 1 Then
If $bExit Then
$sData = "<<< "
Else
$sData = ">>> "
EndIf
Switch $_iCallerError
Case 0
$sData &= "Bad return from " & $sTemp[1] & " in " & $sTemp[0] & ".dll"
Case 1
$sData &= "Unable to open " & $sTemp[0] & ".dll"
Case 3
$sData &= "Unable to find " & $sTemp[1] & " in " & $sTemp[0] & ".dll"
EndSwitch
If Not $bLastError Then $sData &= @CRLF
EndIf
EndIf
__Debug_ReportWrite($sData, $bLastError, $iLastError)
If $bExit Then Exit
_WinAPI_SetLastError($iLastError)
If $bLastError Then $_iCallerExtended = $iLastError
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func _DebugReportVar($sVarName, $vVar, $bErrExt = False, Const $iDebugLineNumber = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
If $__g_iReportType_Debug <= 0 Or $__g_iReportType_Debug > 6 Then Return SetError($_iCallerError, $_iCallerExtended, 0)
Local $iLastError = _WinAPI_GetLastError()
If IsBool($vVar) And IsInt($bErrExt) Then
If StringLeft($sVarName, 1) = "$" Then $sVarName = StringTrimLeft($sVarName, 1)
$vVar = Eval($sVarName)
$sVarName = "???"
EndIf
Local $sData = "@@ Debug(" & $iDebugLineNumber & ") : " & __Debug_DataType($vVar) & " -> " & $sVarName
If IsArray($vVar) Then
Local $nDims = UBound($vVar, $UBOUND_DIMENSIONS)
Local $nRows = UBound($vVar, $UBOUND_ROWS)
Local $nCols = UBound($vVar, $UBOUND_COLUMNS)
For $d = 1 To $nDims
$sData &= "[" & UBound($vVar, $d) & "]"
Next
If $nDims <= 3 Then
For $r = 0 To $nRows - 1
$sData &= @CRLF & @TAB & "[" & $r & "] "
If $nDims = 1 Then
$sData &= __Debug_DataFormat($vVar[$r]) & @TAB
ElseIf $nDims = 2 Then
For $c = 0 To $nCols - 1
$sData &= __Debug_DataFormat($vVar[$r][$c]) & @TAB
Next
Else
For $c = 0 To $nCols - 1
$sData &= @CRLF & @TAB & "    " & "[" & $c & "] "
For $k = 0 To UBound($vVar, 3) - 1
$sData &= __Debug_DataFormat($vVar[$r][$c][$k]) & @TAB
Next
Next
EndIf
Next
EndIf
ElseIf IsDllStruct($vVar) Then
Local $aArray[2], $sStruct = ""
Local $i = -1
While 1
$i += 1
If $i = UBound($aArray) Then ReDim $aArray[$i + UBound($aArray)]
$aArray[$i] = DllStructGetData($vVar, $i + 1)
If @error Then ExitLoop
$sStruct &= VarGetType($aArray[$i]) & "; "
WEnd
ReDim $aArray[$i]
$sData &= ' ("' & StringTrimRight($sStruct, 2) & '")'
For $r = 0 To UBound($aArray) - 1
$sData &= @CRLF & @TAB & "#" & $r + 1 & " "
$sData &= __Debug_DataFormat($aArray[$r])
Next
ElseIf IsObj($vVar) Then
Else
$sData &= ' = ' & __Debug_DataFormat($vVar)
EndIf
If $bErrExt Then $sData &= @CRLF & @TAB & "@error=" & $_iCallerError & " @extended=0x" & Hex($_iCallerExtended)
__Debug_ReportWrite($sData & @CRLF)
_WinAPI_SetLastError($iLastError)
Return SetError($_iCallerError, $_iCallerExtended)
EndFunc
Func __Debug_COMErrorHandler($oCOMError)
_DebugReport(__COMErrorFormating($oCOMError), False, $__g_bComErrorExit_Debug)
EndFunc
Func __Debug_DataFormat($vData)
Local $nLenMax = 25
Local $sTruncated = ""
If IsString($vData) Then
If StringLen($vData) > $nLenMax Then
$vData = StringLeft($vData, $nLenMax)
$sTruncated = " ..."
EndIf
Return '"' & $vData & '"' & $sTruncated
ElseIf IsBinary($vData) Then
If BinaryLen($vData) > $nLenMax Then
$vData = BinaryMid($vData, 1, $nLenMax)
$sTruncated = " ..."
EndIf
Return $vData & $sTruncated
ElseIf IsDllStruct($vData) Or IsArray($vData) Or IsMap($vData) Or IsObj($vData) Then
Return __Debug_DataType($vData)
Else
Return $vData
EndIf
EndFunc
Func __Debug_DataType($vData)
Local $sType = VarGetType($vData)
Switch $sType
Case "DllStruct"
$sType &= ":" & DllStructGetSize($vData)
Case "Array"
$sType &= " " & UBound($vData, $UBOUND_DIMENSIONS) & "D"
Case "Map"
Local $aMapKeys = MapKeys($vData)
$sType &= ":" & UBound($aMapKeys)
Case "String"
$sType &= ":" & StringLen($vData)
Case "Binary"
$sType &= ":" & BinaryLen($vData)
Case "Ptr"
If IsHWnd($vData) Then $sType = "Hwnd"
EndSwitch
Return "{" & $sType & "}"
EndFunc
Func __Debug_ReportClose()
If $__g_iReportType_Debug = 1 Then
If Not $__g_bReportWindowClosed_Debug Then
WinSetOnTop($__g_sReportTitle_Debug, "", 1)
_DebugReport(@CRLF & '>>>>>> Please close the "Report Log Window" to exit <<<<<<<' & @CRLF)
__Debug_ReportWindowWaitClose()
EndIf
ElseIf $__g_iReportType_Debug = 6 Then
Execute($__g_sReportCallBack_Debug & ")")
EndIf
$__g_iReportType_Debug = 0
EndFunc
Func __Debug_ReportWindowCreate()
Local $nOld = Opt("WinDetectHiddenText", $OPT_MATCHSTART)
Local $bExists = WinExists($__g_sReportTitle_Debug, $__g_sReportWindowText_Debug)
If $bExists Then
If $__g_hReportEdit_Debug = 0 Then
$__g_hReportEdit_Debug = ControlGetHandle($__g_sReportTitle_Debug, $__g_sReportWindowText_Debug, "Edit1")
$__g_bReportWindowWaitClose_Debug = False
EndIf
EndIf
Opt("WinDetectHiddenText", $nOld)
$__g_bReportWindowClosed_Debug = False
If Not $__g_bReportWindowWaitClose_Debug Then Return 0
Local Const $WS_OVERLAPPEDWINDOW = 0x00CF0000
Local Const $WS_HSCROLL = 0x00100000
Local Const $WS_VSCROLL = 0x00200000
Local Const $ES_READONLY = 2048
Local Const $EM_LIMITTEXT = 0xC5
Local Const $GUI_HIDE = 32
Local $w = 580, $h = 380
GUICreate($__g_sReportTitle_Debug, $w, $h, -1, -1, $WS_OVERLAPPEDWINDOW)
Local $idLabelHidden = GUICtrlCreateLabel($__g_sReportWindowText_Debug, 0, 0, 1, 1)
GUICtrlSetState($idLabelHidden, $GUI_HIDE)
Local $idEdit = GUICtrlCreateEdit("", 4, 4, $w - 8, $h - 8, BitOR($WS_HSCROLL, $WS_VSCROLL, $ES_READONLY))
$__g_hReportEdit_Debug = GUICtrlGetHandle($idEdit)
GUICtrlSetBkColor($idEdit, 0xFFFFFF)
GUICtrlSendMsg($idEdit, $EM_LIMITTEXT, 0, 0)
GUISetState()
$__g_bReportWindowWaitClose_Debug = True
Return 1
EndFunc
#Au3Stripper_Ignore_Funcs=__Debug_ReportWindowWrite
Func __Debug_ReportWindowWrite($sData)
If $__g_bReportWindowClosed_Debug Then __Debug_ReportWindowCreate()
Local Const $WM_GETTEXTLENGTH = 0x000E
Local Const $EM_SETSEL = 0xB1
Local Const $EM_REPLACESEL = 0xC2
Local $nLen = _SendMessage($__g_hReportEdit_Debug, $WM_GETTEXTLENGTH, 0, 0, 0, "int", "int")
_SendMessage($__g_hReportEdit_Debug, $EM_SETSEL, $nLen, $nLen, 0, "int", "int")
_SendMessage($__g_hReportEdit_Debug, $EM_REPLACESEL, True, $sData, 0, "int", "wstr")
EndFunc
Func __Debug_ReportWindowWaitClose()
If Not $__g_bReportWindowWaitClose_Debug Then Return 0
Local $nOld = Opt("WinDetectHiddenText", $OPT_MATCHSTART)
Local $hWndReportWindow = WinGetHandle($__g_sReportTitle_Debug, $__g_sReportWindowText_Debug)
Opt("WinDetectHiddenText", $nOld)
$nOld = Opt('GUIOnEventMode', 0)
Local Const $GUI_EVENT_CLOSE = -3
Local $aMsg
While WinExists(HWnd($hWndReportWindow))
$aMsg = GUIGetMsg(1)
If $aMsg[1] = $hWndReportWindow And $aMsg[0] = $GUI_EVENT_CLOSE Then GUIDelete($hWndReportWindow)
WEnd
Opt('GUIOnEventMode', $nOld)
$__g_hReportEdit_Debug = 0
$__g_bReportWindowWaitClose_Debug = True
$__g_bReportWindowClosed_Debug = True
EndFunc
Func __Debug_ReportNotepadCreate()
Local $bExists = WinExists($__g_sReportTitle_Debug)
If $bExists Then
If $__g_hReportEdit_Debug = 0 Then
$__g_hReportEdit_Debug = WinGetHandle($__g_sReportTitle_Debug)
Return 0
EndIf
EndIf
Local $pNotepad = Run("Notepad.exe")
$__g_hReportEdit_Debug = WinWait("[CLASS:Notepad]")
If $pNotepad <> WinGetProcess($__g_hReportEdit_Debug) Then
Return SetError(3, 0, 0)
EndIf
WinActivate($__g_hReportEdit_Debug)
WinSetTitle($__g_hReportEdit_Debug, "", String($__g_sReportTitle_Debug))
Return 1
EndFunc
#Au3Stripper_Ignore_Funcs=__Debug_ReportNotepadWrite
Func __Debug_ReportNotepadWrite($sData)
If $__g_hReportEdit_Debug = 0 Then __Debug_ReportNotepadCreate()
ControlCommand($__g_hReportEdit_Debug, "", "Edit1", "EditPaste", String($sData))
EndFunc
Func __Debug_ReportWrite($sData, $bLastError = False, $iLastError = 0)
Local $sError = ""
If $__g_bReportTimeStamp_Debug And ($sData <> "") Then $sData = @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & " " & $sData
If $bLastError Then
$sError = " LastError = " & $iLastError & " : (" & _WinAPI_GetLastErrorMessage() & ")" & @CRLF
EndIf
$sData &= $sError
$sData = StringReplace($sData, "'", "''")
Local Static $sERROR_CODE = ">Error code:"
If StringInStr($sData, $sERROR_CODE) Then
$sData = StringReplace($sData, $sERROR_CODE, @TAB & $sERROR_CODE)
If (StringInStr($sData, $sERROR_CODE & " 0") = 0) Then
$sData = StringReplace($sData, $sERROR_CODE, $sERROR_CODE & @TAB & @TAB & @TAB & @TAB)
EndIf
EndIf
Execute($__g_sReportCallBack_Debug & "'" & $sData & "')")
Return
EndFunc
Global Enum $ARRAYFILL_FORCE_DEFAULT, $ARRAYFILL_FORCE_SINGLEITEM, $ARRAYFILL_FORCE_INT, $ARRAYFILL_FORCE_NUMBER,  $ARRAYFILL_FORCE_PTR, $ARRAYFILL_FORCE_HWND, $ARRAYFILL_FORCE_STRING, $ARRAYFILL_FORCE_BOOLEAN
Global Enum $ARRAYUNIQUE_NOCOUNT, $ARRAYUNIQUE_COUNT
Global Enum $ARRAYUNIQUE_AUTO, $ARRAYUNIQUE_FORCE32, $ARRAYUNIQUE_FORCE64, $ARRAYUNIQUE_MATCH, $ARRAYUNIQUE_DISTINCT
Func _ArrayAdd(ByRef $aArray, $vValue, $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
Case $ARRAYFILL_FORCE_BOOLEAN
$hDataType = "Boolean"
EndSwitch
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + 1]
$aArray[$iDim_1] = $vValue
Return $iDim_1
EndIf
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
EndIf
$vValue = $aTmp
EndIf
Local $iAdd = UBound($vValue, $UBOUND_ROWS)
ReDim $aArray[$iDim_1 + $iAdd]
For $i = 0 To $iAdd - 1
If String($hDataType) = "Boolean" Then
Switch $vValue[$i]
Case "True", "1"
$aArray[$iDim_1 + $i] = True
Case "False", "0", ""
$aArray[$iDim_1 + $i] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iDim_1 + $i] = $hDataType($vValue[$i])
Else
$aArray[$iDim_1 + $i] = $vValue[$i]
EndIf
Next
Return $iDim_1 + $iAdd - 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(4, 0, -1)
Local $iValDim_1, $iValDim_2 = 0, $iColCount
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(5, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
Local $aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
Local $aTmp[$iValDim_1][0], $aSplit_2
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iColCount = UBound($aSplit_2)
If $iColCount > $iValDim_2 Then
$iValDim_2 = $iColCount
ReDim $aTmp[$iValDim_1][$iValDim_2]
EndIf
For $j = 0 To $iColCount - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1 + $iValDim_1][$iDim_2]
For $iWriteTo_Index = 0 To $iValDim_1 - 1
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
Else
If String($hDataType) = "Boolean" Then
Switch $vValue[$iWriteTo_Index][$j - $iStart]
Case "True", "1"
$aArray[$iWriteTo_Index + $iDim_1][$j] = True
Case "False", "0", ""
$aArray[$iWriteTo_Index + $iDim_1][$j] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = $hDataType($vValue[$iWriteTo_Index][$j - $iStart])
Else
$aArray[$iWriteTo_Index + $iDim_1][$j] = $vValue[$iWriteTo_Index][$j - $iStart]
EndIf
EndIf
Next
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS) - 1
EndFunc
Func _ArrayBinarySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iColumn = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iColumn = Default Then $iColumn = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iDim_1 = 0 Then Return SetError(6, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_1 - 1 Then $iEnd = $iDim_1 - 1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Local $iMid = Int(($iEnd + $iStart) / 2)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $aArray[$iStart] > $vValue Or $aArray[$iEnd] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid]
If $vValue < $aArray[$iMid] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(7, 0, -1)
If $aArray[$iStart][$iColumn] > $vValue Or $aArray[$iEnd][$iColumn] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid][$iColumn]
If $vValue < $aArray[$iMid][$iColumn] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case Else
Return SetError(5, 0, -1)
EndSwitch
Return $iMid
EndFunc
Func _ArrayColDelete(ByRef $aArray, $iColumn, $bConvert = False)
If $bConvert = Default Then $bConvert = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(2, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
Switch $iDim_2
Case 2
If $iColumn < 0 Or $iColumn > 1 Then Return SetError(3, 0, -1)
If $bConvert Then
Local $aTempArray[$iDim_1]
For $i = 0 To $iDim_1 - 1
$aTempArray[$i] = $aArray[$i][(Not $iColumn)]
Next
$aArray = $aTempArray
Else
ContinueCase
EndIf
Case Else
If $iColumn < 0 Or $iColumn > $iDim_2 - 1 Then Return SetError(3, 0, -1)
For $i = 0 To $iDim_1 - 1
For $j = $iColumn To $iDim_2 - 2
$aArray[$i][$j] = $aArray[$i][$j + 1]
Next
Next
ReDim $aArray[$iDim_1][$iDim_2 - 1]
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayColInsert(ByRef $aArray, $iColumn)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aTempArray[$iDim_1][2]
Switch $iColumn
Case 0, 1
For $i = 0 To $iDim_1 - 1
$aTempArray[$i][(Not $iColumn)] = $aArray[$i]
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
$aArray = $aTempArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1][$iDim_2 + 1]
For $i = 0 To $iDim_1 - 1
For $j = $iDim_2 To $iColumn + 1 Step -1
$aArray[$i][$j] = $aArray[$i][$j - 1]
Next
$aArray[$i][$iColumn] = ""
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayCombinations(Const ByRef $aArray, $iSet, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iN = UBound($aArray)
Local $iR = $iSet
Local $aIdx[$iR]
For $i = 0 To $iR - 1
$aIdx[$i] = $i
Next
Local $iTotal = __Array_Combinations($iN, $iR)
Local $iLeft = $iTotal
Local $aResult[$iTotal + 1]
$aResult[0] = $iTotal
Local $iCount = 1
While $iLeft > 0
__Array_GetNext($iN, $iR, $iLeft, $iTotal, $aIdx)
For $i = 0 To $iSet - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], 1)
$iCount += 1
WEnd
Return $aResult
EndFunc
Func _ArrayConcatenate(ByRef $aArrayTarget, Const ByRef $aArraySource, $iStart = 0)
If $iStart = Default Then $iStart = 0
If Not IsArray($aArrayTarget) Then Return SetError(1, 0, -1)
If Not IsArray($aArraySource) Then Return SetError(2, 0, -1)
Local $iDim_Total_Tgt = UBound($aArrayTarget, $UBOUND_DIMENSIONS)
Local $iDim_Total_Src = UBound($aArraySource, $UBOUND_DIMENSIONS)
Local $iDim_1_Tgt = UBound($aArrayTarget, $UBOUND_ROWS)
Local $iDim_1_Src = UBound($aArraySource, $UBOUND_ROWS)
If $iStart < 0 Or $iStart > $iDim_1_Src - 1 Then Return SetError(6, 0, -1)
Switch $iDim_Total_Tgt
Case 1
If $iDim_Total_Src <> 1 Then Return SetError(4, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart]
For $i = $iStart To $iDim_1_Src - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart] = $aArraySource[$i]
Next
Case 2
If $iDim_Total_Src <> 2 Then Return SetError(4, 0, -1)
Local $iDim_2_Tgt = UBound($aArrayTarget, $UBOUND_COLUMNS)
If UBound($aArraySource, $UBOUND_COLUMNS) <> $iDim_2_Tgt Then Return SetError(5, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart][$iDim_2_Tgt]
For $i = $iStart To $iDim_1_Src - 1
For $j = 0 To $iDim_2_Tgt - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart][$j] = $aArraySource[$i][$j]
Next
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
Return UBound($aArrayTarget, $UBOUND_ROWS)
EndFunc
Func _ArrayDelete(ByRef $aArray, $vRange)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber, $aSplit_1, $aSplit_2
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
Local $iCopyTo_Index = 0
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
$aArray[$iCopyTo_Index] = $aArray[$iReadFrom_Index]
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1]
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]][0] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index][0] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
For $j = 0 To $iDim_2
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFrom_Index][$j]
Next
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1][$iDim_2 + 1]
Case Else
Return SetError(2, 0, False)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayDisplay(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default)
#forceref $vUser_Separator
Local $iRet = __ArrayDisplay_Share($aArray, $sTitle, $sArrayRange, $iFlags, Default, $sHeader, $iDesired_Colwidth, 0, False)
Return SetError(@error, @extended, $iRet)
EndFunc
Func _ArrayExtract(Const ByRef $aArray, $iStart_Row = -1, $iEnd_Row = -1, $iStart_Col = -1, $iEnd_Col = -1)
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row = -1 Then $iStart_Row = 0
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
For $i = 0 To $iEnd_Row - $iStart_Row
$aRetArray[$i] = $aArray[$i + $iStart_Row]
Next
Return $aRetArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col = -1 Then $iStart_Col = 0
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
If $iStart_Col = $iEnd_Col Then
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
Else
Local $aRetArray[$iEnd_Row - $iStart_Row + 1][$iEnd_Col - $iStart_Col + 1]
EndIf
For $i = 0 To $iEnd_Row - $iStart_Row
For $j = 0 To $iEnd_Col - $iStart_Col
If $iStart_Col = $iEnd_Col Then
$aRetArray[$i] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
Else
$aRetArray[$i][$j] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
EndIf
Next
Next
Return $aRetArray
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayFindAll(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iSubItem = Default Then $iSubItem = 0
If $bRow = Default Then $bRow = False
$iStart = _ArraySearch($aArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
If @error Then Return SetError(@error, 0, -1)
Local $iIndex = 0, $avResult[UBound($aArray, ($bRow ? $UBOUND_COLUMNS : $UBOUND_ROWS))]
Do
$avResult[$iIndex] = $iStart
$iIndex += 1
$iStart = _ArraySearch($aArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
Until @error
ReDim $avResult[$iIndex]
Return $avResult
EndFunc
Func _ArrayFromString($sArrayStr, $sDelim_Col = "|", $sDelim_Row = @CRLF, $bForce2D = False, $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $bForce2D = Default Then $bForce2D = False
If $iStripWS = Default Then $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING
Local $aRow, $aCol = StringSplit($sArrayStr, $sDelim_Row, $STR_ENTIRESPLIT + $STR_NOCOUNT)
$aRow = StringSplit($aCol[0], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aCol) = 1 And Not $bForce2D Then
For $m = 0 To UBound($aRow) - 1
$aRow[$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Return $aRow
EndIf
Local $aRet[UBound($aCol)][UBound($aRow)]
For $n = 0 To UBound($aCol) - 1
$aRow = StringSplit($aCol[$n], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aRow) > UBound($aRet, 2) Then Return SetError(1)
For $m = 0 To UBound($aRow) - 1
$aRet[$n][$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Next
Return $aRet
EndFunc
Func _ArrayInsert(ByRef $aArray, $vRange, $vValue = "", $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $vValue = Default Then $vValue = ""
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
EndSwitch
Local $aSplit_1, $aSplit_2
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
For $i = 2 To $vRange[0]
If $vRange[$i] < $vRange[$i - 1] Then Return SetError(3, 0, -1)
Next
Local $iCopyTo_Index = $iDim_1 + $vRange[0]
Local $iInsertPoint_Index = $vRange[0]
Local $iInsert_Index = $vRange[$iInsertPoint_Index]
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
$aArray[$iCopyTo_Index] = $vValue
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index < 1 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Return $iDim_1 + $vRange[0] + 1
EndIf
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
$hDataType = 0
EndIf
$vValue = $aTmp
EndIf
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
If $iInsertPoint_Index <= UBound($vValue, $UBOUND_ROWS) Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index] = $hDataType($vValue[$iInsertPoint_Index - 1])
Else
$aArray[$iCopyTo_Index] = $vValue[$iInsertPoint_Index - 1]
EndIf
Else
$aArray[$iCopyTo_Index] = ""
EndIf
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(6, 0, -1)
Local $iValDim_1, $iValDim_2
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(7, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
$aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
StringReplace($aSplit_1[0], $sDelim_Item, "")
$iValDim_2 = @extended + 1
Local $aTmp[$iValDim_1][$iValDim_2]
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
For $j = 0 To $iValDim_2 - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(8, 0, -1)
ReDim $aArray[$iDim_1 + $vRange[0] + 1][$iDim_2]
For $iReadFromIndex = $iDim_1 To 0 Step -1
For $j = 0 To $iDim_2 - 1
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFromIndex][$j]
Next
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iCopyTo_Index][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iCopyTo_Index][$j] = ""
Else
If $iInsertPoint_Index - 1 < $iValDim_1 Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index][$j] = $hDataType($vValue[$iInsertPoint_Index - 1][$j - $iStart])
Else
$aArray[$iCopyTo_Index][$j] = $vValue[$iInsertPoint_Index - 1][$j - $iStart]
EndIf
Else
$aArray[$iCopyTo_Index][$j] = ""
EndIf
EndIf
Next
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayMax(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMaxIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_GreaterThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayMin(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMinIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMinIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_LessThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayPermute(ByRef $aArray, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iSize = UBound($aArray), $iFactorial = 1, $aIdx[$iSize], $aResult[1], $iCount = 1
If UBound($aArray) Then
For $i = 0 To $iSize - 1
$aIdx[$i] = $i
Next
For $i = $iSize To 1 Step -1
$iFactorial *= $i
Next
ReDim $aResult[$iFactorial + 1]
$aResult[0] = $iFactorial
__Array_ExeterInternal($aArray, 0, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
Else
$aResult[0] = 0
EndIf
Return $aResult
EndFunc
Func _ArrayPop(ByRef $aArray)
If (Not IsArray($aArray)) Then Return SetError(1, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, "")
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(3, 0, "")
Local $sLastVal = $aArray[$iUBound]
If $iUBound > -1 Then
ReDim $aArray[$iUBound]
EndIf
Return $sLastVal
EndFunc
Func _ArrayPush(ByRef $aArray, $vValue, $iDirection = 0)
If $iDirection = Default Then $iDirection = 0
If (Not IsArray($aArray)) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
Local $iUBound = UBound($aArray) - 1
If IsArray($vValue) Then
Local $iUBoundS = UBound($vValue)
If ($iUBoundS - 1) > $iUBound Then Return SetError(2, 0, 0)
If $iDirection Then
For $i = $iUBound To $iUBoundS Step -1
$aArray[$i] = $aArray[$i - $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i] = $vValue[$i]
Next
Else
For $i = 0 To $iUBound - $iUBoundS
$aArray[$i] = $aArray[$i + $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i + $iUBound - $iUBoundS + 1] = $vValue[$i]
Next
EndIf
Else
If $iUBound > -1 Then
If $iDirection Then
For $i = $iUBound To 1 Step -1
$aArray[$i] = $aArray[$i - 1]
Next
$aArray[0] = $vValue
Else
For $i = 0 To $iUBound - 1
$aArray[$i] = $aArray[$i + 1]
Next
$aArray[$iUBound] = $vValue
EndIf
EndIf
EndIf
Return 1
EndFunc
Func _ArrayReverse(ByRef $aArray, $iStart = 0, $iEnd = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
If Not UBound($aArray) Then Return SetError(4, 0, 0)
Local $vTmp, $iUBound = UBound($aArray) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
For $i = $iStart To Int(($iStart + $iEnd - 1) / 2)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iEnd]
$aArray[$iEnd] = $vTmp
$iEnd -= 1
Next
Return 1
EndFunc
Func _ArraySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iForward = 1, $iSubItem = -1, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iForward = Default Then $iForward = 1
If $iSubItem = Default Then $iSubItem = -1
If $bRow = Default Then $bRow = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray) - 1
If $iDim_1 = -1 Then Return SetError(3, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
Local $bCompType = False
If $iCompare = 2 Then
$iCompare = 0
$bCompType = True
EndIf
If $bRow Then
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then Return SetError(5, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_2 Then $iEnd = $iDim_2
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Else
If $iEnd < 1 Or $iEnd > $iDim_1 Then $iEnd = $iDim_1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
EndIf
Local $iStep = 1
If Not $iForward Then
Local $iTmp = $iStart
$iStart = $iEnd
$iEnd = $iTmp
$iStep = -1
EndIf
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] = $vValue Then Return $i
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] == $vValue Then Return $i
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If StringRegExp($aArray[$i], $vValue) Then Return $i
Else
If StringInStr($aArray[$i], $vValue, $iCase) > 0 Then Return $i
EndIf
Next
EndIf
Case 2
Local $iDim_Sub
If $bRow Then
$iDim_Sub = $iDim_1
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
Else
$iDim_Sub = $iDim_2
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
EndIf
For $j = $iSubItem To $iDim_Sub
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] = $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] = $vValue Then Return $i
EndIf
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] == $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] == $vValue Then Return $i
EndIf
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If $bRow Then
If StringRegExp($aArray[$j][$i], $vValue) Then Return $i
Else
If StringRegExp($aArray[$i][$j], $vValue) Then Return $i
EndIf
Else
If $bRow Then
If StringInStr($aArray[$j][$i], $vValue, $iCase) > 0 Then Return $i
Else
If StringInStr($aArray[$i][$j], $vValue, $iCase) > 0 Then Return $i
EndIf
EndIf
Next
EndIf
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return SetError(6, 0, -1)
EndFunc
Func _ArrayShuffle(ByRef $aArray, $iStart_Row = 0, $iEnd_Row = 0, $iCol = -1)
If $iStart_Row = Default Then $iStart_Row = 0
If $iEnd_Row = Default Then $iEnd_Row = 0
If $iCol = Default Then $iCol = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iEnd_Row = 0 Then $iEnd_Row = $iDim_1 - 1
If $iStart_Row < 0 Or $iStart_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iEnd_Row < 1 Or $iEnd_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $vTmp, $iRand
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iRand]
$aArray[$iRand] = $vTmp
Next
Return 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iCol < -1 Or $iCol > $iDim_2 - 1 Then Return SetError(5, 0, -1)
Local $iCol_Start, $iCol_End
If $iCol = -1 Then
$iCol_Start = 0
$iCol_End = $iDim_2 - 1
Else
$iCol_Start = $iCol
$iCol_End = $iCol
EndIf
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
For $j = $iCol_Start To $iCol_End
$vTmp = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$iRand][$j]
$aArray[$iRand][$j] = $vTmp
Next
Next
Return 1
Case Else
Return SetError(2, 0, -1)
EndSwitch
EndFunc
Func _ArraySort(ByRef $aArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0, $iPivot = 0)
If $iDescending = Default Then $iDescending = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If $iPivot = Default Then $iPivot = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(5, 0, 0)
If $iEnd = Default Then $iEnd = 0
If $iEnd < 1 Or $iEnd > $iUBound Or $iEnd = Default Then $iEnd = $iUBound
If $iStart < 0 Or $iStart = Default Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iPivot Then
__ArrayDualPivotSort($aArray, $iStart, $iEnd)
Else
__ArrayQuickSort1D($aArray, $iStart, $iEnd)
EndIf
If $iDescending Then _ArrayReverse($aArray, $iStart, $iEnd)
Case 2
If $iPivot Then Return SetError(6, 0, 0)
Local $iSubMax = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)
If $iDescending Then
$iDescending = -1
Else
$iDescending = 1
EndIf
__ArrayQuickSort2D($aArray, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
Case Else
Return SetError(4, 0, 0)
EndSwitch
Return 1
EndFunc
Func __ArrayQuickSort1D(ByRef $aArray, Const ByRef $iStart, Const ByRef $iEnd)
If $iEnd <= $iStart Then Return
Local $vTmp
If ($iEnd - $iStart) < 15 Then
Local $vCur
For $i = $iStart + 1 To $iEnd
$vTmp = $aArray[$i]
If IsNumber($vTmp) Then
For $j = $i - 1 To $iStart Step -1
$vCur = $aArray[$j]
If ($vTmp >= $vCur And IsNumber($vCur)) Or (Not IsNumber($vCur) And StringCompare($vTmp, $vCur) >= 0) Then ExitLoop
$aArray[$j + 1] = $vCur
Next
Else
For $j = $i - 1 To $iStart Step -1
If (StringCompare($vTmp, $aArray[$j]) >= 0) Then ExitLoop
$aArray[$j + 1] = $aArray[$j]
Next
EndIf
$aArray[$j + 1] = $vTmp
Next
Return
EndIf
Local $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($aArray[$L] < $vPivot And IsNumber($aArray[$L])) Or (Not IsNumber($aArray[$L]) And StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While ($aArray[$R] > $vPivot And IsNumber($aArray[$R])) Or (Not IsNumber($aArray[$R]) And StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
Else
While (StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While (StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
$vTmp = $aArray[$L]
$aArray[$L] = $aArray[$R]
$aArray[$R] = $vTmp
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort1D($aArray, $iStart, $R)
__ArrayQuickSort1D($aArray, $L, $iEnd)
EndFunc
Func __ArrayQuickSort2D(ByRef $aArray, Const ByRef $iStep, Const ByRef $iStart, Const ByRef $iEnd, Const ByRef $iSubItem, Const ByRef $iSubMax)
If $iEnd <= $iStart Then Return
Local $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)][$iSubItem], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($iStep * ($aArray[$L][$iSubItem] - $vPivot) < 0 And IsNumber($aArray[$L][$iSubItem])) Or (Not IsNumber($aArray[$L][$iSubItem]) And $iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * ($aArray[$R][$iSubItem] - $vPivot) > 0 And IsNumber($aArray[$R][$iSubItem])) Or (Not IsNumber($aArray[$R][$iSubItem]) And $iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
Else
While ($iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
For $i = 0 To $iSubMax
$vTmp = $aArray[$L][$i]
$aArray[$L][$i] = $aArray[$R][$i]
$aArray[$R][$i] = $vTmp
Next
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort2D($aArray, $iStep, $iStart, $R, $iSubItem, $iSubMax)
__ArrayQuickSort2D($aArray, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc
Func __ArrayDualPivotSort(ByRef $aArray, $iPivot_Left, $iPivot_Right, $bLeftMost = True)
If $iPivot_Left > $iPivot_Right Then Return
Local $iLength = $iPivot_Right - $iPivot_Left + 1
Local $i, $j, $k, $iAi, $iAk, $iA1, $iA2, $iLast
If $iLength < 45 Then
If $bLeftMost Then
$i = $iPivot_Left
While $i < $iPivot_Right
$j = $i
$iAi = $aArray[$i + 1]
While $iAi < $aArray[$j]
$aArray[$j + 1] = $aArray[$j]
$j -= 1
If $j + 1 = $iPivot_Left Then ExitLoop
WEnd
$aArray[$j + 1] = $iAi
$i += 1
WEnd
Else
While 1
If $iPivot_Left >= $iPivot_Right Then Return 1
$iPivot_Left += 1
If $aArray[$iPivot_Left] < $aArray[$iPivot_Left - 1] Then ExitLoop
WEnd
While 1
$k = $iPivot_Left
$iPivot_Left += 1
If $iPivot_Left > $iPivot_Right Then ExitLoop
$iA1 = $aArray[$k]
$iA2 = $aArray[$iPivot_Left]
If $iA1 < $iA2 Then
$iA2 = $iA1
$iA1 = $aArray[$iPivot_Left]
EndIf
$k -= 1
While $iA1 < $aArray[$k]
$aArray[$k + 2] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 2] = $iA1
While $iA2 < $aArray[$k]
$aArray[$k + 1] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 1] = $iA2
$iPivot_Left += 1
WEnd
$iLast = $aArray[$iPivot_Right]
$iPivot_Right -= 1
While $iLast < $aArray[$iPivot_Right]
$aArray[$iPivot_Right + 1] = $aArray[$iPivot_Right]
$iPivot_Right -= 1
WEnd
$aArray[$iPivot_Right + 1] = $iLast
EndIf
Return 1
EndIf
Local $iSeventh = BitShift($iLength, 3) + BitShift($iLength, 6) + 1
Local $iE1, $iE2, $iE3, $iE4, $iE5, $t
$iE3 = Ceiling(($iPivot_Left + $iPivot_Right) / 2)
$iE2 = $iE3 - $iSeventh
$iE1 = $iE2 - $iSeventh
$iE4 = $iE3 + $iSeventh
$iE5 = $iE4 + $iSeventh
If $aArray[$iE2] < $aArray[$iE1] Then
$t = $aArray[$iE2]
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
If $aArray[$iE3] < $aArray[$iE2] Then
$t = $aArray[$iE3]
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
If $aArray[$iE4] < $aArray[$iE3] Then
$t = $aArray[$iE4]
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
If $aArray[$iE5] < $aArray[$iE4] Then
$t = $aArray[$iE5]
$aArray[$iE5] = $aArray[$iE4]
$aArray[$iE4] = $t
If $t < $aArray[$iE3] Then
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
EndIf
Local $iLess = $iPivot_Left
Local $iGreater = $iPivot_Right
If (($aArray[$iE1] <> $aArray[$iE2]) And ($aArray[$iE2] <> $aArray[$iE3]) And ($aArray[$iE3] <> $aArray[$iE4]) And ($aArray[$iE4] <> $aArray[$iE5])) Then
Local $iPivot_1 = $aArray[$iE2]
Local $iPivot_2 = $aArray[$iE4]
$aArray[$iE2] = $aArray[$iPivot_Left]
$aArray[$iE4] = $aArray[$iPivot_Right]
Do
$iLess += 1
Until $aArray[$iLess] >= $iPivot_1
Do
$iGreater -= 1
Until $aArray[$iGreater] <= $iPivot_2
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk > $iPivot_2 Then
While $aArray[$iGreater] > $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
$aArray[$iPivot_Left] = $aArray[$iLess - 1]
$aArray[$iLess - 1] = $iPivot_1
$aArray[$iPivot_Right] = $aArray[$iGreater + 1]
$aArray[$iGreater + 1] = $iPivot_2
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 2, True)
__ArrayDualPivotSort($aArray, $iGreater + 2, $iPivot_Right, False)
If ($iLess < $iE1) And ($iE5 < $iGreater) Then
While $aArray[$iLess] = $iPivot_1
$iLess += 1
WEnd
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
WEnd
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk = $iPivot_2 Then
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iPivot_1
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
EndIf
__ArrayDualPivotSort($aArray, $iLess, $iGreater, False)
Else
Local $iPivot = $aArray[$iE3]
$k = $iLess
While $k <= $iGreater
If $aArray[$k] = $iPivot Then
$k += 1
ContinueLoop
EndIf
$iAk = $aArray[$k]
If $iAk < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
Else
While $aArray[$iGreater] > $iPivot
$iGreater -= 1
WEnd
If $aArray[$iGreater] < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $iPivot
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 1, True)
__ArrayDualPivotSort($aArray, $iGreater + 1, $iPivot_Right, False)
EndIf
EndFunc
Func _ArraySwap(ByRef $aArray, $iIndex_1, $iIndex_2, $bCol = False, $iStart = -1, $iEnd = -1)
If $bCol = Default Then $bCol = False
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then
$bCol = False
$iStart = -1
$iEnd = -1
EndIf
If $iStart > $iEnd Then Return SetError(5, 0, -1)
If $bCol Then
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_2 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_1
Else
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_2
EndIf
Local $vTmp
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
$vTmp = $aArray[$iIndex_1]
$aArray[$iIndex_1] = $aArray[$iIndex_2]
$aArray[$iIndex_2] = $vTmp
Case 2
If $iStart < -1 Or $iEnd < -1 Then Return SetError(4, 0, -1)
If $bCol Then
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$j][$iIndex_1]
$aArray[$j][$iIndex_1] = $aArray[$j][$iIndex_2]
$aArray[$j][$iIndex_2] = $vTmp
Next
Else
If $iStart > $iDim_2 Or $iEnd > $iDim_2 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$iIndex_1][$j]
$aArray[$iIndex_1][$j] = $aArray[$iIndex_2][$j]
$aArray[$iIndex_2][$j] = $vTmp
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayToClip(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = -1, $iEnd_Row = -1, $sDelim_Row = @CRLF, $iStart_Col = -1, $iEnd_Col = -1)
Local $sResult = _ArrayToString($aArray, $sDelim_Col, $iStart_Row, $iEnd_Row, $sDelim_Row, $iStart_Col, $iEnd_Col)
If @error Then Return SetError(@error, 0, 0)
If ClipPut($sResult) Then Return 1
Return SetError(-1, 0, 0)
EndFunc
Func _ArrayToString(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = Default, $iEnd_Row = Default, $sDelim_Row = @CRLF, $iStart_Col = Default, $iEnd_Col = Default)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 = -1 Then Return ""
If $iStart_Row = -1 Then $iStart_Row = 0
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, "")
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $sRet = ""
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iStart_Row To $iEnd_Row
$sRet &= $aArray[$i] & $sDelim_Col
Next
Return StringTrimRight($sRet, StringLen($sDelim_Col))
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then Return ""
If $iStart_Col = -1 Then $iStart_Col = 0
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
Local $iDelimColLen = StringLen($sDelim_Col)
For $i = $iStart_Row To $iEnd_Row
For $j = $iStart_Col To $iEnd_Col
$sRet &= $aArray[$i][$j] & $sDelim_Col
Next
$sRet = StringTrimRight($sRet, $iDelimColLen) & $sDelim_Row
Next
Return StringTrimRight($sRet, StringLen($sDelim_Row))
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayTranspose(ByRef $aArray, $bForce1D = False)
Local $aTemp
Switch $bForce1D
Case Default
$bForce1D = False
Case True, False
Case Else
Return SetError(3, 0, 0)
EndSwitch
Switch UBound($aArray, 0)
Case 0
Return SetError(2, 0, 0)
Case 1
Local $aTemp[1][UBound($aArray)]
For $i = 0 To UBound($aArray) - 1
$aTemp[0][$i] = $aArray[$i]
Next
$aArray = $aTemp
Case 2
Local $iDim_1 = UBound($aArray, 1), $iDim_2 = UBound($aArray, 2)
If $iDim_1 <> $iDim_2 Then
Local $aTemp[$iDim_2][$iDim_1]
For $i = 0 To $iDim_1 - 1
For $j = 0 To $iDim_2 - 1
$aTemp[$j][$i] = $aArray[$i][$j]
Next
Next
$aArray = $aTemp
Else
Local $vElement
For $i = 0 To $iDim_1 - 1
For $j = $i + 1 To $iDim_2 - 1
$vElement = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$j][$i]
$aArray[$j][$i] = $vElement
Next
Next
EndIf
If $bForce1D = True And UBound($aArray, 2) = 1 Then
$aTemp = $aArray
ReDim $aArray[UBound($aTemp)]
For $i = 0 To UBound($aTemp) - 1
$aArray[$i] = $aTemp[$i][0]
Next
EndIf
Case Else
Return SetError(1, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayTrim(ByRef $aArray, $iTrimNum, $iDirection = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
If $iDirection = Default Then $iDirection = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd = 0 Then $iEnd = $iDim_1
If $iStart > $iEnd Then Return SetError(3, 0, -1)
If $iStart < 0 Or $iEnd < 0 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimRight($aArray[$i], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimLeft($aArray[$i], $iTrimNum)
Next
EndIf
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem < 0 Or $iSubItem > $iDim_2 Then Return SetError(5, 0, -1)
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimRight($aArray[$i][$iSubItem], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimLeft($aArray[$i][$iSubItem], $iTrimNum)
Next
EndIf
Case Else
Return SetError(2, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayUnique(Const ByRef $aArray, $iColumn = 0, $iBase = 0, $iCase = 0, $iCount = $ARRAYUNIQUE_COUNT, $iIntType = $ARRAYUNIQUE_AUTO)
If $iColumn = Default Then $iColumn = 0
If $iBase = Default Then $iBase = 0
If $iCase = Default Then $iCase = 0
If $iCount = Default Then $iCount = $ARRAYUNIQUE_COUNT
If $iIntType = Default Then $iIntType = $ARRAYUNIQUE_AUTO
If UBound($aArray, $UBOUND_ROWS) = 0 Then Return SetError(1, 0, 0)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS), $iNumColumns = UBound($aArray, $UBOUND_COLUMNS)
If $iDims > 2 Then Return SetError(2, 0, 0)
If $iBase < 0 Or $iBase > 1 Or (Not IsInt($iBase)) Then Return SetError(3, 0, 0)
If $iCase < 0 Or $iCase > 1 Or (Not IsInt($iCase)) Then Return SetError(3, 0, 0)
If $iCount < 0 Or $iCount > 1 Or (Not IsInt($iCount)) Then Return SetError(4, 0, 0)
If $iIntType < 0 Or $iIntType > 4 Or (Not IsInt($iIntType)) Then Return SetError(5, 0, 0)
If $iColumn < 0 Or ($iNumColumns = 0 And $iColumn > 0) Or ($iNumColumns > 0 And $iColumn >= $iNumColumns) Then Return SetError(6, 0, 0)
If $iIntType = $ARRAYUNIQUE_AUTO Then
Local $bInt, $sVarType
If $iDims = 1 Then
$bInt = IsInt($aArray[$iBase])
$sVarType = VarGetType($aArray[$iBase])
Else
$bInt = IsInt($aArray[$iBase][$iColumn])
$sVarType = VarGetType($aArray[$iBase][$iColumn])
EndIf
If $bInt And $sVarType = "Int64" Then
$iIntType = $ARRAYUNIQUE_FORCE64
Else
$iIntType = $ARRAYUNIQUE_FORCE32
EndIf
EndIf
ObjEvent("AutoIt.Error", __ArrayUnique_AutoErrFunc)
Local $oDictionary = ObjCreate("Scripting.Dictionary")
$oDictionary.CompareMode = Number(Not $iCase)
Local $vElem, $sType, $vKey, $bCOMError = False
For $i = $iBase To UBound($aArray) - 1
If $iDims = 1 Then
$vElem = $aArray[$i]
Else
$vElem = $aArray[$i][$iColumn]
EndIf
Switch $iIntType
Case $ARRAYUNIQUE_FORCE32
$oDictionary.Item($vElem)
If @error Then
$bCOMError = True
ExitLoop
EndIf
Case $ARRAYUNIQUE_FORCE64
$sType = VarGetType($vElem)
If $sType = "Int32" Then
$bCOMError = True
ExitLoop
EndIf
$vKey = "#" & $sType & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_MATCH
$sType = VarGetType($vElem)
If StringLeft($sType, 3) = "Int" Then
$vKey = "#Int#" & String($vElem)
Else
$vKey = "#" & $sType & "#" & String($vElem)
EndIf
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_DISTINCT
$vKey = "#" & VarGetType($vElem) & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
EndSwitch
Next
Local $aValues, $j = 0
If $bCOMError Then
Return SetError(7, 0, 0)
ElseIf $iIntType <> $ARRAYUNIQUE_FORCE32 Then
Local $aValues[$oDictionary.Count]
For $vKey In $oDictionary.Keys()
$aValues[$j] = $oDictionary($vKey)
If StringLeft($vKey, 5) = "#Ptr#" Then
$aValues[$j] = Ptr($aValues[$j])
EndIf
$j += 1
Next
Else
$aValues = $oDictionary.Keys()
EndIf
If $iCount Then
_ArrayInsert($aValues, 0, $oDictionary.Count)
EndIf
Return $aValues
EndFunc
Func _Array1DToHistogram($aArray, $iSizing = 100)
If UBound($aArray, 0) > 1 Then Return SetError(1, 0, "")
$iSizing = $iSizing * 8
Local $t, $n, $iMin = 0, $iMax = 0, $iOffset = 0
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
$t = IsNumber($t) ? Round($t) : 0
If $t < $iMin Then $iMin = $t
If $t > $iMax Then $iMax = $t
Next
Local $iRange = Int(Round(($iMax - $iMin) / 8)) * 8
Local $iSpaceRatio = 4
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
If $t Then
$n = Abs(Round(($iSizing * $t) / $iRange) / 8)
$aArray[$i] = ""
If $t > 0 Then
If $iMin Then
$iOffset = Int(Abs(Round(($iSizing * $iMin) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
Else
If $iMin <> $t Then
$iOffset = Int(Abs(Round(($iSizing * ($t - $iMin)) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
EndIf
$aArray[$i] &= __Array_StringRepeat(ChrW(0x2588), Int($n / 8))
$n = Mod($n, 8)
If $n > 0 Then $aArray[$i] &= ChrW(0x2588 + 8 - $n)
$aArray[$i] &= ' ' & $t
Else
$aArray[$i] = ""
EndIf
Next
Return $aArray
EndFunc
Func _Array2DCreate($aArray1, $aArray2)
If Not IsArray($aArray1) Or Not IsArray($aArray2) Then Return SetError(3, 0, "")
Local $iDim1 = UBound($aArray1, $UBOUND_DIMENSIONS), $iDim2 = UBound($aArray2, $UBOUND_DIMENSIONS)
If $iDim1 > 2 Or $iDim2 > 2 Then Return SetError(1, 0, "")
Local $nRows = UBound($aArray1, $UBOUND_ROWS)
If $nRows <> UBound($aArray2, $UBOUND_ROWS) Then Return SetError(2, 0, "")
Local $nCols1 = ($iDim1 = 1 ? 1 : UBound($aArray1, $UBOUND_COLUMNS))
Local $nCols2 = ($iDim2 = 1 ? 1 : UBound($aArray2, $UBOUND_COLUMNS))
Local $aTmp[$nRows][$nCols1 + $nCols2]
Select
Case $iDim1 = 1 And $iDim2 = 1
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
$aTmp[$i][1] = $aArray2[$i]
Next
Case $iDim1 = 1 And $iDim2 = 2
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
Next
For $j = 1 To $nCols2
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - 1]
Next
Next
Case $iDim1 = 2 And $iDim2 = 1
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $i = 0 To $nRows - 1
$aTmp[$i][$nCols1] = $aArray2[$i]
Next
Case $iDim1 = 2 And $iDim2 = 2
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $j = $nCols1 To ($nCols1 + $nCols2) - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - $nCols1]
Next
Next
EndSelect
Return $aTmp
EndFunc
Func __Array_StringRepeat($sString, $iRepeatCount)
$iRepeatCount = Int($iRepeatCount)
If StringLen($sString) < 1 Or $iRepeatCount <= 0 Then Return SetError(1, 0, "")
Local $sResult = ""
While $iRepeatCount > 1
If BitAND($iRepeatCount, 1) Then $sResult &= $sString
$sString &= $sString
$iRepeatCount = BitShift($iRepeatCount, 1)
WEnd
Return $sString & $sResult
EndFunc
Func __Array_ExeterInternal(ByRef $aArray, $iStart, $iSize, $sDelimiter, ByRef $aIdx, ByRef $aResult, ByRef $iCount)
If $iStart == $iSize - 1 Then
For $i = 0 To $iSize - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], StringLen($sDelimiter))
$iCount += 1
Else
Local $iTemp
For $i = $iStart To $iSize - 1
$iTemp = $aIdx[$i]
$aIdx[$i] = $aIdx[$iStart]
$aIdx[$iStart] = $iTemp
__Array_ExeterInternal($aArray, $iStart + 1, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
$aIdx[$iStart] = $aIdx[$i]
$aIdx[$i] = $iTemp
Next
EndIf
EndFunc
Func __Array_Combinations($iN, $iR)
Local $i_Total = 1
For $i = $iR To 1 Step -1
$i_Total *= ($iN / $i)
$iN -= 1
Next
Return Round($i_Total)
EndFunc
Func __Array_GetNext($iN, $iR, ByRef $iLeft, $iTotal, ByRef $aIdx)
If $iLeft == $iTotal Then
$iLeft -= 1
Return
EndIf
Local $i = $iR - 1
While $aIdx[$i] == $iN - $iR + $i
$i -= 1
WEnd
$aIdx[$i] += 1
For $j = $i + 1 To $iR - 1
$aIdx[$j] = $aIdx[$i] + $j - $i
Next
$iLeft -= 1
EndFunc
Func __Array_MinMaxIndex(Const ByRef $aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, $fuComparison)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iCompNumeric <> 1 Then $iCompNumeric = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 < 0 Then Return SetError(1, 0, -1)
If $iEnd = -1 Then $iEnd = $iDim_1
If $iStart = -1 Then $iStart = 0
If $iStart < -1 Or $iEnd < -1 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
If $iDim_1 < 0 Then Return SetError(5, 0, -1)
Local $iMaxMinIndex = $iStart
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i]), Number($aArray[$iMaxMinIndex])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i], $aArray[$iMaxMinIndex]) Then $iMaxMinIndex = $i
Next
EndIf
Case 2
If $iSubItem < 0 Or $iSubItem > UBound($aArray, $UBOUND_COLUMNS) - 1 Then Return SetError(6, 0, -1)
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i][$iSubItem]), Number($aArray[$iMaxMinIndex][$iSubItem])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i][$iSubItem], $aArray[$iMaxMinIndex][$iSubItem]) Then $iMaxMinIndex = $i
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return $iMaxMinIndex
EndFunc
Func __Array_GreaterThan($vValue1, $vValue2)
Return $vValue1 > $vValue2
EndFunc
Func __Array_LessThan($vValue1, $vValue2)
Return $vValue1 < $vValue2
EndFunc
Func __ArrayUnique_AutoErrFunc()
EndFunc
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FT_MSEC = 2
Global Const $FT_UTC = 4
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $FILE_SHARE_READWRITE = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE)
Global Const $FILE_SHARE_ANY = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE, $FILE_SHARE_DELETE)
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $GENERIC_READWRITE = BitOR($GENERIC_READ, $GENERIC_WRITE)
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $PATH_ORIGINAL = 0
Global Const $PATH_DRIVE = 1
Global Const $PATH_DIRECTORY = 2
Global Const $PATH_FILENAME = 3
Global Const $PATH_EXTENSION = 4
Func _FileCountLines($sFilePath)
FileReadToArray($sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return @extended
EndFunc
Func _FileCreate($sFilePath)
Local $hFileOpen = FileOpen($sFilePath, BitOR($FO_OVERWRITE, $FO_CREATEPATH))
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $iFileWrite = FileWrite($hFileOpen, "")
FileClose($hFileOpen)
If Not $iFileWrite Then Return SetError(2, 0, 0)
Return 1
EndFunc
Func _FileListToArray($sFilePath, $sFilter = "*", $iFlag = $FLTA_FILESFOLDERS, $bReturnPath = False)
Local $sDelimiter = "|", $sFileList = "", $sFileName = "", $sFullPath = ""
$sFilePath = StringRegExpReplace($sFilePath, "[\\/]+$", "") & "\"
If $iFlag = Default Then $iFlag = $FLTA_FILESFOLDERS
If $bReturnPath Then $sFullPath = $sFilePath
If $sFilter = Default Then $sFilter = "*"
If Not FileExists($sFilePath) Then Return SetError(1, 0, 0)
If StringRegExp($sFilter, "[\\/:><\|]|(?s)^\s*$") Then Return SetError(2, 0, 0)
If Not ($iFlag = 0 Or $iFlag = 1 Or $iFlag = 2) Then Return SetError(3, 0, 0)
Local $hSearch = FileFindFirstFile($sFilePath & $sFilter)
If @error Then Return SetError(4, 0, 0)
While 1
$sFileName = FileFindNextFile($hSearch)
If @error Then ExitLoop
If ($iFlag + @extended = 2) Then ContinueLoop
$sFileList &= $sDelimiter & $sFullPath & $sFileName
WEnd
FileClose($hSearch)
If $sFileList = "" Then Return SetError(4, 0, 0)
Return StringSplit(StringTrimLeft($sFileList, 1), $sDelimiter)
EndFunc
Func _FileListToArrayRec($sFilePath, $sMask = "*", $iReturn = $FLTAR_FILESFOLDERS, $iRecur = $FLTAR_NORECUR, $iSort = $FLTAR_NOSORT, $iReturnPath = $FLTAR_RELPATH)
If Not FileExists($sFilePath) Then Return SetError(1, 1, "")
If $sMask = Default Then $sMask = "*"
If $iReturn = Default Then $iReturn = $FLTAR_FILESFOLDERS
If $iRecur = Default Then $iRecur = $FLTAR_NORECUR
If $iSort = Default Then $iSort = $FLTAR_NOSORT
If $iReturnPath = Default Then $iReturnPath = $FLTAR_RELPATH
If $iRecur > 1 Or Not IsInt($iRecur) Then Return SetError(1, 6, "")
Local $bLongPath = False
If StringLeft($sFilePath, 4) == "\\?\" Then
$bLongPath = True
EndIf
Local $sFolderSlash = ""
If StringRight($sFilePath, 1) = "\" Then
$sFolderSlash = "\"
Else
$sFilePath = $sFilePath & "\"
EndIf
Local $asFolderSearchList[100] = [1]
$asFolderSearchList[1] = $sFilePath
Local $iHide_HS = 0,  $sHide_HS = ""
If BitAND($iReturn, $FLTAR_NOHIDDEN) Then
$iHide_HS += 2
$sHide_HS &= "H"
$iReturn -= $FLTAR_NOHIDDEN
EndIf
If BitAND($iReturn, $FLTAR_NOSYSTEM) Then
$iHide_HS += 4
$sHide_HS &= "S"
$iReturn -= $FLTAR_NOSYSTEM
EndIf
Local $iHide_Link = 0
If BitAND($iReturn, $FLTAR_NOLINK) Then
$iHide_Link = 0x400
$iReturn -= $FLTAR_NOLINK
EndIf
Local $iMaxLevel = 0
If $iRecur < 0 Then
StringReplace($sFilePath, "\", "", 0, $STR_NOCASESENSEBASIC)
$iMaxLevel = @extended - $iRecur
EndIf
Local $sExclude_List = "", $sExclude_List_Folder = "", $sInclude_List = "*"
Local $aMaskSplit = StringSplit($sMask, "|")
Switch $aMaskSplit[0]
Case 3
$sExclude_List_Folder = $aMaskSplit[3]
ContinueCase
Case 2
$sExclude_List = $aMaskSplit[2]
ContinueCase
Case 1
$sInclude_List = $aMaskSplit[1]
EndSwitch
Local $sInclude_File_Mask = ".+"
If $sInclude_List <> "*" Then
If Not __FLTAR_ListToMask($sInclude_File_Mask, $sInclude_List) Then Return SetError(1, 2, "")
EndIf
Local $sInclude_Folder_Mask = ".+"
Switch $iReturn
Case 0
Switch $iRecur
Case 0
$sInclude_Folder_Mask = $sInclude_File_Mask
EndSwitch
Case 2
$sInclude_Folder_Mask = $sInclude_File_Mask
EndSwitch
Local $sExclude_File_Mask = ":"
If $sExclude_List <> "" Then
If Not __FLTAR_ListToMask($sExclude_File_Mask, $sExclude_List) Then Return SetError(1, 3, "")
EndIf
Local $sExclude_Folder_Mask = ":"
If $iRecur Then
If $sExclude_List_Folder Then
If Not __FLTAR_ListToMask($sExclude_Folder_Mask, $sExclude_List_Folder) Then Return SetError(1, 4, "")
EndIf
If $iReturn = 2 Then
$sExclude_Folder_Mask = $sExclude_File_Mask
EndIf
Else
$sExclude_Folder_Mask = $sExclude_File_Mask
EndIf
If Not ($iReturn = 0 Or $iReturn = 1 Or $iReturn = 2) Then Return SetError(1, 5, "")
If Not ($iSort = 0 Or $iSort = 1 Or $iSort = 2) Then Return SetError(1, 7, "")
If Not ($iReturnPath = 0 Or $iReturnPath = 1 Or $iReturnPath = 2) Then Return SetError(1, 8, "")
If $iHide_Link Then
Local $tFile_Data = DllStructCreate("struct;align 4;dword FileAttributes;uint64 CreationTime;uint64 LastAccessTime;uint64 LastWriteTime;" &  "dword FileSizeHigh;dword FileSizeLow;dword Reserved0;dword Reserved1;wchar FileName[260];wchar AlternateFileName[14];endstruct")
Local $hDLL = DllOpen('kernel32.dll'), $aDLL_Ret
EndIf
Local $asReturnList[100] = [0]
Local $asFileMatchList = $asReturnList, $asRootFileMatchList = $asReturnList, $asFolderMatchList = $asReturnList
Local $bFolder = False,  $hSearch = 0,  $sCurrentPath = "", $sName = "", $sRetPath = ""
Local $iAttribs = 0,  $sAttribs = ''
Local $asFolderFileSectionList[100][2] = [[0, 0]]
While $asFolderSearchList[0] > 0
$sCurrentPath = $asFolderSearchList[$asFolderSearchList[0]]
$asFolderSearchList[0] -= 1
Switch $iReturnPath
Case 1
$sRetPath = StringReplace($sCurrentPath, $sFilePath, "")
Case 2
If $bLongPath Then
$sRetPath = StringTrimLeft($sCurrentPath, 4)
Else
$sRetPath = $sCurrentPath
EndIf
EndSwitch
If $iHide_Link Then
$aDLL_Ret = DllCall($hDLL, 'handle', 'FindFirstFileW', 'wstr', $sCurrentPath & "*", 'struct*', $tFile_Data)
If @error Or Not $aDLL_Ret[0] Then
ContinueLoop
EndIf
$hSearch = $aDLL_Ret[0]
Else
$hSearch = FileFindFirstFile($sCurrentPath & "*")
If $hSearch = -1 Then
ContinueLoop
EndIf
EndIf
If $iReturn = 0 And $iSort And $iReturnPath Then
__FLTAR_AddToList($asFolderFileSectionList, $sRetPath, $asFileMatchList[0] + 1)
EndIf
$sAttribs = ''
While 1
If $iHide_Link Then
$aDLL_Ret = DllCall($hDLL, 'int', 'FindNextFileW', 'handle', $hSearch, 'struct*', $tFile_Data)
If @error Or Not $aDLL_Ret[0] Then
ExitLoop
EndIf
$sName = DllStructGetData($tFile_Data, "FileName")
If $sName = ".." Or $sName = "." Then
ContinueLoop
EndIf
$iAttribs = DllStructGetData($tFile_Data, "FileAttributes")
If $iHide_HS And BitAND($iAttribs, $iHide_HS) Then
ContinueLoop
EndIf
If BitAND($iAttribs, $iHide_Link) Then
ContinueLoop
EndIf
$bFolder = False
If BitAND($iAttribs, 16) Then
$bFolder = True
EndIf
Else
$bFolder = False
$sName = FileFindNextFile($hSearch, 1)
If @error Then
ExitLoop
EndIf
If $sName = ".." Or $sName = "." Then
ContinueLoop
EndIf
$sAttribs = @extended
If StringInStr($sAttribs, "D") Then
$bFolder = True
EndIf
If StringRegExp($sAttribs, "[" & $sHide_HS & "]") Then
ContinueLoop
EndIf
EndIf
If $bFolder Then
Select
Case $iRecur < 0
StringReplace($sCurrentPath, "\", "", 0, $STR_NOCASESENSEBASIC)
If @extended < $iMaxLevel Then
ContinueCase
EndIf
Case $iRecur = 1
If Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asFolderSearchList, $sCurrentPath & $sName & "\")
EndIf
EndSelect
EndIf
If $iSort Then
If $bFolder Then
If StringRegExp($sName, $sInclude_Folder_Mask) And Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asFolderMatchList, $sRetPath & $sName & $sFolderSlash)
EndIf
Else
If StringRegExp($sName, $sInclude_File_Mask) And Not StringRegExp($sName, $sExclude_File_Mask) Then
If $sCurrentPath = $sFilePath Then
__FLTAR_AddToList($asRootFileMatchList, $sRetPath & $sName)
Else
__FLTAR_AddToList($asFileMatchList, $sRetPath & $sName)
EndIf
EndIf
EndIf
Else
If $bFolder Then
If $iReturn <> 1 And StringRegExp($sName, $sInclude_Folder_Mask) And Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asReturnList, $sRetPath & $sName & $sFolderSlash)
EndIf
Else
If $iReturn <> 2 And StringRegExp($sName, $sInclude_File_Mask) And Not StringRegExp($sName, $sExclude_File_Mask) Then
__FLTAR_AddToList($asReturnList, $sRetPath & $sName)
EndIf
EndIf
EndIf
WEnd
If $iHide_Link Then
DllCall($hDLL, 'int', 'FindClose', 'ptr', $hSearch)
Else
FileClose($hSearch)
EndIf
WEnd
If $iHide_Link Then
DllClose($hDLL)
EndIf
If $iSort Then
Switch $iReturn
Case 2
If $asFolderMatchList[0] = 0 Then Return SetError(1, 9, "")
ReDim $asFolderMatchList[$asFolderMatchList[0] + 1]
$asReturnList = $asFolderMatchList
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Case 1
If $asRootFileMatchList[0] = 0 And $asFileMatchList[0] = 0 Then Return SetError(1, 9, "")
If $iReturnPath = 0 Then
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList)
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Else
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList, 1)
EndIf
Case 0
If $asRootFileMatchList[0] = 0 And $asFolderMatchList[0] = 0 Then Return SetError(1, 9, "")
If $iReturnPath = 0 Then
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList)
$asReturnList[0] += $asFolderMatchList[0]
ReDim $asFolderMatchList[$asFolderMatchList[0] + 1]
_ArrayConcatenate($asReturnList, $asFolderMatchList, 1)
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Else
Local $asReturnList[$asFileMatchList[0] + $asRootFileMatchList[0] + $asFolderMatchList[0] + 1]
$asReturnList[0] = $asFileMatchList[0] + $asRootFileMatchList[0] + $asFolderMatchList[0]
__ArrayDualPivotSort($asRootFileMatchList, 1, $asRootFileMatchList[0])
For $i = 1 To $asRootFileMatchList[0]
$asReturnList[$i] = $asRootFileMatchList[$i]
Next
Local $iNextInsertionIndex = $asRootFileMatchList[0] + 1
__ArrayDualPivotSort($asFolderMatchList, 1, $asFolderMatchList[0])
Local $sFolderToFind = ""
For $i = 1 To $asFolderMatchList[0]
$asReturnList[$iNextInsertionIndex] = $asFolderMatchList[$i]
$iNextInsertionIndex += 1
If $sFolderSlash Then
$sFolderToFind = $asFolderMatchList[$i]
Else
$sFolderToFind = $asFolderMatchList[$i] & "\"
EndIf
Local $iFileSectionEndIndex = 0, $iFileSectionStartIndex = 0
For $j = 1 To $asFolderFileSectionList[0][0]
If $sFolderToFind = $asFolderFileSectionList[$j][0] Then
$iFileSectionStartIndex = $asFolderFileSectionList[$j][1]
If $j = $asFolderFileSectionList[0][0] Then
$iFileSectionEndIndex = $asFileMatchList[0]
Else
$iFileSectionEndIndex = $asFolderFileSectionList[$j + 1][1] - 1
EndIf
If $iSort = 1 Then
__ArrayDualPivotSort($asFileMatchList, $iFileSectionStartIndex, $iFileSectionEndIndex)
EndIf
For $k = $iFileSectionStartIndex To $iFileSectionEndIndex
$asReturnList[$iNextInsertionIndex] = $asFileMatchList[$k]
$iNextInsertionIndex += 1
Next
ExitLoop
EndIf
Next
Next
EndIf
EndSwitch
Else
If $asReturnList[0] = 0 Then Return SetError(1, 9, "")
ReDim $asReturnList[$asReturnList[0] + 1]
EndIf
Return $asReturnList
EndFunc
Func __FLTAR_AddFileLists(ByRef $asTarget, $asSource_1, $asSource_2, $iSort = 0)
ReDim $asSource_1[$asSource_1[0] + 1]
If $iSort = 1 Then __ArrayDualPivotSort($asSource_1, 1, $asSource_1[0])
$asTarget = $asSource_1
$asTarget[0] += $asSource_2[0]
ReDim $asSource_2[$asSource_2[0] + 1]
If $iSort = 1 Then __ArrayDualPivotSort($asSource_2, 1, $asSource_2[0])
_ArrayConcatenate($asTarget, $asSource_2, 1)
EndFunc
Func __FLTAR_AddToList(ByRef $aList, $vValue_0, $vValue_1 = -1)
If $vValue_1 = -1 Then
$aList[0] += 1
If UBound($aList) <= $aList[0] Then ReDim $aList[UBound($aList) * 2]
$aList[$aList[0]] = $vValue_0
Else
$aList[0][0] += 1
If UBound($aList) <= $aList[0][0] Then ReDim $aList[UBound($aList) * 2][2]
$aList[$aList[0][0]][0] = $vValue_0
$aList[$aList[0][0]][1] = $vValue_1
EndIf
EndFunc
Func __FLTAR_ListToMask(ByRef $sMask, $sList)
If StringRegExp($sList, "\\|/|:|\<|\>|\|") Then Return 0
$sList = StringReplace(StringStripWS(StringRegExpReplace($sList, "\s*;\s*", ";"), BitOR($STR_STRIPLEADING, $STR_STRIPTRAILING)), ";", "|")
$sList = StringReplace(StringReplace(StringRegExpReplace($sList, "[][$^.{}()+\-]", "\\$0"), "?", "."), "*", ".*?")
$sMask = "(?i)^(" & $sList & ")\z"
Return 1
EndFunc
Func _FilePrint($sFilePath, $iShow = @SW_HIDE)
Return ShellExecute($sFilePath, "", @WorkingDir, "print", $iShow = Default ? @SW_HIDE : $iShow)
EndFunc
Func _FileReadToArray($sFilePath, ByRef $vReturn, $iFlags = $FRTA_COUNT, $sDelimiter = "")
$vReturn = 0
If $iFlags = Default Then $iFlags = $FRTA_COUNT
If $sDelimiter = Default Then $sDelimiter = ""
Local $bExpand = True
If BitAND($iFlags, $FRTA_INTARRAYS) Then
$bExpand = False
$iFlags -= $FRTA_INTARRAYS
EndIf
Local $iEntire = $STR_CHRSPLIT
If BitAND($iFlags, $FRTA_ENTIRESPLIT) Then
$iEntire = $STR_ENTIRESPLIT
$iFlags -= $FRTA_ENTIRESPLIT
EndIf
Local $iNoCount = 0
If $iFlags <> $FRTA_COUNT Then
$iFlags = $FRTA_NOCOUNT
$iNoCount = $STR_NOCOUNT
EndIf
If $sDelimiter Then
Local $aLines = FileReadToArray($sFilePath)
If @error Then Return SetError(@error, 0, 0)
Local $iDim_1 = UBound($aLines) + $iFlags
If $bExpand Then
Local $iDim_2 = UBound(StringSplit($aLines[0], $sDelimiter, $iEntire + $STR_NOCOUNT))
Local $aTemp_Array[$iDim_1][$iDim_2]
Local $iFields,  $aSplit
For $i = 0 To $iDim_1 - $iFlags - 1
$aSplit = StringSplit($aLines[$i], $sDelimiter, $iEntire + $STR_NOCOUNT)
$iFields = UBound($aSplit)
If $iFields <> $iDim_2 Then
Return SetError(3, 0, 0)
EndIf
For $j = 0 To $iFields - 1
$aTemp_Array[$i + $iFlags][$j] = $aSplit[$j]
Next
Next
If $iDim_2 < 2 Then Return SetError(4, 0, 0)
If $iFlags Then
$aTemp_Array[0][0] = $iDim_1 - $iFlags
$aTemp_Array[0][1] = $iDim_2
EndIf
Else
Local $aTemp_Array[$iDim_1]
For $i = 0 To $iDim_1 - $iFlags - 1
$aTemp_Array[$i + $iFlags] = StringSplit($aLines[$i], $sDelimiter, $iEntire + $iNoCount)
Next
If $iFlags Then
$aTemp_Array[0] = $iDim_1 - $iFlags
EndIf
EndIf
$vReturn = $aTemp_Array
Else
If $iFlags Then
Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $sFileRead = FileRead($hFileOpen)
FileClose($hFileOpen)
If StringLen($sFileRead) Then
$vReturn = StringRegExp(@LF & $sFileRead, "(?|(\N+)\z|(\N*)(?:\R))", $STR_REGEXPARRAYGLOBALMATCH)
$vReturn[0] = UBound($vReturn) - 1
Else
Return SetError(2, 0, 0)
EndIf
Else
$vReturn = FileReadToArray($sFilePath)
If @error Then
$vReturn = 0
Return SetError(@error, 0, 0)
EndIf
EndIf
EndIf
Return 1
EndFunc
Func _FileWriteFromArray($sFilePath, Const ByRef $aArray, $iBase = Default, $iUBound = Default, $sDelimiter = "|")
Local $iReturn = 0
If Not IsArray($aArray) Then Return SetError(2, 0, $iReturn)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS)
If $iDims > 2 Then Return SetError(4, 0, 0)
Local $iLast = UBound($aArray) - 1
If $iUBound = Default Or $iUBound > $iLast Then $iUBound = $iLast
If $iBase < 0 Or $iBase = Default Then $iBase = 0
If $iBase > $iUBound Then Return SetError(5, 0, $iReturn)
If $sDelimiter = Default Then $sDelimiter = "|"
Local $hFileOpen = $sFilePath
If IsString($sFilePath) Then
$hFileOpen = FileOpen($sFilePath, $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(1, 0, $iReturn)
EndIf
Local $iError = 0
$iReturn = 1
Switch $iDims
Case 1
For $i = $iBase To $iUBound
If Not FileWrite($hFileOpen, $aArray[$i] & @CRLF) Then
$iError = 3
$iReturn = 0
ExitLoop
EndIf
Next
Case 2
Local $sTemp = ""
For $i = $iBase To $iUBound
$sTemp = $aArray[$i][0]
For $j = 1 To UBound($aArray, $UBOUND_COLUMNS) - 1
$sTemp &= $sDelimiter & $aArray[$i][$j]
Next
If Not FileWrite($hFileOpen, $sTemp & @CRLF) Then
$iError = 3
$iReturn = 0
ExitLoop
EndIf
Next
EndSwitch
If IsString($sFilePath) Then FileClose($hFileOpen)
Return SetError($iError, 0, $iReturn)
EndFunc
Func _FileWriteLog($sLogPath, $sLogMsg, $iFlag = -1)
Local $iOpenMode = $FO_APPEND
Local $sMsg = @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & " : " & $sLogMsg
If $iFlag = Default Then $iFlag = -1
If $iFlag <> -1 Then
$iOpenMode = $FO_OVERWRITE
$sMsg &= @CRLF & FileRead($sLogPath)
EndIf
Local $hFileOpen = $sLogPath
If IsString($sLogPath) Then $hFileOpen = FileOpen($sLogPath, $iOpenMode)
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $iReturn = FileWriteLine($hFileOpen, $sMsg)
If IsString($sLogPath) Then $iReturn = FileClose($hFileOpen)
If $iFlag <> -1 And Not IsString($sLogPath) Then SetExtended(1)
If $iReturn = 0 Then Return SetError(2, 0, 0)
Return $iReturn
EndFunc
Func _FileWriteToLine($sFilePath, $iLine, $sText, $bOverWrite = False, $bFill = False)
If $bOverWrite = Default Then $bOverWrite = False
If $bFill = Default Then $bFill = False
If Not FileExists($sFilePath) Then Return SetError(2, 0, 0)
If $iLine <= 0 Then Return SetError(4, 0, 0)
If Not (IsBool($bOverWrite) Or $bOverWrite = 0 Or $bOverWrite = 1) Then Return SetError(5, 0, 0)
If Not IsString($sText) Then
$sText = String($sText)
If $sText = "" Then Return SetError(6, 0, 0)
EndIf
If Not IsBool($bFill) Then Return SetError(7, 0, 0)
Local $aArray = FileReadToArray($sFilePath)
If @error Then Local $aArray[0]
Local $iUBound = UBound($aArray) - 1
If $bFill Then
If $iUBound < $iLine Then
ReDim $aArray[$iLine]
$iUBound = $iLine - 1
EndIf
Else
If ($iUBound + 1) < $iLine Then Return SetError(1, 0, 0)
EndIf
$aArray[$iLine - 1] = ($bOverWrite ? $sText : $sText & @CRLF & $aArray[$iLine - 1])
Local $sData = ""
For $i = 0 To $iUBound
$sData &= $aArray[$i] & @CRLF
Next
$sData = StringTrimRight($sData, StringLen(@CRLF))
Local $hFileOpen = FileOpen($sFilePath, FileGetEncoding($sFilePath) + $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(3, 0, 0)
FileWrite($hFileOpen, $sData)
FileClose($hFileOpen)
Return 1
EndFunc
Func _PathFull($sRelativePath, $sBasePath = @WorkingDir)
If Not $sRelativePath Or $sRelativePath = "." Then Return $sBasePath
Local $sFullPath = StringReplace($sRelativePath, "/", "\")
Local Const $sFullPathConst = $sFullPath
Local $sPath
Local $bRootOnly = StringLeft($sFullPath, 1) = "\" And StringMid($sFullPath, 2, 1) <> "\"
If $sBasePath = Default Then $sBasePath = @WorkingDir
For $i = 1 To 2
$sPath = StringLeft($sFullPath, 2)
If $sPath = "\\" Then
$sFullPath = StringTrimLeft($sFullPath, 2)
Local $nServerLen = StringInStr($sFullPath, "\") - 1
$sPath = "\\" & StringLeft($sFullPath, $nServerLen)
$sFullPath = StringTrimLeft($sFullPath, $nServerLen)
ExitLoop
ElseIf StringRight($sPath, 1) = ":" Then
$sFullPath = StringTrimLeft($sFullPath, 2)
ExitLoop
Else
$sFullPath = $sBasePath & "\" & $sFullPath
EndIf
Next
If StringLeft($sFullPath, 1) <> "\" Then
If StringLeft($sFullPathConst, 2) = StringLeft($sBasePath, 2) Then
$sFullPath = $sBasePath & "\" & $sFullPath
Else
$sFullPath = "\" & $sFullPath
EndIf
EndIf
Local $aTemp = StringSplit($sFullPath, "\")
Local $aPathParts[$aTemp[0]], $j = 0
For $i = 2 To $aTemp[0]
If $aTemp[$i] = ".." Then
If $j Then $j -= 1
ElseIf Not ($aTemp[$i] = "" And $i <> $aTemp[0]) And $aTemp[$i] <> "." Then
$aPathParts[$j] = $aTemp[$i]
$j += 1
EndIf
Next
$sFullPath = $sPath
If Not $bRootOnly Then
For $i = 0 To $j - 1
$sFullPath &= "\" & $aPathParts[$i]
Next
Else
$sFullPath &= $sFullPathConst
If StringInStr($sFullPath, "..") Then $sFullPath = _PathFull($sFullPath)
EndIf
Do
$sFullPath = StringReplace($sFullPath, ".\", "\")
Until @extended = 0
Return $sFullPath
EndFunc
Func _PathGetRelative($sFrom, $sTo)
If StringRight($sFrom, 1) <> "\" Then $sFrom &= "\"
If StringRight($sTo, 1) <> "\" Then $sTo &= "\"
If $sFrom = $sTo Then Return SetError(1, 0, StringTrimRight($sTo, 1))
Local $asFrom = StringSplit($sFrom, "\")
Local $asTo = StringSplit($sTo, "\")
If $asFrom[1] <> $asTo[1] Then Return SetError(2, 0, StringTrimRight($sTo, 1))
Local $i = 2
Local $iDiff = 1
While 1
If $asFrom[$i] <> $asTo[$i] Then
$iDiff = $i
ExitLoop
EndIf
$i += 1
WEnd
$i = 1
Local $sRelPath = ""
For $j = 1 To $asTo[0]
If $i >= $iDiff Then
$sRelPath &= "\" & $asTo[$i]
EndIf
$i += 1
Next
$sRelPath = StringTrimLeft($sRelPath, 1)
$i = 1
For $j = 1 To $asFrom[0]
If $i > $iDiff Then
$sRelPath = "..\" & $sRelPath
EndIf
$i += 1
Next
If StringRight($sRelPath, 1) == "\" Then $sRelPath = StringTrimRight($sRelPath, 1)
Return $sRelPath
EndFunc
Func _PathMake($sDrive, $sDir, $sFileName, $sExtension)
If StringLen($sDrive) Then
If Not (StringLeft($sDrive, 2) = "\\") Then $sDrive = StringLeft($sDrive, 1) & ":"
EndIf
If StringLen($sDir) Then
If Not (StringRight($sDir, 1) = "\") And Not (StringRight($sDir, 1) = "/") Then $sDir = $sDir & "\"
Else
$sDir = "\"
EndIf
If StringLen($sDir) Then
If Not (StringLeft($sDir, 1) = "\") And Not (StringLeft($sDir, 1) = "/") Then $sDir = "\" & $sDir
EndIf
If StringLen($sExtension) Then
If Not (StringLeft($sExtension, 1) = ".") Then $sExtension = "." & $sExtension
EndIf
Return $sDrive & $sDir & $sFileName & $sExtension
EndFunc
Func _PathSplit($sFilePath, ByRef $sDrive, ByRef $sDir, ByRef $sFileName, ByRef $sExtension)
Local $aArray = StringRegExp($sFilePath, "^\h*((?:\\\\\?\\)*(\\\\[^\?\/\\]+|[A-Za-z]:)?(.*[\/\\]\h*)?((?:[^\.\/\\]|(?(?=\.[^\/\\]*\.)\.))*)?([^\/\\]*))$", $STR_REGEXPARRAYMATCH)
If @error Then
ReDim $aArray[5]
$aArray[$PATH_ORIGINAL] = $sFilePath
EndIf
$sDrive = $aArray[$PATH_DRIVE]
If StringLeft($aArray[$PATH_DIRECTORY], 1) == "/" Then
$sDir = StringRegExpReplace($aArray[$PATH_DIRECTORY], "\h*[\/\\]+\h*", "\/")
Else
$sDir = StringRegExpReplace($aArray[$PATH_DIRECTORY], "\h*[\/\\]+\h*", "\\")
EndIf
$aArray[$PATH_DIRECTORY] = $sDir
$sFileName = $aArray[$PATH_FILENAME]
$sExtension = $aArray[$PATH_EXTENSION]
Return $aArray
EndFunc
Func _ReplaceStringInFile($sFilePath, $sSearchString, $sReplaceString, $iCaseSensitive = 0, $iOccurance = 1)
If StringInStr(FileGetAttrib($sFilePath), "R") Then Return SetError(1, 0, -1)
Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
If $hFileOpen = -1 Then Return SetError(2, 0, -1)
Local $sFileRead = FileRead($hFileOpen)
FileClose($hFileOpen)
If $iCaseSensitive = Default Then $iCaseSensitive = 0
If $iOccurance = Default Then $iOccurance = 1
$sFileRead = StringReplace($sFileRead, $sSearchString, $sReplaceString, 1 - $iOccurance, $iCaseSensitive)
Local $iReturn = @extended
If $iReturn Then
Local $iFileEncoding = FileGetEncoding($sFilePath)
$hFileOpen = FileOpen($sFilePath, $iFileEncoding + $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(3, 0, -1)
FileWrite($hFileOpen, $sFileRead)
FileClose($hFileOpen)
EndIf
Return $iReturn
EndFunc
Func _TempFile($sDirectoryName = @TempDir, $sFilePrefix = "~", $sFileExtension = ".tmp", $iRandomLength = 7)
If $iRandomLength = Default Or $iRandomLength <= 0 Then $iRandomLength = 7
If $sDirectoryName = Default Or (Not FileExists($sDirectoryName)) Then $sDirectoryName = @TempDir
If $sFileExtension = Default Then $sFileExtension = ".tmp"
If $sFilePrefix = Default Then $sFilePrefix = "~"
If Not FileExists($sDirectoryName) Then $sDirectoryName = @ScriptDir
$sDirectoryName = StringRegExpReplace($sDirectoryName, "[\\/]+$", "")
$sFileExtension = StringRegExpReplace($sFileExtension, "^\.+", "")
$sFilePrefix = StringRegExpReplace($sFilePrefix, '[\\/:*?"<>|]', "")
Local $sTempName = ""
Do
$sTempName = ""
While StringLen($sTempName) < $iRandomLength
$sTempName &= Chr(Random(97, 122, 1))
WEnd
$sTempName = $sDirectoryName & "\" & $sFilePrefix & $sTempName & "." & $sFileExtension
Until Not FileExists($sTempName)
Return $sTempName
EndFunc
Global Const $FW_DONTCARE = 0
Global Const $FW_THIN = 100
Global Const $FW_EXTRALIGHT = 200
Global Const $FW_ULTRALIGHT = 200
Global Const $FW_LIGHT = 300
Global Const $FW_NORMAL = 400
Global Const $FW_REGULAR = 400
Global Const $FW_MEDIUM = 500
Global Const $FW_SEMIBOLD = 600
Global Const $FW_DEMIBOLD = 600
Global Const $FW_BOLD = 700
Global Const $FW_EXTRABOLD = 800
Global Const $FW_ULTRABOLD = 800
Global Const $FW_HEAVY = 900
Global Const $FW_BLACK = 900
Global Const $CF_EFFECTS = 0x100
Global Const $CF_PRINTERFONTS = 0x2
Global Const $CF_SCREENFONTS = 0x1
Global Const $CF_NOSCRIPTSEL = 0x800000
Global Const $CF_INITTOLOGFONTSTRUCT = 0x40
Global Const $LOGPIXELSX = 88
Global Const $LOGPIXELSY = 90
Global Const $ANSI_CHARSET = 0
Global Const $ARABIC_CHARSET = 178
Global Const $BALTIC_CHARSET = 186
Global Const $CHINESEBIG5_CHARSET = 136
Global Const $DEFAULT_CHARSET = 1
Global Const $EASTEUROPE_CHARSET = 238
Global Const $GB2312_CHARSET = 134
Global Const $GREEK_CHARSET = 161
Global Const $HANGEUL_CHARSET = 129
Global Const $HEBREW_CHARSET = 177
Global Const $JOHAB_CHARSET = 130
Global Const $MAC_CHARSET = 77
Global Const $OEM_CHARSET = 255
Global Const $RUSSIAN_CHARSET = 204
Global Const $SHIFTJIS_CHARSET = 128
Global Const $SYMBOL_CHARSET = 2
Global Const $THAI_CHARSET = 222
Global Const $TURKISH_CHARSET = 162
Global Const $VIETNAMESE_CHARSET = 163
Global Const $OUT_CHARACTER_PRECIS = 2
Global Const $OUT_DEFAULT_PRECIS = 0
Global Const $OUT_DEVICE_PRECIS = 5
Global Const $OUT_OUTLINE_PRECIS = 8
Global Const $OUT_PS_ONLY_PRECIS = 10
Global Const $OUT_RASTER_PRECIS = 6
Global Const $OUT_STRING_PRECIS = 1
Global Const $OUT_STROKE_PRECIS = 3
Global Const $OUT_TT_ONLY_PRECIS = 7
Global Const $OUT_TT_PRECIS = 4
Global Const $CLIP_CHARACTER_PRECIS = 1
Global Const $CLIP_DEFAULT_PRECIS = 0
Global Const $CLIP_DFA_DISABLE = 0x0030
Global Const $CLIP_EMBEDDED = 128
Global Const $CLIP_LH_ANGLES = 16
Global Const $CLIP_MASK = 0xF
Global Const $CLIP_DFA_OVERRIDE = 0x0040
Global Const $CLIP_STROKE_PRECIS = 2
Global Const $CLIP_TT_ALWAYS = 32
Global Const $ANTIALIASED_QUALITY = 4
Global Const $DEFAULT_QUALITY = 0
Global Const $DRAFT_QUALITY = 1
Global Const $NONANTIALIASED_QUALITY = 3
Global Const $PROOF_QUALITY = 2
Global Const $CLEARTYPE_QUALITY = 5
Global Const $DEFAULT_PITCH = 0
Global Const $FIXED_PITCH = 1
Global Const $VARIABLE_PITCH = 2
Global Const $FF_DECORATIVE = 80
Global Const $FF_DONTCARE = 0
Global Const $FF_MODERN = 48
Global Const $FF_ROMAN = 16
Global Const $FF_SCRIPT = 64
Global Const $FF_SWISS = 32
Global Const $FS_REGULAR = 0x00
Global Const $FS_BOLD = 0x01
Global Const $FS_ITALIC = 0x02
Global Const $tagPOINT = "struct;long X;long Y;endstruct"
Global Const $tagRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $tagSIZE = "struct;long X;long Y;endstruct"
Global Const $tagMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagFILETIME = "struct;dword Lo;dword Hi;endstruct"
Global Const $tagSYSTEMTIME = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $tagTIME_ZONE_INFORMATION = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $tagCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" &  "int Indent;lparam Param"
Global Const $tagNMCBEDRAGBEGIN = $tagNMHDR & ";int ItemID;wchar szText[260]"
Global Const $tagNMCBEENDEDIT = $tagNMHDR & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $tagNMCOMBOBOXEX = $tagNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" &  "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" &  "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" &  "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagNMDATETIMECHANGE = $tagNMHDR & ";dword Flag;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMEFORMAT = $tagNMHDR & ";ptr Format;" & $tagSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $tagNMDATETIMEFORMATQUERY = $tagNMHDR & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $tagNMDATETIMEKEYDOWN = $tagNMHDR & ";int VirtKey;ptr Format;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMESTRING = $tagNMHDR & ";ptr UserString;" & $tagSYSTEMTIME & ";dword Flags"
Global Const $tagEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" &  "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" &  "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $tagGDIP_EFFECTPARAMS_Blur = "float Radius; bool ExpandEdge"
Global Const $tagGDIP_EFFECTPARAMS_BrightnessContrast = "int BrightnessLevel; int ContrastLevel"
Global Const $tagGDIP_EFFECTPARAMS_ColorBalance = "int CyanRed; int MagentaGreen; int YellowBlue"
Global Const $tagGDIP_EFFECTPARAMS_ColorCurve = "int Adjustment; int Channel; int AdjustValue"
Global Const $tagGDIP_EFFECTPARAMS_ColorLUT = "byte LutB[256]; byte LutG[256]; byte LutR[256]; byte LutA[256]"
Global Const $tagGDIP_EFFECTPARAMS_HueSaturationLightness = "int HueLevel; int SaturationLevel; int LightnessLevel"
Global Const $tagGDIP_EFFECTPARAMS_Levels = "int Highlight; int Midtone; int Shadow"
Global Const $tagGDIP_EFFECTPARAMS_RedEyeCorrection = "uint NumberOfAreas; ptr Areas"
Global Const $tagGDIP_EFFECTPARAMS_Sharpen = "float Radius; float Amount"
Global Const $tagGDIP_EFFECTPARAMS_Tint = "int Hue; int Amount"
Global Const $tagGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $tagGDIPCOLORMATRIX = "float m[25]"
Global Const $tagGDIPENCODERPARAM = "struct;byte GUID[16];ulong NumberOfValues;ulong Type;ptr Values;endstruct"
Global Const $tagGDIPENCODERPARAMS = "uint Count;" & $tagGDIPENCODERPARAM
Global Const $tagGDIPRECTF = "struct;float X;float Y;float Width;float Height;endstruct"
Global Const $tagGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $tagGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $tagGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" &  "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $tagGDIPPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $tagHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagNMHDDISPINFO = $tagNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagNMHDFILTERBTNCLICK = $tagNMHDR & ";int Item;" & $tagRECT
Global Const $tagNMHEADER = $tagNMHDR & ";int Item;int Button;ptr pItem"
Global Const $tagGETIPAddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagNMIPADDRESS = $tagNMHDR & ";int Field;int Value"
Global Const $tagLVFINDINFO = "struct;uint Flags;ptr Text;lparam Param;" & $tagPOINT & ";uint Direction;endstruct"
Global Const $tagLVHITTESTINFO = $tagPOINT & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $tagNMLISTVIEW = $tagNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" &  "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $tagNMLVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword dwDrawStage;handle hdc;" & $tagRECT &  ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" &  ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" &  "int iIconPhase;int iPartID;int iStateID;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $tagNMLVDISPINFO = $tagNMHDR & ";" & $tagLVITEM
Global Const $tagNMLVFINDITEM = $tagNMHDR & ";int Start;" & $tagLVFINDINFO
Global Const $tagNMLVGETINFOTIP = $tagNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagNMITEMACTIVATE = $tagNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" &  $tagPOINT & ";lparam lParam;uint KeyFlags"
Global Const $tagNMLVKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagNMLVSCROLL = $tagNMHDR & ";int DX;int DY"
Global Const $tagMCHITTESTINFO = "uint Size;" & $tagPOINT & ";uint Hit;" & $tagSYSTEMTIME &  ";" & $tagRECT & ";int iOffset;int iRow;int iCol"
Global Const $tagMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short Span"
Global Const $tagMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds"
Global Const $tagNMDAYSTATE = $tagNMHDR & ";" & $tagSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $tagNMSELCHANGE = $tagNMHDR &  ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" &  "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $tagNMOBJECTNOTIFY = $tagNMHDR & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $tagNMTCKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagTVITEM = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" &  "int Children;lparam Param;endstruct"
Global Const $tagTVITEMEX = "struct;" & $tagTVITEM & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $tagNMTREEVIEW = $tagNMHDR & ";uint Action;" &  "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" &  "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" &  "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" &  "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" &  "struct;long PointX;long PointY;endstruct"
Global Const $tagNMTVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword DrawStage;handle HDC;" & $tagRECT &  ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" &  ";dword ClrText;dword ClrTextBk;int Level"
Global Const $tagNMTVDISPINFO = $tagNMHDR & ";" & $tagTVITEM
Global Const $tagNMTVGETINFOTIP = $tagNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagNMTVITEMCHANGE = $tagNMHDR & ";uint Changed;handle hItem;uint StateNew;uint StateOld;lparam lParam;"
Global Const $tagTVHITTESTINFO = $tagPOINT & ";uint Flags;handle Item"
Global Const $tagNMTVKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagNMMOUSE = $tagNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagPOINT & ";lparam HitInfo"
Global Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $tagIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagRECT
Global Const $tagMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" &  "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" &  "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" &  "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ((@OSVersion = "WIN_XP") ? "" : ";" & $tagRECT & ";uint uChevronState")
Global Const $tagNMREBARAUTOBREAK = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagNMRBAUTOSIZE = $tagNMHDR & ";bool fChanged;" &  "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" &  "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $tagNMREBAR = $tagNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $tagNMREBARCHEVRON = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;" & $tagRECT & ";lparam lParamNM"
Global Const $tagNMREBARCHILDSIZE = $tagNMHDR & ";uint uBand;uint wID;" &  "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" &  "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $tagCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagNMTOOLBAR = $tagNMHDR & ";int iItem;" &  "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" &  ";int cchText;ptr pszText;" & $tagRECT
Global Const $tagNMTBHOTITEM = $tagNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $tagTBBUTTON = "int Bitmap;int Command;byte State;byte Style;dword_ptr Param;int_ptr String"
Global Const $tagTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $tagOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" &  "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" &  "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" &  "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagBITMAPINFOHEADER = "struct;dword biSize;long biWidth;long biHeight;word biPlanes;word biBitCount;" &  "dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;endstruct"
Global Const $tagBITMAPINFO = $tagBITMAPINFOHEADER & ";dword biRGBQuad[1]"
Global Const $tagBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagGUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Global Const $tagWINDOWPLACEMENT = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagSCROLLINFO = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $tagSCROLLBARINFO = "dword cbSize;" & $tagRECT & ";int dxyLineButton;int xyThumbTop;" &  "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $tagLOGFONT = "struct;long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" &  "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32];endstruct"
Global Const $tagKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" &  "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" &  "handle StdOutput;handle StdError"
Global Const $tagSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagWIN32_FIND_DATA = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $tagTEXTMETRIC = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" &  "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" &  "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" &  "byte tmPitchAndFamily;byte tmCharSet"
Global Const $__MISCCONSTANT_CC_ANYCOLOR = 0x0100
Global Const $__MISCCONSTANT_CC_FULLOPEN = 0x0002
Global Const $__MISCCONSTANT_CC_RGBINIT = 0x0001
Global Const $tagCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" &  "ptr lpfnHook;ptr lpTemplateName"
Global Const $tagCHOOSEFONT = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" &  "ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"
Func _ChooseColor($vReturnType = 0, $iColorRef = 0, $iRefType = 0, $hWndOwnder = 0)
Local $tagCustcolors = "dword[16]"
Local $tChoose = DllStructCreate($tagCHOOSECOLOR)
Local Static $tCc = DllStructCreate($tagCustcolors)
Local $iReturnType, $vReturn
If $vReturnType = -9 Or $vReturnType = -10 Then
Local $a_tCc = __ChooseColor_StructToArray($tCc)
$a_tCc[0] = -1
If $vReturnType = -10 Then $tCc = DllStructCreate($tagCustcolors)
Return $a_tCc
ElseIf $vReturnType > 9 Then
$tCc = DllStructCreate($tagCustcolors)
$iReturnType = $vReturnType - 10
ElseIf IsArray($vReturnType) Then
If UBound($vReturnType, $UBOUND_ROWS) = 17 And UBound($vReturnType, $UBOUND_DIMENSIONS) = 1 Then
For $n = 1 To 16
DllStructSetData($tCc, 1, $vReturnType[$n], $n)
Next
If $vReturnType[0] = -9 Then
$vReturnType[0] = 0
Return $vReturnType
EndIf
If $vReturnType[0] > 9 Then $vReturnType[0] -= 10
$iReturnType = $vReturnType[0]
Else
Return SetError(-5, 0, -1)
EndIf
Else
$iReturnType = $vReturnType
EndIf
If $iReturnType < 0 Or $iReturnType > 2 Then
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError(-4, 0, $vReturnType)
EndIf
Return SetError(-4, 0, -1)
EndIf
If $iRefType = 1 Then
$iColorRef = Int($iColorRef)
ElseIf $iRefType = 2 Then
$iColorRef = Hex(String($iColorRef), 6)
$iColorRef = '0x' & StringMid($iColorRef, 5, 2) & StringMid($iColorRef, 3, 2) & StringMid($iColorRef, 1, 2)
EndIf
DllStructSetData($tChoose, "Size", DllStructGetSize($tChoose))
DllStructSetData($tChoose, "hWndOwnder", $hWndOwnder)
DllStructSetData($tChoose, "rgbResult", $iColorRef)
DllStructSetData($tChoose, "CustColors", DllStructGetPtr($tCc))
DllStructSetData($tChoose, "Flags", BitOR($__MISCCONSTANT_CC_ANYCOLOR, $__MISCCONSTANT_CC_FULLOPEN, $__MISCCONSTANT_CC_RGBINIT))
Local $aResult = DllCall("comdlg32.dll", "bool", "ChooseColor", "struct*", $tChoose)
Local $iError = @error
If @error Then
Local $iExtended = @extended
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError($iError, $iExtended, $vReturnType)
EndIf
Return SetError($iError, $iExtended, -1)
EndIf
If $aResult[0] = 0 Then
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError(-3, 0, $vReturnType)
EndIf
Return SetError(-3, 0, -1)
EndIf
Local $sColor_picked = DllStructGetData($tChoose, "rgbResult")
If $iReturnType = 1 Then
$vReturn = '0x' & Hex(String($sColor_picked), 6)
ElseIf $iReturnType = 2 Then
$sColor_picked = Hex(String($sColor_picked), 6)
$vReturn = '0x' & StringMid($sColor_picked, 5, 2) & StringMid($sColor_picked, 3, 2) & StringMid($sColor_picked, 1, 2)
Else
$vReturn = $sColor_picked
EndIf
If IsArray($vReturnType) Then
$vReturnType = __ChooseColor_StructToArray($tCc)
$vReturnType[0] = $vReturn
Return $vReturnType
EndIf
Return $vReturn
EndFunc
Func __ChooseColor_StructToArray(ByRef $tStruct)
Local $aArray[17]
For $n = 1 To 16
$aArray[$n] = DllStructGetData($tStruct, 1, $n)
Next
Return $aArray
EndFunc
Func _ChooseFont($sFontName = "Courier New", $iPointSize = 10, $iFontColorRef = 0, $iFontWeight = 0, $bItalic = False, $bUnderline = False, $bStrikethru = False, $hWndOwner = 0)
Local $iItalic = 0, $iUnderline = 0, $iStrikeout = 0
$iFontColorRef = BitOR(BitShift(BitAND($iFontColorRef, 0x000000FF), -16), BitAND($iFontColorRef, 0x0000FF00), BitShift(BitAND($iFontColorRef, 0x00FF0000), 16))
Local $hDC = __MISC_GetDC(0)
Local $iHeight = Round(($iPointSize * __MISC_GetDeviceCaps($hDC, $LOGPIXELSX)) / 72, 0)
__MISC_ReleaseDC(0, $hDC)
Local $tChooseFont = DllStructCreate($tagCHOOSEFONT)
Local $tLogFont = DllStructCreate($tagLOGFONT)
DllStructSetData($tChooseFont, "Size", DllStructGetSize($tChooseFont))
DllStructSetData($tChooseFont, "hWndOwner", $hWndOwner)
DllStructSetData($tChooseFont, "LogFont", DllStructGetPtr($tLogFont))
DllStructSetData($tChooseFont, "PointSize", $iPointSize)
DllStructSetData($tChooseFont, "Flags", BitOR($CF_SCREENFONTS, $CF_PRINTERFONTS, $CF_EFFECTS, $CF_INITTOLOGFONTSTRUCT, $CF_NOSCRIPTSEL))
DllStructSetData($tChooseFont, "rgbColors", $iFontColorRef)
DllStructSetData($tChooseFont, "FontType", 0)
DllStructSetData($tLogFont, "Height", $iHeight)
DllStructSetData($tLogFont, "Weight", $iFontWeight)
DllStructSetData($tLogFont, "Italic", $bItalic)
DllStructSetData($tLogFont, "Underline", $bUnderline)
DllStructSetData($tLogFont, "Strikeout", $bStrikethru)
DllStructSetData($tLogFont, "FaceName", $sFontName)
Local $aCall = DllCall("comdlg32.dll", "bool", "ChooseFontW", "struct*", $tChooseFont)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] = 0 Then Return SetError(-3, -3, -1)
Local $sFaceName = DllStructGetData($tLogFont, "FaceName")
If StringLen($sFaceName) = 0 And StringLen($sFontName) > 0 Then $sFaceName = $sFontName
If DllStructGetData($tLogFont, "Italic") Then $iItalic = 2
If DllStructGetData($tLogFont, "Underline") Then $iUnderline = 4
If DllStructGetData($tLogFont, "Strikeout") Then $iStrikeout = 8
Local $iAttributes = BitOR($iItalic, $iUnderline, $iStrikeout)
Local $iSize = DllStructGetData($tChooseFont, "PointSize") / 10
Local $iColorRef = DllStructGetData($tChooseFont, "rgbColors")
Local $iWeight = DllStructGetData($tLogFont, "Weight")
Local $sColor_picked = Hex(String($iColorRef), 6)
Return StringSplit($iAttributes & "," & $sFaceName & "," & $iSize & "," & $iWeight & "," & $iColorRef & "," & '0x' & $sColor_picked & "," & '0x' & StringMid($sColor_picked, 5, 2) & StringMid($sColor_picked, 3, 2) & StringMid($sColor_picked, 1, 2), ",")
EndFunc
Func _ClipPutFile($sFilePath, $sDelimiter = "|")
Local Const $GMEM_MOVEABLE = 0x0002, $CF_HDROP = 15
$sFilePath &= $sDelimiter & $sDelimiter
Local $nGlobMemSize = 2 * (StringLen($sFilePath) + 20)
Local $aCall = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, _WinAPI_GetLastError(), False)
Local $iError = 0, $iLastError = 0
$aCall = DllCall("user32.dll", "bool", "EmptyClipboard")
If @error Or Not $aCall[0] Then
$iError = @error + 20
$iLastError = _WinAPI_GetLastError()
Else
$aCall = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $GMEM_MOVEABLE, "ulong_ptr", $nGlobMemSize)
If @error Or Not $aCall[0] Then
$iError = @error + 30
$iLastError = _WinAPI_GetLastError()
Else
Local $hGlobal = $aCall[0]
$aCall = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hGlobal)
If @error Or Not $aCall[0] Then
$iError = @error + 40
$iLastError = _WinAPI_GetLastError()
Else
Local $hLock = $aCall[0]
Local $tDROPFILES = DllStructCreate("dword pFiles;" & $tagPOINT & ";bool fNC;bool fWide;wchar[" & StringLen($sFilePath) + 1 & "]", $hLock)
If @error Then Return SetError(@error + 50, 6, False)
Local $tStruct = DllStructCreate("dword;long;long;bool;bool")
DllStructSetData($tDROPFILES, "pFiles", DllStructGetSize($tStruct))
DllStructSetData($tDROPFILES, "X", 0)
DllStructSetData($tDROPFILES, "Y", 0)
DllStructSetData($tDROPFILES, "fNC", 0)
DllStructSetData($tDROPFILES, "fWide", 1)
DllStructSetData($tDROPFILES, 6, $sFilePath)
For $i = 1 To StringLen($sFilePath)
If DllStructGetData($tDROPFILES, 6, $i) = $sDelimiter Then DllStructSetData($tDROPFILES, 6, Chr(0), $i)
Next
$aCall = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $CF_HDROP, "handle", $hGlobal)
If @error Or Not $aCall[0] Then
$iError = @error + 60
$iLastError = _WinAPI_GetLastError()
EndIf
$aCall = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hGlobal)
If (@error Or Not $aCall[0]) And Not $iError And _WinAPI_GetLastError() Then
$iError = @error + 80
$iLastError = _WinAPI_GetLastError()
EndIf
EndIf
$aCall = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hGlobal)
If (@error Or $aCall[0]) And Not $iError Then
$iError = @error + 90
$iLastError = _WinAPI_GetLastError()
EndIf
EndIf
EndIf
$aCall = DllCall("user32.dll", "bool", "CloseClipboard")
If (@error Or Not $aCall[0]) And Not $iError Then Return SetError(@error + 70, _WinAPI_GetLastError(), False)
If $iError Then Return SetError($iError, $iLastError, False)
Return True
EndFunc
Func _MouseTrap($iLeft = 0, $iTop = 0, $iRight = 0, $iBottom = 0)
Local $aCall
If $iLeft = Default Then $iLeft = 0
If $iTop = Default Then $iTop = 0
If $iRight = Default Then $iRight = 0
If $iBottom = Default Then $iBottom = 0
If @NumParams = 0 Then
$aCall = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(1, _WinAPI_GetLastError(), False)
Else
If @NumParams = 2 Then
$iRight = $iLeft + 1
$iBottom = $iTop + 1
EndIf
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, "Left", $iLeft)
DllStructSetData($tRECT, "Top", $iTop)
DllStructSetData($tRECT, "Right", $iRight)
DllStructSetData($tRECT, "Bottom", $iBottom)
$aCall = DllCall("user32.dll", "bool", "ClipCursor", "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(2, _WinAPI_GetLastError(), False)
EndIf
Return True
EndFunc
Func _Singleton($sOccurrenceName, $iFlag = 0)
Local Const $ERROR_ALREADY_EXISTS = 183
Local Const $SECURITY_DESCRIPTOR_REVISION = 1
Local $tSecurityAttributes = 0
If BitAND($iFlag, 2) Then
Local $tSecurityDescriptor = DllStructCreate("byte;byte;word;ptr[4]")
Local $aCall = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor",  "struct*", $tSecurityDescriptor, "dword", $SECURITY_DESCRIPTOR_REVISION)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then
$aCall = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl",  "struct*", $tSecurityDescriptor, "bool", 1, "ptr", 0, "bool", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then
$tSecurityAttributes = DllStructCreate($tagSECURITY_ATTRIBUTES)
DllStructSetData($tSecurityAttributes, 1, DllStructGetSize($tSecurityAttributes))
DllStructSetData($tSecurityAttributes, 2, DllStructGetPtr($tSecurityDescriptor))
DllStructSetData($tSecurityAttributes, 3, 0)
EndIf
EndIf
EndIf
Local $aHandle = DllCall("kernel32.dll", "handle", "CreateMutexW", "struct*", $tSecurityAttributes, "bool", 1, "wstr", $sOccurrenceName)
If @error Then Return SetError(@error, @extended, 0)
Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
If @error Then Return SetError(@error, @extended, 0)
If $aLastError[0] = $ERROR_ALREADY_EXISTS Then
If BitAND($iFlag, 1) Then
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $aHandle[0])
If @error Then Return SetError(@error, @extended, 0)
Return SetError($aLastError[0], $aLastError[0], 0)
Else
Exit -1
EndIf
EndIf
Return $aHandle[0]
EndFunc
Func _IsPressed($sHexKey, $vDLL = "user32.dll")
Local $aCall = DllCall($vDLL, "short", "GetAsyncKeyState", "int", "0x" & $sHexKey)
If @error Then Return SetError(@error, @extended, False)
Return BitAND($aCall[0], 0x8000) <> 0
EndFunc
Func _VersionCompare($sVersion1, $sVersion2)
If $sVersion1 = $sVersion2 Then Return 0
Local $sSubVersion1 = "", $sSubVersion2 = ""
If StringIsAlpha(StringRight($sVersion1, 1)) Then
$sSubVersion1 = StringRight($sVersion1, 1)
$sVersion1 = StringTrimRight($sVersion1, 1)
EndIf
If StringIsAlpha(StringRight($sVersion2, 1)) Then
$sSubVersion2 = StringRight($sVersion2, 1)
$sVersion2 = StringTrimRight($sVersion2, 1)
EndIf
Local $aVersion1 = StringSplit($sVersion1, ".,"),  $aVersion2 = StringSplit($sVersion2, ".,")
Local $iPartDifference = ($aVersion1[0] - $aVersion2[0])
If $iPartDifference < 0 Then
ReDim $aVersion1[UBound($aVersion2)]
$aVersion1[0] = UBound($aVersion1) - 1
For $i = (UBound($aVersion1) - Abs($iPartDifference)) To $aVersion1[0]
$aVersion1[$i] = "0"
Next
ElseIf $iPartDifference > 0 Then
ReDim $aVersion2[UBound($aVersion1)]
$aVersion2[0] = UBound($aVersion2) - 1
For $i = (UBound($aVersion2) - Abs($iPartDifference)) To $aVersion2[0]
$aVersion2[$i] = "0"
Next
EndIf
For $i = 1 To $aVersion1[0]
If StringIsDigit($aVersion1[$i]) And StringIsDigit($aVersion2[$i]) Then
If Number($aVersion1[$i]) > Number($aVersion2[$i]) Then
Return SetExtended(2, 1)
ElseIf Number($aVersion1[$i]) < Number($aVersion2[$i]) Then
Return SetExtended(2, -1)
ElseIf $i = $aVersion1[0] Then
If $sSubVersion1 > $sSubVersion2 Then
Return SetExtended(3, 1)
ElseIf $sSubVersion1 < $sSubVersion2 Then
Return SetExtended(3, -1)
EndIf
EndIf
Else
If $aVersion1[$i] > $aVersion2[$i] Then
Return SetExtended(1, 1)
ElseIf $aVersion1[$i] < $aVersion2[$i] Then
Return SetExtended(1, -1)
EndIf
EndIf
Next
Return SetExtended(Abs($iPartDifference), 0)
EndFunc
Func __MISC_GetDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hWnd)
If @error Or Not $aCall[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func __MISC_GetDeviceCaps($hDC, $iIndex)
Local $aCall = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hDC, "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __MISC_ReleaseDC($hWnd, $hDC)
Local $aCall = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0] <> 0
EndFunc
Global Const $URL_SCHEME_INVALID = -1
Global Const $URL_SCHEME_UNKNOWN = 0
Global Const $URL_SCHEME_FTP = 1
Global Const $URL_SCHEME_HTTP = 2
Global Const $URL_SCHEME_GOPHER = 3
Global Const $URL_SCHEME_MAILTO = 4
Global Const $URL_SCHEME_NEWS = 5
Global Const $URL_SCHEME_NNTP = 6
Global Const $URL_SCHEME_TELNET = 7
Global Const $URL_SCHEME_WAIS = 8
Global Const $URL_SCHEME_FILE = 9
Global Const $URL_SCHEME_MK = 10
Global Const $URL_SCHEME_HTTPS = 11
Global Const $URL_SCHEME_SHELL = 12
Global Const $URL_SCHEME_SNEWS = 13
Global Const $URL_SCHEME_LOCAL = 14
Global Const $URL_SCHEME_JAVASCRIPT = 15
Global Const $URL_SCHEME_VBSCRIPT = 16
Global Const $URL_SCHEME_ABOUT = 17
Global Const $URL_SCHEME_RES = 18
Global Const $URL_SCHEME_MSSHELLROOTED = 19
Global Const $URL_SCHEME_MSSHELLIDLIST = 20
Global Const $URL_SCHEME_MSHELP = 21
Global Const $URL_SCHEME_MSSHELLDEVICE = 22
Global Const $URL_SCHEME_WILDCARD = 23
Global Const $URL_SCHEME_SEARCH_MS = 24
Global Const $URL_SCHEME_SEARCH = 25
Global Const $URL_SCHEME_KNOWNFOLDER = 26
Global Const $GCT_INVALID = 0x00
Global Const $GCT_LFNCHAR = 0x01
Global Const $GCT_SEPARATOR = 0x08
Global Const $GCT_SHORTCHAR = 0x02
Global Const $GCT_WILD = 0x04
Global Const $URL_APPLY_DEFAULT = 0x01
Global Const $URL_APPLY_GUESSSCHEME = 0x02
Global Const $URL_APPLY_GUESSFILE = 0x04
Global Const $URL_APPLY_FORCEAPPLY = 0x08
Global Const $URL_DONT_SIMPLIFY = 0x08000000
Global Const $URL_ESCAPE_AS_UTF8 = 0x00040000
Global Const $URL_ESCAPE_PERCENT = 0x00001000
Global Const $URL_ESCAPE_SPACES_ONLY = 0x04000000
Global Const $URL_ESCAPE_UNSAFE = 0x20000000
Global Const $URL_NO_META = 0x08000000
Global Const $URL_PLUGGABLE_PROTOCOL = 0x40000000
Global Const $URL_UNESCAPE = 0x10000000
Global Const $URL_PART_HOSTNAME = 2
Global Const $URL_PART_PASSWORD = 4
Global Const $URL_PART_PORT = 5
Global Const $URL_PART_QUERY = 6
Global Const $URL_PART_SCHEME = 1
Global Const $URL_PART_USERNAME = 3
Global Const $URLIS_APPLIABLE = 4
Global Const $URLIS_DIRECTORY = 5
Global Const $URLIS_FILEURL = 3
Global Const $URLIS_HASQUERY = 6
Global Const $URLIS_NOHISTORY = 2
Global Const $URLIS_OPAQUE = 1
Global Const $URLIS_URL = 0
#Region Global Variables and Constants
Global $__g_vEnum, $__g_vExt = 0
Global $__g_iRGBMode = 1
Global Const $tagOSVERSIONINFO = 'struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct'
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $IMAGE_ENHMETAFILE = 3
Global Const $LR_DEFAULTCOLOR = 0x0000
Global Const $LR_MONOCHROME = 0x0001
Global Const $LR_COLOR = 0x0002
Global Const $LR_COPYRETURNORG = 0x0004
Global Const $LR_COPYDELETEORG = 0x0008
Global Const $LR_LOADFROMFILE = 0x0010
Global Const $LR_LOADTRANSPARENT = 0x0020
Global Const $LR_DEFAULTSIZE = 0x0040
Global Const $LR_VGACOLOR = 0x0080
Global Const $LR_LOADMAP3DCOLORS = 0x1000
Global Const $LR_CREATEDIBSECTION = 0x2000
Global Const $LR_COPYFROMRESOURCE = 0x4000
Global Const $LR_SHARED = 0x8000
Global Const $__tagCURSORINFO = "dword Size;dword Flags;handle hCursor;" & "struct;long X;long Y;endstruct"
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CreateFile($sFileName, $iCreation, $iAccess = 4, $iShare = 0, $iAttributes = 0, $tSecurity = 0)
Local $iDA = 0, $iSM = 0, $iCD = 0, $iFA = 0
If BitAND($iAccess, 1) <> 0 Then $iDA = BitOR($iDA, $GENERIC_EXECUTE)
If BitAND($iAccess, 2) <> 0 Then $iDA = BitOR($iDA, $GENERIC_READ)
If BitAND($iAccess, 4) <> 0 Then $iDA = BitOR($iDA, $GENERIC_WRITE)
If BitAND($iShare, 1) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_DELETE)
If BitAND($iShare, 2) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_READ)
If BitAND($iShare, 4) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_WRITE)
Switch $iCreation
Case 0
$iCD = $CREATE_NEW
Case 1
$iCD = $CREATE_ALWAYS
Case 2
$iCD = $OPEN_EXISTING
Case 3
$iCD = $OPEN_ALWAYS
Case 4
$iCD = $TRUNCATE_EXISTING
EndSwitch
If BitAND($iAttributes, 1) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_ARCHIVE)
If BitAND($iAttributes, 2) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_HIDDEN)
If BitAND($iAttributes, 4) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_READONLY)
If BitAND($iAttributes, 8) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_SYSTEM)
Local $aCall = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $sFileName, "dword", $iDA, "dword", $iSM,  "struct*", $tSecurity, "dword", $iCD, "dword", $iFA, "ptr", 0)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FreeLibrary($hModule)
Local $aCall = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $hModule)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCursorInfo()
Local $tCursor = DllStructCreate($__tagCURSORINFO)
Local $iCursor = DllStructGetSize($tCursor)
DllStructSetData($tCursor, "Size", $iCursor)
Local $aCall = DllCall("user32.dll", "bool", "GetCursorInfo", "struct*", $tCursor)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aCursor[5]
$aCursor[0] = True
$aCursor[1] = DllStructGetData($tCursor, "Flags") <> 0
$aCursor[2] = DllStructGetData($tCursor, "hCursor")
$aCursor[3] = DllStructGetData($tCursor, "X")
$aCursor[4] = DllStructGetData($tCursor, "Y")
Return $aCursor
EndFunc
Func _WinAPI_GetDlgCtrlID($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetModuleHandle($sModuleName)
If $sModuleName = "" Then $sModuleName = Null
Local $aCall = DllCall("kernel32.dll", "handle", "GetModuleHandleW", "wstr", $sModuleName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetString($pString, $bUnicode = True)
Local $iLength = _WinAPI_StrLen($pString, $bUnicode)
If @error Or Not $iLength Then Return SetError(@error + 10, @extended, '')
Local $tString = DllStructCreate(($bUnicode ? 'wchar' : 'char') & '[' & ($iLength + 1) & ']', $pString)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($iLength, DllStructGetData($tString, 1))
EndFunc
Func _WinAPI_GetVersion()
Local $tOSVI = DllStructCreate($tagOSVERSIONINFO)
DllStructSetData($tOSVI, 1, DllStructGetSize($tOSVI))
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVI)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return Number(DllStructGetData($tOSVI, 2) & "." & DllStructGetData($tOSVI, 3), $NUMBER_DOUBLE)
EndFunc
Func _WinAPI_IsWow64Process($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', (_WinAPI_GetVersion() < 6.0 ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsWow64Process', 'handle', $hProcess[0], 'bool*', 0)
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, False)
Return $aCall[2]
EndFunc
Func _WinAPI_LoadImage($hInstance, $sImage, $iType, $iXDesired, $iYDesired, $iLoad)
Local $aCall, $sImageType = "int"
If IsString($sImage) Then $sImageType = "wstr"
$aCall = DllCall("user32.dll", "handle", "LoadImageW", "handle", $hInstance, $sImageType, $sImage, "uint", $iType,  "int", $iXDesired, "int", $iYDesired, "uint", $iLoad)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadLibrary($sFileName)
Local $aCall = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sFileName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsDirectory($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ReadFile($hFile, $pBuffer, $iToRead, ByRef $iRead, $tOverlapped = 0)
Local $aCall = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToRead,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iRead = $aCall[4]
Return $aCall[0]
EndFunc
Func _WinAPI_StrLen($pString, $bUnicode = True)
Local $W = ''
If $bUnicode Then $W = 'W'
Local $aCall = DllCall('kernel32.dll', 'int', 'lstrlen' & $W, 'struct*', $pString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SwitchColor($iColor)
If $iColor = -1 Then Return $iColor
Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndFunc
Func _WinAPI_WriteFile($hFile, $pBuffer, $iToWrite, ByRef $iWritten, $tOverlapped = 0)
Local $aCall = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToWrite,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iWritten = $aCall[4]
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __CheckErrorArrayBounds(Const ByRef $aData, ByRef $iStart, ByRef $iEnd, $nDim = 1, $iDim = $UBOUND_DIMENSIONS)
If Not IsArray($aData) Then Return SetError(1, 0, 1)
If UBound($aData, $iDim) <> $nDim Then Return SetError(2, 0, 1)
If $iStart < 0 Then $iStart = 0
Local $iUBound = UBound($aData) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart > $iEnd Then Return SetError(4, 0, 1)
Return 0
EndFunc
Func __CheckErrorCloseHandle($aCall, $hFile, $bLastError = False, $iCurErr = @error, $iCurExt = @extended)
If Not $iCurErr And Not $aCall[0] Then $iCurErr = 10
Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iCurErr Then DllCall("kernel32.dll", "none", "SetLastError", "dword", $aLastError[0])
If $bLastError Then $iCurExt = $aLastError[0]
Return SetError($iCurErr, $iCurExt, $iCurErr)
EndFunc
Func __DLL($sPath, $bPin = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', ($bPin ? 0x0001 : 0x0002), "wstr", $sPath, 'ptr*', 0)
If Not $aCall[3] Then
$aCall = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sPath)
If @error Or Not $aCall[0] Then Return 0
EndIf
Return 1
EndFunc
Func __EnumWindowsProc($hWnd, $bVisible)
Local $aCall
If $bVisible Then
$aCall = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
If Not $aCall[0] Then
Return 1
EndIf
EndIf
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = $hWnd
$aCall = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
$__g_vEnum[$__g_vEnum[0][0]][1] = $aCall[2]
Return 1
EndFunc
Func __FatalExit($iCode, $sText = '')
If $sText Then MsgBox($MB_SYSTEMMODAL, 'AutoIt', $sText)
DllCall('kernel32.dll', 'none', 'FatalExit', 'int', $iCode)
EndFunc
Func __Inc(ByRef $aData, $iIncrement = 100)
Select
Case UBound($aData, $UBOUND_COLUMNS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0][0] + 1][UBound($aData, $UBOUND_COLUMNS)]
Else
$aData[0][0] += 1
If $aData[0][0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0][0] + $iIncrement][UBound($aData, $UBOUND_COLUMNS)]
EndIf
EndIf
Case UBound($aData, $UBOUND_ROWS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0] + 1]
Else
$aData[0] += 1
If $aData[0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0] + $iIncrement]
EndIf
EndIf
Case Else
Return 0
EndSelect
Return 1
EndFunc
Func __RGB($iColor)
If $__g_iRGBMode Then
$iColor = _WinAPI_SwitchColor($iColor)
EndIf
Return $iColor
EndFunc
#EndRegion Internal Functions
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CommandLineToArgv($sCmd)
Local $aRet[1] = [0]
$sCmd = StringStripWS($sCmd, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If Not $sCmd Then
Return $aRet
EndIf
Local $aCall = DllCall('shell32.dll', 'ptr', 'CommandLineToArgvW', 'wstr', $sCmd, 'int*', 0)
If @error Or Not $aCall[0] Or (Not $aCall[2]) Then Return SetError(@error + 10, @extended, 0)
Local $tPtr = DllStructCreate('ptr[' & $aCall[2] & ']', $aCall[0])
Dim $aRet[$aCall[2] + 1] = [$aCall[2]]
For $i = 1 To $aCall[2]
$aRet[$i] = _WinAPI_GetString(DllStructGetData($tPtr, 1, $i))
Next
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $aCall[0])
Return $aRet
EndFunc
Func _WinAPI_IsNameInExpression($sString, $sPattern, $bCaseSensitive = False)
If Not $bCaseSensitive Then $sPattern = StringUpper($sPattern)
Local $tUS1 = __US($sPattern)
Local $tUS2 = __US($sString)
Local $aCall = DllCall('ntdll.dll', 'boolean', 'RtlIsNameInExpression', 'struct*', $tUS1, 'struct*', $tUS2,  'boolean', Not $bCaseSensitive, 'ptr', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ParseURL($sUrl)
Local $tagPARSEDURL = 'dword Size;ptr Protocol;uint cchProtocol;ptr Suffix;uint cchSuffix;uint Scheme'
Local $tPURL = DllStructCreate($tagPARSEDURL)
DllStructSetData($tPURL, 1, DllStructGetSize($tPURL))
Local $tURL = DllStructCreate('wchar[4096]')
DllStructSetData($tURL, 1, $sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'ParseURLW', 'struct*', $tURL, 'struct*', $tPURL)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $aRet[3]
$aRet[0] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 3) & ']', DllStructGetData($tPURL, 2)), 1)
$aRet[1] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 5) & ']', DllStructGetData($tPURL, 4)), 1)
$aRet[2] = DllStructGetData($tPURL, 6)
Return $aRet
EndFunc
Func _WinAPI_ParseUserName($sUser)
If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)
Local $aCall = DllCall('credui.dll', 'dword', 'CredUIParseUserNameW', 'wstr', $sUser, 'wstr', '', 'ulong', 4096, 'wstr', '',  'ulong', 4096)
If @error Then Return SetError(@error, @extended, 0)
Switch $aCall[0]
Case 0
Case 1315
If StringStripWS($sUser, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$aCall[2] = $sUser
$aCall[4] = ''
Else
ContinueCase
EndIf
Case Else
Return SetError(10, $aCall[0], 0)
EndSwitch
Local $aRet[2]
$aRet[0] = $aCall[4]
$aRet[1] = $aCall[2]
Return $aRet
EndFunc
Func _WinAPI_PathAddBackslash($sFilePath)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathAddBackslashW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathAddExtension($sFilePath, $sExt = '')
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
If Not StringStripWS($sExt, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sExt = Null
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathAddExtensionW', 'struct*', $tPath, 'wstr', $sExt)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], DllStructGetData($tPath, 1))
EndFunc
Func _WinAPI_PathAppend($sFilePath, $sMore)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathAppendW', 'struct*', $tPath, 'wstr', $sMore)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathBuildRoot($iDrive)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathBuildRootW', 'wstr', '', 'int', $iDrive)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathCanonicalize($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathCanonicalizeW', 'wstr', '', 'wstr', $sFilePath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathCommonPrefix($sPath1, $sPath2)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathCommonPrefixW', 'wstr', $sPath1, 'wstr', $sPath2, 'wstr', '')
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_PathCompactPath($hWnd, $sFilePath, $iWidth = 0)
If $iWidth < 1 Then
Local $tRECT = DllStructCreate($tagRECT)
DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRECT)
$iWidth += DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', $hWnd)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, $sFilePath)
Local $hDC = $aCall[0]
Local Const $WM_GETFONT = 0x0031
$aCall = DllCall('user32.dll', 'ptr', 'SendMessage', 'hwnd', $hWnd, 'uint', $WM_GETFONT, 'wparam', 0, 'lparam', 0)
Local $hBack = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $aCall[0])
Local $iError = 0
$aCall = DllCall('shlwapi.dll', 'bool', 'PathCompactPathW', 'handle', $hDC, 'wstr', $sFilePath, 'int', $iWidth)
If @error Or Not $aCall[0] Then $iError = @error + 10
DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hBack[0])
DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If $iError Then Return SetError($iError, 0, $sFilePath)
Return $aCall[2]
EndFunc
Func _WinAPI_PathCompactPathEx($sFilePath, $iMax)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathCompactPathExW', 'wstr', '', 'wstr', $sFilePath, 'uint', $iMax + 1, 'dword', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathCreateFromUrl($sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'PathCreateFromUrlW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathFindExtension($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'wstr', 'PathFindExtensionW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[0]
EndFunc
Func _WinAPI_PathFindFileName($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'wstr', 'PathFindFileNameW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, $sFilePath)
Return $aCall[0]
EndFunc
Func _WinAPI_PathFindNextComponent($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathFindNextComponentW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathFindOnPath(Const $sFilePath, $aExtraPaths = "", Const $sPathDelimiter = @LF)
Local $iExtraCount = 0
If IsString($aExtraPaths) Then
If StringLen($aExtraPaths) Then
$aExtraPaths = StringSplit($aExtraPaths, $sPathDelimiter, $STR_ENTIRESPLIT + $STR_NOCOUNT)
$iExtraCount = UBound($aExtraPaths, $UBOUND_ROWS)
EndIf
ElseIf IsArray($aExtraPaths) Then
$iExtraCount = UBound($aExtraPaths)
EndIf
Local $tPaths, $tPathPtrs
If $iExtraCount Then
Local $tagStruct = ""
For $path In $aExtraPaths
$tagStruct &= "wchar[" & StringLen($path) + 1 & "];"
Next
$tPaths = DllStructCreate($tagStruct)
$tPathPtrs = DllStructCreate("ptr[" & $iExtraCount + 1 & "]")
For $i = 1 To $iExtraCount
DllStructSetData($tPaths, $i, $aExtraPaths[$i - 1])
DllStructSetData($tPathPtrs, 1, DllStructGetPtr($tPaths, $i), $i)
Next
DllStructSetData($tPathPtrs, 1, Ptr(0), $iExtraCount + 1)
EndIf
Local $aCall = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $sFilePath, "struct*", $tPathPtrs)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathGetArgs($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathGetArgsW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathGetCharType($sChar)
Local $aCall = DllCall('shlwapi.dll', 'uint', 'PathGetCharTypeW', 'word', AscW($sChar))
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_PathGetDriveNumber($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathGetDriveNumberW', 'wstr', $sFilePath)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, '')
Return Chr($aCall[0] + 65) & ':'
EndFunc
Func _WinAPI_PathIsContentType($sFilePath, $sType)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsContentTypeW', 'wstr', $sFilePath, 'wstr', $sType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsExe($sFilePath)
Local $aCall = DllCall('shell32.dll', 'bool', 'PathIsExe', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsLFNFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsLFNFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsRelative($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsRelativeW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsRoot($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsRootW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsSameRoot($sPath1, $sPath2)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsSameRootW', 'wstr', $sPath1, 'wstr', $sPath2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsSystemFolderW', 'wstr', $sFilePath, 'dword', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNC($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNCServer($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNCServerShare($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerShareW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathMakeSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMakeSystemFolderW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathMatchSpec($sFilePath, $sSpec)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMatchSpecW', 'wstr', $sFilePath, 'wstr', $sSpec)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathParseIconLocation($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathParseIconLocationW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[2]
$aRet[0] = $aCall[1]
$aRet[1] = $aCall[0]
Return $aRet
EndFunc
Func _WinAPI_PathRelativePathTo($sPathFrom, $bDirFrom, $sPathTo, $bDirTo)
If $bDirFrom Then
$bDirFrom = 0x10
EndIf
If $bDirTo Then
$bDirTo = 0x10
EndIf
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRelativePathToW', 'wstr', '', 'wstr', $sPathFrom, 'dword', $bDirFrom,  'wstr', $sPathTo, 'dword', $bDirTo)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveArgs($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathRemoveArgsW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveBackslash($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathRemoveBackslashW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveExtension($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathRemoveExtensionW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRemoveFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[1])
EndFunc
Func _WinAPI_PathRenameExtension($sFilePath, $sExt)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRenameExtensionW', 'struct*', $tPath, 'wstr', $sExt)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathSearchAndQualify($sFilePath, $bExists = False)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathSearchAndQualifyW', 'wstr', $sFilePath, 'wstr', '', 'int', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
If $bExists And Not FileExists($aCall[2]) Then Return SetError(20, 0, '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathSkipRoot($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathSkipRootW', 'struct*', $tPath)
If @error Then Return SetError(@error, @extended, '')
If Not $aCall[0] Then Return $sFilePath
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathStripPath($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathStripPathW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathStripToRoot($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathStripToRootW', 'wstr', $sFilePath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathUndecorate($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathUndecorateW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathUnExpandEnvStrings($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathUnExpandEnvStringsW', 'wstr', $sFilePath, 'wstr', '', 'uint', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathUnmakeSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathUnmakeSystemFolderW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathUnquoteSpaces($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathUnquoteSpacesW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathYetAnotherMakeUniqueName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'int', 'PathYetAnotherMakeUniqueName', 'wstr', '', 'wstr', $sFilePath, 'ptr', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_ShellGetImageList($bSmall = False)
Local $pLarge, $pSmall, $tPtr = DllStructCreate('ptr')
If $bSmall Then
$pLarge = 0
$pSmall = DllStructGetPtr($tPtr)
Else
$pLarge = DllStructGetPtr($tPtr)
$pSmall = 0
EndIf
Local $aCall = DllCall('shell32.dll', 'int', 'Shell_GetImageLists', 'ptr', $pLarge, 'ptr', $pSmall)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPtr, 1)
EndFunc
Func _WinAPI_UrlApplyScheme($sUrl, $iFlags = 1)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlApplySchemeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlCanonicalize($sUrl, $iFlags)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCanonicalizeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlCombine($sUrl, $sPart, $iFlags = 0)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCombineW', 'wstr', $sUrl, 'wstr', $sPart, 'wstr', '', 'dword*', 4096,  'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[3]
EndFunc
Func _WinAPI_UrlCompare($sUrl1, $sUrl2, $bIgnoreSlash = False)
Local $aCall = DllCall('shlwapi.dll', 'int', 'UrlCompareW', 'wstr', $sUrl1, 'wstr', $sUrl2, 'bool', $bIgnoreSlash)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UrlCreateFromPath($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCreateFromPathW', 'wstr', $sFilePath, 'wstr', '', 'dword*', 4096, 'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] < 0 Or $aCall[0] > 1 Then
Return SetError(10, $aCall[0], '')
EndIf
Return $aCall[2]
EndFunc
Func _WinAPI_UrlFixup($sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlFixupW', 'wstr', $sUrl, 'wstr', '', 'dword', 4096)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlGetPart($sUrl, $iPart)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlGetPartW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iPart,  'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlHash($sUrl, $iLength = 32)
If $iLength <= 0 Or $iLength > 256 Then Return SetError(256, 0, 0)
Local $tData = DllStructCreate('byte[' & $iLength & ']')
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlHashW', 'wstr', $sUrl, 'struct*', $tData, 'dword', $iLength)
If @error Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_UrlIs($sUrl, $iType = 0)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'UrlIsW', 'wstr', $sUrl, 'uint', $iType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __US($sString, $iLength = 0)
If $iLength Then
$sString = StringLeft($sString, $iLength)
Else
$iLength = StringLen($sString)
EndIf
Local $tUS = DllStructCreate('ushort;ushort;ptr;wchar[' & ($iLength + 1) & ']')
DllStructSetData($tUS, 1, 2 * StringLen($sString))
DllStructSetData($tUS, 2, 2 * $iLength)
DllStructSetData($tUS, 3, DllStructGetPtr($tUS, 4))
DllStructSetData($tUS, 4, $sString)
Return $tUS
EndFunc
#EndRegion Internal Functions
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_SYMBOLIC_LINK_NAME = 'SeCreateSymbolicLinkPrivilege'
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INC_WORKING_SET_NAME = 'SeIncreaseWorkingSetPrivilege'
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_RELABEL_NAME = 'SeRelabelPrivilege'
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_TIME_ZONE_NAME = 'SeTimeZonePrivilege'
Global Const $SE_TRUSTED_CREDMAN_ACCESS_NAME = 'SeTrustedCredManAccessPrivilege'
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000
Global Const $SE_GROUP_MANDATORY = 0x00000001
Global Const $SE_GROUP_ENABLED_BY_DEFAULT = 0x00000002
Global Const $SE_GROUP_ENABLED = 0x00000004
Global Const $SE_GROUP_OWNER = 0x00000008
Global Const $SE_GROUP_USE_FOR_DENY_ONLY = 0x00000010
Global Const $SE_GROUP_INTEGRITY = 0x00000020
Global Const $SE_GROUP_INTEGRITY_ENABLED = 0x00000040
Global Const $SE_GROUP_RESOURCE = 0x20000000
Global Const $SE_GROUP_LOGON_ID = 0xC0000000
Global Enum $TOKENPRIMARY = 1, $TOKENIMPERSONATION
Global Enum $SECURITYANONYMOUS = 0, $SECURITYIDENTIFICATION, $SECURITYIMPERSONATION, $SECURITYDELEGATION
Global Enum $TOKENUSER = 1, $TOKENGROUPS, $TOKENPRIVILEGES, $TOKENOWNER, $TOKENPRIMARYGROUP, $TOKENDEFAULTDACL, $TOKENSOURCE, $TOKENTYPE, $TOKENIMPERSONATIONLEVEL, $TOKENSTATISTICS, $TOKENRESTRICTEDSIDS, $TOKENSESSIONID, $TOKENGROUPSANDPRIVILEGES, $TOKENSESSIONREFERENCE, $TOKENSANDBOXINERT, $TOKENAUDITPOLICY, $TOKENORIGIN, $TOKENELEVATIONTYPE, $TOKENLINKEDTOKEN, $TOKENELEVATION, $TOKENHASRESTRICTIONS, $TOKENACCESSINFORMATION, $TOKENVIRTUALIZATIONALLOWED, $TOKENVIRTUALIZATIONENABLED, $TOKENINTEGRITYLEVEL, $TOKENUIACCESS, $TOKENMANDATORYPOLICY, $TOKENLOGONSID
Global Const $TOKEN_ASSIGN_PRIMARY = 0x00000001
Global Const $TOKEN_DUPLICATE = 0x00000002
Global Const $TOKEN_IMPERSONATE = 0x00000004
Global Const $TOKEN_QUERY = 0x00000008
Global Const $TOKEN_QUERY_SOURCE = 0x00000010
Global Const $TOKEN_ADJUST_PRIVILEGES = 0x00000020
Global Const $TOKEN_ADJUST_GROUPS = 0x00000040
Global Const $TOKEN_ADJUST_DEFAULT = 0x00000080
Global Const $TOKEN_ADJUST_SESSIONID = 0x00000100
Global Const $TOKEN_ALL_ACCESS = 0x000F01FF
Global Const $TOKEN_READ = 0x00020008
Global Const $TOKEN_WRITE = 0x000200E0
Global Const $TOKEN_EXECUTE = 0x00020000
Global Const $TOKEN_HAS_TRAVERSE_PRIVILEGE = 0x00000001
Global Const $TOKEN_HAS_BACKUP_PRIVILEGE = 0x00000002
Global Const $TOKEN_HAS_RESTORE_PRIVILEGE = 0x00000004
Global Const $TOKEN_HAS_ADMIN_GROUP = 0x00000008
Global Const $TOKEN_IS_RESTRICTED = 0x00000010
Global Const $TOKEN_SESSION_NOT_REFERENCED = 0x00000020
Global Const $TOKEN_SANDBOX_INERT = 0x00000040
Global Const $TOKEN_HAS_IMPERSONATE_PRIVILEGE = 0x00000080
Global Const $STANDARD_RIGHTS_DELETE = 0x00010000
Global Const $READ_CONTROL = 0x00020000
Global Const $WRITE_DAC = 0x00040000
Global Const $WRITE_OWNER = 0x00080000
Global Const $STANDARD_RIGHTS_SYNCHRONIZE = 0x00100000
Global Const $ACCESS_SYSTEM_SECURITY = 0x01000000
Global Const $STANDARD_RIGHTS_REQUIRED = 0x000f0000
Global Const $STANDARD_RIGHTS_READ = $READ_CONTROL
Global Const $STANDARD_RIGHTS_WRITE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_EXECUTE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_ALL = 0x001F0000
Global Const $SPECIFIC_RIGHTS_ALL = 0x0000FFFF
Global Enum $NOT_USED_ACCESS = 0, $GRANT_ACCESS, $SET_ACCESS, $DENY_ACCESS, $REVOKE_ACCESS, $SET_AUDIT_SUCCESS, $SET_AUDIT_FAILURE
Global Enum $TRUSTEE_IS_UNKNOWN = 0, $TRUSTEE_IS_USER, $TRUSTEE_IS_GROUP, $TRUSTEE_IS_DOMAIN, $TRUSTEE_IS_ALIAS, $TRUSTEE_IS_WELL_KNOWN_GROUP, $TRUSTEE_IS_DELETED, $TRUSTEE_IS_INVALID, $TRUSTEE_IS_COMPUTER
Global Const $LOGON_WITH_PROFILE = 0x00000001
Global Const $LOGON_NETCREDENTIALS_ONLY = 0x00000002
Global Enum $SIDTYPEUSER = 1, $SIDTYPEGROUP, $SIDTYPEDOMAIN, $SIDTYPEALIAS, $SIDTYPEWELLKNOWNGROUP, $SIDTYPEDELETEDACCOUNT, $SIDTYPEINVALID, $SIDTYPEUNKNOWN, $SIDTYPECOMPUTER, $SIDTYPELABEL
Global Const $SID_ADMINISTRATORS = "S-1-5-32-544"
Global Const $SID_USERS = "S-1-5-32-545"
Global Const $SID_GUESTS = "S-1-5-32-546"
Global Const $SID_ACCOUNT_OPERATORS = "S-1-5-32-548"
Global Const $SID_SERVER_OPERATORS = "S-1-5-32-549"
Global Const $SID_PRINT_OPERATORS = "S-1-5-32-550"
Global Const $SID_BACKUP_OPERATORS = "S-1-5-32-551"
Global Const $SID_REPLICATOR = "S-1-5-32-552"
Global Const $SID_OWNER = "S-1-3-0"
Global Const $SID_EVERYONE = "S-1-1-0"
Global Const $SID_NETWORK = "S-1-5-2"
Global Const $SID_INTERACTIVE = "S-1-5-4"
Global Const $SID_SYSTEM = "S-1-5-18"
Global Const $SID_AUTHENTICATED_USERS = "S-1-5-11"
Global Const $SID_SCHANNEL_AUTHENTICATION = "S-1-5-64-14"
Global Const $SID_DIGEST_AUTHENTICATION = "S-1-5-64-21"
Global Const $SID_NT_SERVICE = "S-1-5-80"
Global Const $SID_UNTRUSTED_MANDATORY_LEVEL = "S-1-16-0"
Global Const $SID_LOW_MANDATORY_LEVEL = "S-1-16-4096"
Global Const $SID_MEDIUM_MANDATORY_LEVEL = "S-1-16-8192"
Global Const $SID_MEDIUM_PLUS_MANDATORY_LEVEL = "S-1-16-8448"
Global Const $SID_HIGH_MANDATORY_LEVEL = "S-1-16-12288"
Global Const $SID_SYSTEM_MANDATORY_LEVEL = "S-1-16-16384"
Global Const $SID_PROTECTED_PROCESS_MANDATORY_LEVEL = "S-1-16-20480"
Global Const $SID_SECURE_PROCESS_MANDATORY_LEVEL = "S-1-16-28672"
Global Const $SID_ALL_SERVICES = "S-1-5-80-0"
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _Security__AdjustTokenPrivileges($hToken, $bDisableAll, $tNewState, $iBufferLen, $tPrevState = 0, $pRequired = 0)
Local $aCall = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $hToken, "bool", $bDisableAll, "struct*", $tNewState, "dword", $iBufferLen, "struct*", $tPrevState, "struct*", $pRequired)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__CreateProcessWithToken($hToken, $iLogonFlags, $sCommandLine, $iCreationFlags, $sCurDir, $tSTARTUPINFO, $tPROCESS_INFORMATION)
Local $aCall = DllCall("advapi32.dll", "bool", "CreateProcessWithTokenW", "handle", $hToken, "dword", $iLogonFlags, "ptr", 0, "wstr", $sCommandLine, "dword", $iCreationFlags, "struct*", 0, "wstr", $sCurDir, "struct*", $tSTARTUPINFO, "struct*", $tPROCESS_INFORMATION)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _Security__DuplicateTokenEx($hExistingToken, $iDesiredAccess, $iImpersonationLevel, $iTokenType)
Local $aCall = DllCall("advapi32.dll", "bool", "DuplicateTokenEx", "handle", $hExistingToken, "dword", $iDesiredAccess, "struct*", 0, "int", $iImpersonationLevel, "int", $iTokenType, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[6]
EndFunc
Func _Security__GetAccountSid($sAccount, $sSystem = "")
Local $aAcct = _Security__LookupAccountName($sAccount, $sSystem)
If @error Then Return SetError(@error, @extended, 0)
If IsArray($aAcct) Then Return _Security__StringSidToSid($aAcct[0])
Return ''
EndFunc
Func _Security__GetLengthSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall("advapi32.dll", "dword", "GetLengthSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _Security__GetTokenInformation($hToken, $iClass)
Local $aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", 0, "dword", 0, "dword*", 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 20, @extended, 0)
Local $iLen = $aCall[5]
Local $tBuffer = DllStructCreate("byte[" & $iLen & "]")
$aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", $tBuffer, "dword", DllStructGetSize($tBuffer), "dword*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tBuffer
EndFunc
Func _Security__ImpersonateSelf($iLevel = $SECURITYIMPERSONATION)
Local $aCall = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $iLevel)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__IsValidSid($pSID)
Local $aCall = DllCall("advapi32.dll", "bool", "IsValidSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__LookupAccountName($sAccount, $sSystem = "")
Local $tData = DllStructCreate("byte SID[256]")
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $sSystem, "wstr", $sAccount, "struct*", $tData, "dword*", DllStructGetSize($tData), "wstr", "", "dword*", DllStructGetSize($tData), "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aAcct[3]
$aAcct[0] = _Security__SidToStringSid(DllStructGetPtr($tData, "SID"))
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupAccountSid($vSID, $sSystem = "")
Local $pSID, $aAcct[3]
If IsString($vSID) Then
$pSID = _Security__StringSidToSid($vSID)
Else
$pSID = $vSID
EndIf
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 20, @extended, 0)
If $sSystem = "" Then $sSystem = Null
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountSidW", "wstr", $sSystem, "struct*", $pSID, "wstr", "", "dword*", 65536, "wstr", "", "dword*", 65536, "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aAcct[3]
$aAcct[0] = $aCall[3]
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupPrivilegeValue($sSystem, $sName)
Local $aCall = DllCall("advapi32.dll", "bool", "LookupPrivilegeValueW", "wstr", $sSystem, "wstr", $sName, "int64*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenProcessToken($hProcess, $iAccess)
Local $aCall = DllCall("advapi32.dll", "bool", "OpenProcessToken", "handle", $hProcess, "dword", $iAccess, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenThreadToken($iAccess, $hThread = 0, $bOpenAsSelf = False)
Local $aCall
If $hThread = 0 Then
$aCall = DllCall("kernel32.dll", "handle", "GetCurrentThread")
If @error Then Return SetError(@error + 20, @extended, 0)
$hThread = $aCall[0]
EndIf
$aCall = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $hThread, "dword", $iAccess, "bool", $bOpenAsSelf, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[4]
EndFunc
Func _Security__OpenThreadTokenEx($iAccess, $hThread = 0, $bOpenAsSelf = False)
Local $hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then
Local Const $ERROR_NO_TOKEN = 1008
If _WinAPI_GetLastError() <> $ERROR_NO_TOKEN Then Return SetError(20, _WinAPI_GetLastError(), 0)
If Not _Security__ImpersonateSelf() Then Return SetError(@error + 10, _WinAPI_GetLastError(), 0)
$hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then Return SetError(@error, _WinAPI_GetLastError(), 0)
EndIf
Return $hToken
EndFunc
Func _Security__SetPrivilege($hToken, $sPrivilege, $bEnable)
Local $iLUID = _Security__LookupPrivilegeValue("", $sPrivilege)
If $iLUID = 0 Then Return SetError(@error + 10, @extended, False)
Local Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Local $tCurrState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iCurrState = DllStructGetSize($tCurrState)
Local $tPrevState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iPrevState = DllStructGetSize($tPrevState)
Local $tRequired = DllStructCreate("int Data")
DllStructSetData($tCurrState, "Count", 1)
DllStructSetData($tCurrState, "LUID", $iLUID)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tCurrState, $iCurrState, $tPrevState, $tRequired) Then Return SetError(2, @error, False)
DllStructSetData($tPrevState, "Count", 1)
DllStructSetData($tPrevState, "LUID", $iLUID)
Local $iAttributes = DllStructGetData($tPrevState, "Attributes")
If $bEnable Then
$iAttributes = BitOR($iAttributes, $SE_PRIVILEGE_ENABLED)
Else
$iAttributes = BitAND($iAttributes, BitNOT($SE_PRIVILEGE_ENABLED))
EndIf
DllStructSetData($tPrevState, "Attributes", $iAttributes)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tPrevState, $iPrevState, $tCurrState, $tRequired) Then  Return SetError(3, @error, False)
Return True
EndFunc
Func _Security__SetTokenInformation($hToken, $iTokenInformation, $vTokenInformation, $iTokenInformationLength)
Local $aCall = DllCall("advapi32.dll", "bool", "SetTokenInformation", "handle", $hToken, "int", $iTokenInformation, "struct*", $vTokenInformation, "dword", $iTokenInformationLength)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _Security__SidToStringSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, 0, "")
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertSidToStringSidW", "struct*", $pSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Local $pStringSid = $aCall[2]
Local $aLen = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $pStringSid)
Local $sSID = DllStructGetData(DllStructCreate("wchar Text[" & $aLen[0] + 1 & "]", $pStringSid), "Text")
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pStringSid)
Return $sSID
EndFunc
Func _Security__SidTypeStr($iType)
Switch $iType
Case $SIDTYPEUSER
Return "User"
Case $SIDTYPEGROUP
Return "Group"
Case $SIDTYPEDOMAIN
Return "Domain"
Case $SIDTYPEALIAS
Return "Alias"
Case $SIDTYPEWELLKNOWNGROUP
Return "Well Known Group"
Case $SIDTYPEDELETEDACCOUNT
Return "Deleted Account"
Case $SIDTYPEINVALID
Return "Invalid"
Case $SIDTYPEUNKNOWN
Return "Unknown Type"
Case $SIDTYPECOMPUTER
Return "Computer"
Case $SIDTYPELABEL
Return "A mandatory integrity label SID"
Case Else
Return "Unknown SID Type"
EndSwitch
EndFunc
Func _Security__StringSidToSid($sSID)
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $sSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $pSID = $aCall[2]
Local $tBuffer = DllStructCreate("byte Data[" & _Security__GetLengthSid($pSID) & "]", $pSID)
Local $tSID = DllStructCreate("byte Data[" & DllStructGetSize($tBuffer) & "]")
DllStructSetData($tSID, "Data", DllStructGetData($tBuffer, "Data"))
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pSID)
Return $tSID
EndFunc
#EndRegion Public Functions
Global Const $HGDI_ERROR = Ptr(-1)
Global Const $INVALID_HANDLE_VALUE = Ptr(-1)
Global Const $CLR_INVALID = -1
Global Const $MB_PRECOMPOSED = 0x01
Global Const $MB_COMPOSITE = 0x02
Global Const $MB_USEGLYPHCHARS = 0x04
Global Const $ULW_ALPHA = 0x02
Global Const $ULW_COLORKEY = 0x01
Global Const $ULW_OPAQUE = 0x04
Global Const $ULW_EX_NORESIZE = 0x08
Global Const $WH_CALLWNDPROC = 4
Global Const $WH_CALLWNDPROCRET = 12
Global Const $WH_CBT = 5
Global Const $WH_DEBUG = 9
Global Const $WH_FOREGROUNDIDLE = 11
Global Const $WH_GETMESSAGE = 3
Global Const $WH_JOURNALPLAYBACK = 1
Global Const $WH_JOURNALRECORD = 0
Global Const $WH_KEYBOARD = 2
Global Const $WH_KEYBOARD_LL = 13
Global Const $WH_MOUSE = 7
Global Const $WH_MOUSE_LL = 14
Global Const $WH_MSGFILTER = -1
Global Const $WH_SHELL = 10
Global Const $WH_SYSMSGFILTER = 6
Global Const $WPF_ASYNCWINDOWPLACEMENT = 0x04
Global Const $WPF_RESTORETOMAXIMIZED = 0x02
Global Const $WPF_SETMINPOSITION = 0x01
Global Const $KF_EXTENDED = 0x0100
Global Const $KF_ALTDOWN = 0x2000
Global Const $KF_UP = 0x8000
Global Const $LLKHF_EXTENDED = BitShift($KF_EXTENDED, 8)
Global Const $LLKHF_LOWER_IL_INJECTED = 0x02
Global Const $LLKHF_INJECTED = 0x10
Global Const $LLKHF_ALTDOWN = BitShift($KF_ALTDOWN, 8)
Global Const $LLKHF_UP = BitShift($KF_UP, 8)
Global Const $LVKF_ALT = 0x0001
Global Const $LVKF_CONTROL = 0x0002
Global Const $LVKF_SHIFT = 0x0004
Global Const $OFN_ALLOWMULTISELECT = 0x00000200
Global Const $OFN_CREATEPROMPT = 0x00002000
Global Const $OFN_DONTADDTORECENT = 0x02000000
Global Const $OFN_ENABLEHOOK = 0x00000020
Global Const $OFN_ENABLEINCLUDENOTIFY = 0x00400000
Global Const $OFN_ENABLESIZING = 0x00800000
Global Const $OFN_ENABLETEMPLATE = 0x00000040
Global Const $OFN_ENABLETEMPLATEHANDLE = 0x00000080
Global Const $OFN_EXPLORER = 0x00080000
Global Const $OFN_EXTENSIONDIFFERENT = 0x00000400
Global Const $OFN_FILEMUSTEXIST = 0x00001000
Global Const $OFN_FORCESHOWHIDDEN = 0x10000000
Global Const $OFN_HIDEREADONLY = 0x00000004
Global Const $OFN_LONGNAMES = 0x00200000
Global Const $OFN_NOCHANGEDIR = 0x00000008
Global Const $OFN_NODEREFERENCELINKS = 0x00100000
Global Const $OFN_NOLONGNAMES = 0x00040000
Global Const $OFN_NONETWORKBUTTON = 0x00020000
Global Const $OFN_NOREADONLYRETURN = 0x00008000
Global Const $OFN_NOTESTFILECREATE = 0x00010000
Global Const $OFN_NOVALIDATE = 0x00000100
Global Const $OFN_OVERWRITEPROMPT = 0x00000002
Global Const $OFN_PATHMUSTEXIST = 0x00000800
Global Const $OFN_READONLY = 0x00000001
Global Const $OFN_SHAREAWARE = 0x00004000
Global Const $OFN_SHOWHELP = 0x00000010
Global Const $OFN_EX_NOPLACESBAR = 0x00000001
Global Const $STD_CUT = 0
Global Const $STD_COPY = 1
Global Const $STD_PASTE = 2
Global Const $STD_UNDO = 3
Global Const $STD_REDOW = 4
Global Const $STD_DELETE = 5
Global Const $STD_FILENEW = 6
Global Const $STD_FILEOPEN = 7
Global Const $STD_FILESAVE = 8
Global Const $STD_PRINTPRE = 9
Global Const $STD_PROPERTIES = 10
Global Const $STD_HELP = 11
Global Const $STD_FIND = 12
Global Const $STD_REPLACE = 13
Global Const $STD_PRINT = 14
Global Const $KB_SENDSPECIAL = 0
Global Const $KB_SENDRAW = 1
Global Const $KB_CAPSOFF = 0
Global Const $KB_CAPSON = 1
Global Const $S_OK = 0x00000000
Global Const $E_ABORT = 0x80004004
Global Const $E_ACCESSDENIED = 0x80070005
Global Const $E_FAIL = 0x80004005
Global Const $E_HANDLE = 0x80070006
Global Const $E_INVALIDARG = 0x80070057
Global Const $E_NOINTERFACE = 0x80004002
Global Const $E_NOTIMPL = 0x80004001
Global Const $E_OUTOFMEMORY = 0x8007000E
Global Const $E_POINTER = 0x80004003
Global Const $E_UNEXPECTED = 0x8000FFFF
#Region Global Variables and Constants
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CharToOem($sStr)
Local $aCall, $sRetStr = "", $nLen = StringLen($sStr) + 1, $iStart = 1
While $iStart < $nLen
$aCall = DllCall('user32.dll', 'bool', 'CharToOemW', 'wstr', StringMid($sStr, $iStart, 65536), 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
$iStart += 65536
$sRetStr &= $aCall[2]
WEnd
Return $sRetStr
EndFunc
Func _WinAPI_ClientToScreen($hWnd, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $hWnd, "struct*", $tPoint)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPoint
EndFunc
Func _WinAPI_DWordToFloat($iValue)
Local $tDWord = DllStructCreate('dword')
Local $tFloat = DllStructCreate('float', DllStructGetPtr($tDWord))
DllStructSetData($tDWord, 1, $iValue)
Return DllStructGetData($tFloat, 1)
EndFunc
Func _WinAPI_DWordToInt($iValue)
Local $tData = DllStructCreate('int')
DllStructSetData($tData, 1, $iValue)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_FloatToDWord($iValue)
Local $tFloat = DllStructCreate('float')
Local $tDWord = DllStructCreate('dword', DllStructGetPtr($tFloat))
DllStructSetData($tFloat, 1, $iValue)
Return DllStructGetData($tDWord, 1)
EndFunc
Func _WinAPI_FloatToInt($nFloat)
Local $tFloat = DllStructCreate("float")
Local $tInt = DllStructCreate("int", DllStructGetPtr($tFloat))
DllStructSetData($tFloat, 1, $nFloat)
Return DllStructGetData($tInt, 1)
EndFunc
Func _WinAPI_GetXYFromPoint(ByRef $tPoint, ByRef $iX, ByRef $iY)
$iX = DllStructGetData($tPoint, "X")
$iY = DllStructGetData($tPoint, "Y")
EndFunc
Func _WinAPI_GUIDFromString($sGUID)
Local $tGUID = DllStructCreate($tagGUID)
If Not _WinAPI_GUIDFromStringEx($sGUID, $tGUID) Then Return SetError(@error, @extended, 0)
Return $tGUID
EndFunc
Func _WinAPI_GUIDFromStringEx($sGUID, $tGUID)
Local $aCall = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $sGUID, "struct*", $tGUID)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _WinAPI_HashData($pMemory, $iSize, $iLength = 32)
If ($iLength <= 0) Or ($iLength > 256) Then Return SetError(11, 0, 0)
Local $tData = DllStructCreate('byte[' & $iLength & ']')
Local $aCall = DllCall('shlwapi.dll', 'uint', 'HashData', 'struct*', $pMemory, 'dword', $iSize, 'struct*', $tData, 'dword', $iLength)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_HashString($sString, $bCaseSensitive = True, $iLength = 32)
Local $iLengthS = StringLen($sString)
If Not $iLengthS Or ($iLength > 256) Then Return SetError(12, 0, 0)
Local $tString = DllStructCreate('wchar[' & ($iLengthS + 1) & ']')
If Not $bCaseSensitive Then
$sString = StringLower($sString)
EndIf
DllStructSetData($tString, 1, $sString)
Local $sHash = _WinAPI_HashData($tString, 2 * $iLengthS, $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return $sHash
EndFunc
Func _WinAPI_HiByte($iValue)
Return BitAND(BitShift($iValue, 8), 0xFF)
EndFunc
Func _WinAPI_HiDWord($iValue)
Local $tInt64 = DllStructCreate('int64')
Local $tQWord = DllStructCreate('dword;dword', DllStructGetPtr($tInt64))
DllStructSetData($tInt64, 1, $iValue)
Return DllStructGetData($tQWord, 2)
EndFunc
Func _WinAPI_HiWord($iLong)
Return BitShift($iLong, 16)
EndFunc
Func _WinAPI_IntToDWord($iValue)
Local $tData = DllStructCreate('dword')
DllStructSetData($tData, 1, $iValue)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_IntToFloat($iInt)
Local $tInt = DllStructCreate("int")
Local $tFloat = DllStructCreate("float", DllStructGetPtr($tInt))
DllStructSetData($tInt, 1, $iInt)
Return DllStructGetData($tFloat, 1)
EndFunc
Func _WinAPI_LoByte($iValue)
Return BitAND($iValue, 0xFF)
EndFunc
Func _WinAPI_LoDWord($iValue)
Local $tInt64 = DllStructCreate('int64')
Local $tQWord = DllStructCreate('dword;dword', DllStructGetPtr($tInt64))
DllStructSetData($tInt64, 1, $iValue)
Return DllStructGetData($tQWord, 1)
EndFunc
Func _WinAPI_LoWord($iLong)
Return BitAND($iLong, 0xFFFF)
EndFunc
Func _WinAPI_LongMid($iValue, $iStart, $iCount)
Return BitAND(BitShift($iValue, $iStart), BitOR(BitShift(BitShift(0x7FFFFFFF, 32 - ($iCount + 1)), 1), BitShift(1, -($iCount - 1))))
EndFunc
Func _WinAPI_MAKELANGID($iLngIDPrimary, $iLngIDSub)
Return BitOR(BitShift($iLngIDSub, -10), $iLngIDPrimary)
EndFunc
Func _WinAPI_MAKELCID($iLngID, $iSortID)
Return BitOR(BitShift($iSortID, -16), $iLngID)
EndFunc
Func _WinAPI_MakeLong($iLo, $iHi)
Return BitOR(BitShift($iHi, -16), BitAND($iLo, 0xFFFF))
EndFunc
Func _WinAPI_MakeQWord($iLoDWORD, $iHiDWORD)
Local $tInt64 = DllStructCreate("uint64")
Local $tDwords = DllStructCreate("dword;dword", DllStructGetPtr($tInt64))
DllStructSetData($tDwords, 1, $iLoDWORD)
DllStructSetData($tDwords, 2, $iHiDWORD)
Return DllStructGetData($tInt64, 1)
EndFunc
Func _WinAPI_MakeWord($iLo, $iHi)
Local $tWord = DllStructCreate('ushort')
Local $tByte = DllStructCreate('byte;byte', DllStructGetPtr($tWord))
DllStructSetData($tByte, 1, $iHi)
DllStructSetData($tByte, 2, $iLo)
Return DllStructGetData($tWord, 1)
EndFunc
Func _WinAPI_MultiByteToWideChar($vText, $iCodePage = 0, $iFlags = 0, $bRetString = False)
Local $sTextType = ""
If IsString($vText) Then $sTextType = "str"
If (IsDllStruct($vText) Or IsPtr($vText)) Then $sTextType = "struct*"
If $sTextType = "" Then Return SetError(1, 0, 0)
Local $aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags,  $sTextType, $vText, "int", -1, "ptr", 0, "int", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $iOut = $aCall[0]
Local $tOut = DllStructCreate("wchar[" & $iOut & "]")
$aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags, $sTextType, $vText,  "int", -1, "struct*", $tOut, "int", $iOut)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
If $bRetString Then Return DllStructGetData($tOut, 1)
Return $tOut
EndFunc
Func _WinAPI_MultiByteToWideCharEx($sText, $pText, $iCodePage = 0, $iFlags = 0)
Local $aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags, "STR", $sText,  "int", -1, "struct*", $pText, "int", (StringLen($sText) + 1) * 2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_OemToChar($sStr)
Local $aCall, $sRetStr = "", $nLen = StringLen($sStr) + 1, $iStart = 1
While $iStart < $nLen
$aCall = DllCall('user32.dll', 'bool', 'OemToCharA', 'str', StringMid($sStr, $iStart, 65536), 'str', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
$sRetStr &= $aCall[2]
$iStart += 65536
WEnd
Return $sRetStr
EndFunc
Func _WinAPI_PointFromRect(ByRef $tRECT, $bCenter = True)
Local $iX1 = DllStructGetData($tRECT, "Left")
Local $iY1 = DllStructGetData($tRECT, "Top")
Local $iX2 = DllStructGetData($tRECT, "Right")
Local $iY2 = DllStructGetData($tRECT, "Bottom")
If $bCenter Then
$iX1 = $iX1 + (($iX2 - $iX1) / 2)
$iY1 = $iY1 + (($iY2 - $iY1) / 2)
EndIf
Local $tPoint = DllStructCreate($tagPOINT)
DllStructSetData($tPoint, "X", $iX1)
DllStructSetData($tPoint, "Y", $iY1)
Return $tPoint
EndFunc
Func _WinAPI_PrimaryLangId($iLngID)
Return BitAND($iLngID, 0x3FF)
EndFunc
Func _WinAPI_ScreenToClient($hWnd, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hWnd, "struct*", $tPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShortToWord($iValue)
Return BitAND($iValue, 0x0000FFFF)
EndFunc
Func _WinAPI_StrFormatByteSize($iSize)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'StrFormatByteSizeW', 'int64', $iSize, 'wstr', '', 'uint', 1024)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_StrFormatByteSizeEx($iSize)
Local $aSymbol = DllCall('kernel32.dll', 'int', 'GetLocaleInfoW', 'dword', 0x0400, 'dword', 0x000F, 'wstr', '', 'int', 2048)
If @error Then Return SetError(@error + 10, @extended, '')
Local $sSize = _WinAPI_StrFormatByteSize(0)
If @error Then Return SetError(@error, @extended, '')
Return StringReplace($sSize, '0', StringRegExpReplace(Number($iSize), '(?<=\d)(?=(\d{3})+\z)', $aSymbol[3]))
EndFunc
Func _WinAPI_StrFormatKBSize($iSize)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'StrFormatKBSizeW', 'int64', $iSize, 'wstr', '', 'uint', 1024)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_StrFromTimeInterval($iTime, $iDigits = 7)
Local $aCall = DllCall('shlwapi.dll', 'int', 'StrFromTimeIntervalW', 'wstr', '', 'uint', 1024, 'dword', $iTime,  'int', $iDigits)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return StringStripWS($aCall[1], $STR_STRIPLEADING + $STR_STRIPTRAILING)
EndFunc
Func _WinAPI_StringFromGUID($tGUID)
Local $aCall = DllCall("ole32.dll", "int", "StringFromGUID2", "struct*", $tGUID, "wstr", "", "int", 40)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, "")
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_SubLangId($iLngID)
Return BitShift($iLngID, 10)
EndFunc
Func _WinAPI_SwapDWord($iValue)
Local $tStruct1 = DllStructCreate('dword;dword')
Local $tStruct2 = DllStructCreate('byte[4];byte[4]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 4
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 5 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_SwapQWord($iValue)
Local $tStruct1 = DllStructCreate('int64;int64')
Local $tStruct2 = DllStructCreate('byte[8];byte[8]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 8
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 9 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_SwapWord($iValue)
Local $tStruct1 = DllStructCreate('word;word')
Local $tStruct2 = DllStructCreate('byte[2];byte[2]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 2
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 3 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_WideCharToMultiByte($vUnicode, $iCodePage = 0, $bRetNoStruct = True, $bRetBinary = False)
Local $sUnicodeType = "wstr"
If Not IsString($vUnicode) Then $sUnicodeType = "struct*"
Local $aCall = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $iCodePage, "dword", 0, $sUnicodeType, $vUnicode, "int", -1,  "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, "")
Local $tMultiByte = DllStructCreate((($bRetBinary) ? ("byte") : ("char")) & "[" & $aCall[0] & "]")
$aCall = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $iCodePage, "dword", 0, $sUnicodeType, $vUnicode,  "int", -1, "struct*", $tMultiByte, "int", $aCall[0], "ptr", 0, "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
If $bRetNoStruct Then Return DllStructGetData($tMultiByte, 1)
Return $tMultiByte
EndFunc
Func _WinAPI_WordToShort($iValue)
If BitAND($iValue, 0x00008000) Then
Return BitOR($iValue, 0xFFFF8000)
EndIf
Return BitAND($iValue, 0x00007FFF)
EndFunc
#EndRegion Public Functions
Global Const $__DLG_WM_USER = 0x400
Global Const $BIF_BROWSEFILEJUNCTIONS = 0x00010000
Global Const $BIF_BROWSEFORCOMPUTER = 0x00001000
Global Const $BIF_BROWSEFORPRINTER = 0x00002000
Global Const $BIF_BROWSEINCLUDEFILES = 0x00004000
Global Const $BIF_BROWSEINCLUDEURLS = 0x00000080
Global Const $BIF_DONTGOBELOWDOMAIN = 0x00000002
Global Const $BIF_EDITBOX = 0x00000010
Global Const $BIF_NEWDIALOGSTYLE = 0x00000040
Global Const $BIF_NONEWFOLDERBUTTON = 0x00000200
Global Const $BIF_NOTRANSLATETARGETS = 0x00000400
Global Const $BIF_RETURNFSANCESTORS = 0x00000008
Global Const $BIF_RETURNONLYFSDIRS = 0x00000001
Global Const $BIF_SHAREABLE = 0x00008000
Global Const $BIF_STATUSTEXT = 0x00000004
Global Const $BIF_USENEWUI = BitOR($BIF_EDITBOX, $BIF_NEWDIALOGSTYLE)
Global Const $BIF_UAHINT = 0x00000100
Global Const $BIF_VALIDATE = 0x00000020
Global Const $BFFM_INITIALIZED = 1
Global Const $BFFM_IUNKNOWN = 5
Global Const $BFFM_SELCHANGED = 2
Global Const $BFFM_VALIDATEFAILED = 4
Global Const $BFFM_SETSTATUSTEXTA = $__DLG_WM_USER + 100
Global Const $BFFM_ENABLEOK = $__DLG_WM_USER + 101
Global Const $BFFM_SETSELECTIONA = $__DLG_WM_USER + 102
Global Const $BFFM_SETSELECTIONW = $__DLG_WM_USER + 103
Global Const $BFFM_SETSTATUSTEXTW = $__DLG_WM_USER + 104
Global Const $BFFM_SETOKTEXT = $__DLG_WM_USER + 105
Global Const $BFFM_SETEXPANDED = $__DLG_WM_USER + 106
Global Const $CDERR_DIALOGFAILURE = 0xFFFF
Global Const $CDERR_FINDRESFAILURE = 0x0006
Global Const $CDERR_INITIALIZATION = 0x0002
Global Const $CDERR_LOADRESFAILURE = 0x0007
Global Const $CDERR_LOADSTRFAILURE = 0x0005
Global Const $CDERR_LOCKRESFAILURE = 0x0008
Global Const $CDERR_MEMALLOCFAILURE = 0x0009
Global Const $CDERR_MEMLOCKFAILURE = 0x000A
Global Const $CDERR_NOHINSTANCE = 0x0004
Global Const $CDERR_NOHOOK = 0x000B
Global Const $CDERR_NOTEMPLATE = 0x0003
Global Const $CDERR_REGISTERMSGFAIL = 0x000C
Global Const $CDERR_STRUCTSIZE = 0x0001
Global Const $PDERR_CREATEICFAILURE = 0x100A
Global Const $PDERR_DEFAULTDIFFERENT = 0x100C
Global Const $PDERR_DNDMMISMATCH = 0x1009
Global Const $PDERR_GETDEVMODEFAIL = 0x1005
Global Const $PDERR_INITFAILURE = 0x1006
Global Const $PDERR_LOADDRVFAILURE = 0x1004
Global Const $PDERR_NODEFAULTPRN = 0x1008
Global Const $PDERR_NODEVICES = 0x1007
Global Const $PDERR_PARSEFAILURE = 0x1002
Global Const $PDERR_PRINTERNOTFOUND = 0x100B
Global Const $PDERR_RETDEFFAILURE = 0x1003
Global Const $PDERR_SETUPFAILURE = 0x1001
Global Const $CFERR_MAXLESSTHANMIN = 0x2002
Global Const $CFERR_NOFONTS = 0x2001
Global Const $FNERR_BUFFERTOOSMALL = 0x3003
Global Const $FNERR_INVALIDFILENAME = 0x3002
Global Const $FNERR_SUBCLASSFAILURE = 0x3001
Global Const $FRERR_BUFFERLENGTHZERO = 0x4001
Global Const $FR_DIALOGTERM = 0x00000040
Global Const $FR_DOWN = 0x00000001
Global Const $FR_ENABLEHOOK = 0x00000100
Global Const $FR_ENABLETEMPLATE = 0x00000200
Global Const $FR_ENABLETEMPLATEHANDLE = 0x00002000
Global Const $FR_FINDNEXT = 0x00000008
Global Const $FR_HIDEUPDOWN = 0x00004000
Global Const $FR_HIDEMATCHCASE = 0x00008000
Global Const $FR_HIDEWHOLEWORD = 0x00010000
Global Const $FR_MATCHCASE = 0x00000004
Global Const $FR_NOMATCHCASE = 0x00000800
Global Const $FR_NOUPDOWN = 0x00000400
Global Const $FR_NOWHOLEWORD = 0x00001000
Global Const $FR_REPLACE = 0x00000010
Global Const $FR_REPLACEALL = 0x00000020
Global Const $FR_SHOWHELP = 0x00000080
Global Const $FR_WHOLEWORD = 0x00000002
Global Const $SHFMT_ID_DEFAULT = 0xFFFF
Global Const $SHFMT_OPT_FULL = 0x00
Global Const $SHFMT_OPT_QUICKFORMAT = 0x01
Global Const $SHFMT_OPT_SYSONLY = 0x02
Global Const $SHFMT_ERROR = -1
Global Const $SHFMT_CANCEL = -2
Global Const $SHFMT_NOFORMAT = -3
Global Const $CDM_FIRST = $__DLG_WM_USER + 100
Global Const $CDM_GETSPEC = $CDM_FIRST
Global Const $CDM_GETFILEPATH = $CDM_FIRST + 1
Global Const $CDM_GETFOLDERPATH = $CDM_FIRST + 2
Global Const $CDM_GETFOLDERIDLIST = $CDM_FIRST + 3
Global Const $CDM_SETCONTROLTEXT = $CDM_FIRST + 4
Global Const $CDM_HIDECONTROL = $CDM_FIRST + 5
Global Const $CDM_SETDEFEXT = $CDM_FIRST + 6
Global Const $CDM_LAST = $__DLG_WM_USER + 200
Global Const $CDN_FIRST = -601
Global Const $CDN_INITDONE = $CDN_FIRST
Global Const $CDN_SELCHANGE = $CDN_FIRST - 1
Global Const $CDN_FOLDERCHANGE = $CDN_FIRST - 2
Global Const $CDN_SHAREVIOLATION = $CDN_FIRST - 3
Global Const $CDN_HELP = $CDN_FIRST - 4
Global Const $CDN_FILEOK = $CDN_FIRST - 5
Global Const $CDN_TYPECHANGE = $CDN_FIRST - 6
Global Const $CDN_INCLUDEITEM = $CDN_FIRST - 7
Global Const $CDN_LAST = -699
Global Const $PSD_DEFAULTMINMARGINS = 0x00000000
Global Const $PSD_DISABLEMARGINS = 0x00000010
Global Const $PSD_DISABLEORIENTATION = 0x00000100
Global Const $PSD_DISABLEPAGEPAINTING = 0x00080000
Global Const $PSD_DISABLEPAPER = 0x00000200
Global Const $PSD_DISABLEPRINTER = 0x00000020
Global Const $PSD_ENABLEPAGEPAINTHOOK = 0x00040000
Global Const $PSD_ENABLEPAGESETUPHOOK = 0x00002000
Global Const $PSD_ENABLEPAGESETUPTEMPLATE = 0x00008000
Global Const $PSD_ENABLEPAGESETUPTEMPLATEHANDLE = 0x00020000
Global Const $PSD_INHUNDREDTHSOFMILLIMETERS = 0x00000008
Global Const $PSD_INTHOUSANDTHSOFINCHES = 0x00000004
Global Const $PSD_MARGINS = 0x00000002
Global Const $PSD_MINMARGINS = 0x00000001
Global Const $PSD_NONETWORKBUTTON = 0x00200000
Global Const $PSD_NOWARNING = 0x00000080
Global Const $PSD_RETURNDEFAULT = 0x00000400
Global Const $PSD_SHOWHELP = 0x00000800
Global Const $WM_PSD_PAGESETUPDLG = $__DLG_WM_USER
Global Const $WM_PSD_FULLPAGERECT = $__DLG_WM_USER + 1
Global Const $WM_PSD_MINMARGINRECT = $__DLG_WM_USER + 2
Global Const $WM_PSD_MARGINRECT = $__DLG_WM_USER + 3
Global Const $WM_PSD_GREEKTEXTRECT = $__DLG_WM_USER + 4
Global Const $WM_PSD_ENVSTAMPRECT = $__DLG_WM_USER + 5
Global Const $WM_PSD_YAFULLPAGERECT = $__DLG_WM_USER + 6
Global Const $PD_ALLPAGES = 0x00000000
Global Const $PD_COLLATE = 0x00000010
Global Const $PD_CURRENTPAGE = 0x00400000
Global Const $PD_DISABLEPRINTTOFILE = 0x00080000
Global Const $PD_ENABLEPRINTHOOK = 0x00001000
Global Const $PD_ENABLEPRINTTEMPLATE = 0x00004000
Global Const $PD_ENABLEPRINTTEMPLATEHANDLE = 0x00010000
Global Const $PD_ENABLESETUPHOOK = 0x00002000
Global Const $PD_ENABLESETUPTEMPLATE = 0x00008000
Global Const $PD_ENABLESETUPTEMPLATEHANDLE = 0x00020000
Global Const $PD_EXCLUSIONFLAGS = 0x01000000
Global Const $PD_HIDEPRINTTOFILE = 0x00100000
Global Const $PD_NOCURRENTPAGE = 0x00800000
Global Const $PD_NONETWORKBUTTON = 0x00200000
Global Const $PD_NOPAGENUMS = 0x00000008
Global Const $PD_NOSELECTION = 0x00000004
Global Const $PD_NOWARNING = 0x00000080
Global Const $PD_PAGENUMS = 0x00000002
Global Const $PD_PRINTSETUP = 0x00000040
Global Const $PD_PRINTTOFILE = 0x00000020
Global Const $PD_RETURNDC = 0x00000100
Global Const $PD_RETURNDEFAULT = 0x00000400
Global Const $PD_RETURNIC = 0x00000200
Global Const $PD_SELECTION = 0x00000001
Global Const $PD_SHOWHELP = 0x00000800
Global Const $PD_USEDEVMODECOPIES = 0x00040000
Global Const $PD_USEDEVMODECOPIESANDCOLLATE = $PD_USEDEVMODECOPIES
Global Const $PD_USELARGETEMPLATE = 0x10000000
Global Const $PD_RESULT_APPLY = 2
Global Const $PD_RESULT_CANCEL = 0
Global Const $PD_RESULT_PRINT = 1
Global Const $EWX_LOGOFF = 0
Global Const $EWX_POWEROFF = 8
Global Const $EWX_REBOOT = 2
Global Const $EWX_SHUTDOWN = 1
Global Const $EWX_FORCE = 4
Global Const $EWX_FORCEIFHUNG = 16
Global Const $OAIF_ALLOW_REGISTRATION = 0x00000001
Global Const $OAIF_REGISTER_EXT = 0x00000002
Global Const $OAIF_EXEC = 0x00000004
Global Const $OAIF_FORCE_REGISTRATION = 0x00000008
Global Const $OAIF_HIDE_REGISTRATION = 0x00000020
Global Const $OAIF_URL_PROTOCOL = 0x00000040
Global Const $CREDUI_FLAGS_ALWAYS_SHOW_UI = 0x00000080
Global Const $CREDUI_FLAGS_COMPLETE_USERNAME = 0x00000800
Global Const $CREDUI_FLAGS_DO_NOT_PERSIST = 0x00000002
Global Const $CREDUI_FLAGS_EXCLUDE_CERTIFICATES = 0x00000008
Global Const $CREDUI_FLAGS_EXPECT_CONFIRMATION = 0x00020000
Global Const $CREDUI_FLAGS_GENERIC_CREDENTIALS = 0x00040000
Global Const $CREDUI_FLAGS_INCORRECT_PASSWORD = 0x00000001
Global Const $CREDUI_FLAGS_KEEP_USERNAME = 0x00100000
Global Const $CREDUI_FLAGS_PASSWORD_ONLY_OK = 0x00000200
Global Const $CREDUI_FLAGS_PERSIST = 0x00001000
Global Const $CREDUI_FLAGS_REQUEST_ADMINISTRATOR = 0x00000004
Global Const $CREDUI_FLAGS_REQUIRE_CERTIFICATE = 0x00000010
Global Const $CREDUI_FLAGS_REQUIRE_SMARTCARD = 0x00000100
Global Const $CREDUI_FLAGS_SERVER_CREDENTIAL = 0x00004000
Global Const $CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = 0x00000040
Global Const $CREDUI_FLAGS_USERNAME_TARGET_CREDENTIALS = 0x00080000
Global Const $CREDUI_FLAGS_VALIDATE_USERNAME = 0x00000400
Global Const $CREDUIWIN_AUTHPACKAGE_ONLY = 0x00000010
Global Const $CREDUIWIN_CHECKBOX = 0x00000002
Global Const $CREDUIWIN_ENUMERATE_ADMINS = 0x00000100
Global Const $CREDUIWIN_ENUMERATE_CURRENT_USER = 0x00000200
Global Const $CREDUIWIN_GENERIC = 0x00000001
Global Const $CREDUIWIN_IN_CRED_ONLY = 0x00000020
Global Const $CREDUIWIN_SECURE_PROMPT = 0x00001000
Global Const $CREDUIWIN_PACK_32_WOW = 0x10000000
Global Const $CREDUIWIN_PREPROMPTING = 0x00002000
Global Const $COINIT_APARTMENTTHREADED = 0x02
Global Const $COINIT_DISABLE_OLE1DDE = 0x04
Global Const $COINIT_MULTITHREADED = 0x00
Global Const $COINIT_SPEED_OVER_MEMORY = 0x08
#Region Global Variables and Constants
Global Const $__tagWinAPICom_GUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CLSIDFromProgID($sProgID)
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromProgID', 'wstr', $sProgID, 'struct*', $tGUID)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
$aCall = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 39)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_CoInitialize($iFlags = 0)
Local $aCall = DllCall('ole32.dll', 'long', 'CoInitializeEx', 'ptr', 0, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_CoTaskMemAlloc($iSize)
Local $aCall = DllCall('ole32.dll', 'ptr', 'CoTaskMemAlloc', 'uint_ptr', $iSize)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CoTaskMemFree($pMemory)
DllCall('ole32.dll', 'none', 'CoTaskMemFree', 'ptr', $pMemory)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_CoTaskMemRealloc($pMemory, $iSize)
Local $aCall = DllCall('ole32.dll', 'ptr', 'CoTaskMemRealloc', 'ptr', $pMemory, 'ulong_ptr', $iSize)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CoUninitialize()
DllCall('ole32.dll', 'none', 'CoUninitialize')
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_CreateGUID()
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CoCreateGuid', 'struct*', $tGUID)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
$aCall = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 65536)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_CreateStreamOnHGlobal($hGlobal = 0, $bDeleteOnRelease = True)
Local $aCall = DllCall('ole32.dll', 'long', 'CreateStreamOnHGlobal', 'handle', $hGlobal, 'bool', $bDeleteOnRelease, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_GetHGlobalFromStream($pStream)
Local $aCall = DllCall('ole32.dll', 'uint', 'GetHGlobalFromStream', 'ptr', $pStream, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _WinAPI_ProgIDFromCLSID($sCLSID)
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $sCLSID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, '')
$aCall = DllCall('ole32.dll', 'uint', 'ProgIDFromCLSID', 'struct*', $tGUID, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $sID = _WinAPI_GetString($aCall[2])
_WinAPI_CoTaskMemFree($aCall[2])
Return $sID
EndFunc
Func _WinAPI_ReleaseStream($pStream)
Local $aCall = DllCall('oleaut32.dll', 'long', 'DispCallFunc', 'ptr', $pStream, 'ulong_ptr', 8 * (1 + @AutoItX64), 'uint', 4,  'ushort', 23, 'uint', 0, 'ptr', 0, 'ptr', 0, 'str', '')
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
#EndRegion Public Functions
#Region Global Variables and Constants
Global $__g_hHeap = 0
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CreateBuffer($iLength, $pBuffer = 0, $bAbort = True)
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 0, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
Return $pBuffer
EndFunc
Func _WinAPI_CreateBufferFromStruct($tStruct, $pBuffer = 0, $bAbort = True)
If Not IsDllStruct($tStruct) Then Return SetError(1, 0, 0)
$pBuffer = __HeapReAlloc($pBuffer, DllStructGetSize($tStruct), 0, $bAbort)
If @error Then Return SetError(@error + 100, @extended, 0)
_WinAPI_MoveMemory($pBuffer, $tStruct, DllStructGetSize($tStruct))
Return $pBuffer
EndFunc
Func _WinAPI_CreateString($sString, $pString = 0, $iLength = -1, $bUnicode = True, $bAbort = True)
$iLength = Number($iLength)
If $iLength >= 0 Then
$sString = StringLeft($sString, $iLength)
Else
$iLength = StringLen($sString)
EndIf
Local $iSize = $iLength + 1
If $bUnicode Then
$iSize *= 2
EndIf
$pString = __HeapReAlloc($pString, $iSize, 0, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
DllStructSetData(DllStructCreate(($bUnicode ? 'wchar' : 'char') & '[' & ($iLength + 1) & ']', $pString), 1, $sString)
Return SetExtended($iLength, $pString)
EndFunc
Func _WinAPI_EqualMemory($pSource1, $pSource2, $iLength)
If _WinAPI_IsBadReadPtr($pSource1, $iLength) Then Return SetError(11, @extended, 0)
If _WinAPI_IsBadReadPtr($pSource2, $iLength) Then Return SetError(12, @extended, 0)
Local $aCall = DllCall('ntdll.dll', 'ulong_ptr', 'RtlCompareMemory', 'struct*', $pSource1, 'struct*', $pSource2, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return Number($aCall[0] = $iLength)
EndFunc
Func _WinAPI_FillMemory($pMemory, $iLength, $iValue = 0)
If _WinAPI_IsBadWritePtr($pMemory, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlFillMemory', 'struct*', $pMemory, 'ulong_ptr', $iLength, 'byte', $iValue)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_FreeMemory($pMemory)
If Not __HeapFree($pMemory, 1) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_GetMemorySize($pMemory)
Local $iResult = __HeapSize($pMemory, 1)
If @error Then Return SetError(@error, @extended, 0)
Return $iResult
EndFunc
Func _WinAPI_GlobalMemoryStatus()
Local Const $tagMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" &  "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" &  "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Local $tMem = DllStructCreate($tagMEMORYSTATUSEX)
DllStructSetData($tMem, 1, DllStructGetSize($tMem))
Local $aCall = DllCall("kernel32.dll", "bool", "GlobalMemoryStatusEx", "struct*", $tMem)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aMem[7]
$aMem[0] = DllStructGetData($tMem, 2)
$aMem[1] = DllStructGetData($tMem, 3)
$aMem[2] = DllStructGetData($tMem, 4)
$aMem[3] = DllStructGetData($tMem, 5)
$aMem[4] = DllStructGetData($tMem, 6)
$aMem[5] = DllStructGetData($tMem, 7)
$aMem[6] = DllStructGetData($tMem, 8)
Return $aMem
EndFunc
Func _WinAPI_IsBadCodePtr($pAddress)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadCodePtr', 'struct*', $pAddress)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadReadPtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadReadPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadStringPtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadStringPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadWritePtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadWritePtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsMemory($pMemory)
Local $bResult = __HeapValidate($pMemory)
Return SetError(@error, @extended, $bResult)
EndFunc
Func _WinAPI_LocalFree($hMemory)
Local $aCall = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveMemory($pDestination, $pSource, $iLength)
If _WinAPI_IsBadReadPtr($pSource, $iLength) Then Return SetError(10, @extended, 0)
If _WinAPI_IsBadWritePtr($pDestination, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlMoveMemory', 'struct*', $pDestination, 'struct*', $pSource, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ReadProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize, ByRef $iRead)
Local $aCall = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $hProcess,  "ptr", $pBaseAddress, "struct*", $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
$iRead = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_WriteProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize, ByRef $iWritten, $sBufferType = "ptr")
Local $aCall = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $hProcess, "ptr", $pBaseAddress,  $sBufferType, $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
$iWritten = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_ZeroMemory($pMemory, $iLength)
If _WinAPI_IsBadWritePtr($pMemory, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlZeroMemory', 'struct*', $pMemory, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __HeapAlloc($iSize, $bAbort = False)
Local $aCall
If Not $__g_hHeap Then
$aCall = DllCall('kernel32.dll', 'handle', 'HeapCreate', 'dword', 0, 'ulong_ptr', 0, 'ulong_ptr', 0)
If @error Or Not $aCall[0] Then __FatalExit(1, 'Error allocating memory.')
$__g_hHeap = $aCall[0]
EndIf
$aCall = DllCall('kernel32.dll', 'ptr', 'HeapAlloc', 'handle', $__g_hHeap, 'dword', 0x00000008, 'ulong_ptr', $iSize)
If @error Or Not $aCall[0] Then
If $bAbort Then __FatalExit(1, 'Error allocating memory.')
Return SetError(@error + 30, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func __HeapFree(ByRef $pMemory, $bCheck = False, $iCurErr = @error, $iCurExt = @extended)
If $bCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'int', 'HeapFree', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Or Not $aCall[0] Then Return SetError(@error + 40, @extended, 0)
$pMemory = 0
Return SetError($iCurErr, $iCurExt, 1)
EndFunc
Func __HeapReAlloc($pMemory, $iSize, $bAmount = False, $bAbort = False)
Local $pRet
If __HeapValidate($pMemory) Then
If $bAmount And (__HeapSize($pMemory) >= $iSize) Then Return SetExtended(1, Ptr($pMemory))
Local $aCall = DllCall('kernel32.dll', 'ptr', 'HeapReAlloc', 'handle', $__g_hHeap, 'dword', 0x00000008, 'ptr', $pMemory,  'ulong_ptr', $iSize)
If @error Or Not $aCall[0] Then
If $bAbort Then __FatalExit(1, 'Error allocating memory.')
Return SetError(@error + 20, @extended, Ptr($pMemory))
EndIf
$pRet = $aCall[0]
Else
$pRet = __HeapAlloc($iSize, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
EndIf
Return $pRet
EndFunc
Func __HeapSize($pMemory, $bCheck = False)
If $bCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'ulong_ptr', 'HeapSize', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error + 50, @extended, 0)
Return $aCall[0]
EndFunc
Func __HeapValidate($pMemory)
If (Not $__g_hHeap) Or (Not Ptr($pMemory)) Then Return SetError(9, 0, False)
Local $aCall = DllCall('kernel32.dll', 'int', 'HeapValidate', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Internal Functions
Global Const $SND_APPLICATION = 0x00000080
Global Const $SND_ALIAS = 0x00010000
Global Const $SND_ALIAS_ID = 0x00110000
Global Const $SND_ASYNC = 0x00000001
Global Const $SND_FILENAME = 0x00020000
Global Const $SND_LOOP = 0x00000008
Global Const $SND_MEMORY = 0x00000004
Global Const $SND_NODEFAULT = 0x00000002
Global Const $SND_NOSTOP = 0x00000010
Global Const $SND_NOWAIT = 0x00002000
Global Const $SND_PURGE = 0x00000040
Global Const $SND_RESOURCE = 0x00040004
Global Const $SND_SENTRY = 0x00080000
Global Const $SND_SYNC = 0x00000000
Global Const $SND_SYSTEM = 0x00200000
Global Const $SND_SYSTEM_NOSTOP = 0x00200010
Global Const $SND_ALIAS_SYSTEMASTERISK = 'SystemAsterisk'
Global Const $SND_ALIAS_SYSTEMDEFAULT = 'SystemDefault'
Global Const $SND_ALIAS_SYSTEMEXCLAMATION = 'SystemExclamation'
Global Const $SND_ALIAS_SYSTEMEXIT = 'SystemExit'
Global Const $SND_ALIAS_SYSTEMHAND = 'SystemHand'
Global Const $SND_ALIAS_SYSTEMQUESTION = 'SystemQuestion'
Global Const $SND_ALIAS_SYSTEMSTART = 'SystemStart'
Global Const $SND_ALIAS_SYSTEMWELCOME = 'SystemWelcome'
#Region Global Variables and Constants
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_ArrayToStruct(Const ByRef $aData, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aData, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'wchar[' & (StringLen($aData[$i]) + 1) & '];'
Next
Local $tData = DllStructCreate($tagStruct & 'wchar[1]')
Local $iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tData, $iCount, $aData[$i])
$iCount += 1
Next
DllStructSetData($tData, $iCount, ChrW(0))
Return $tData
EndFunc
Func _WinAPI_CreateMargins($iLeftWidth, $iRightWidth, $iTopHeight, $iBottomHeight)
Local $tMARGINS = DllStructCreate($tagMARGINS)
DllStructSetData($tMARGINS, 1, $iLeftWidth)
DllStructSetData($tMARGINS, 2, $iRightWidth)
DllStructSetData($tMARGINS, 3, $iTopHeight)
DllStructSetData($tMARGINS, 4, $iBottomHeight)
Return $tMARGINS
EndFunc
Func _WinAPI_CreatePoint($iX, $iY)
Local $tPOINT = DllStructCreate($tagPOINT)
DllStructSetData($tPOINT, 1, $iX)
DllStructSetData($tPOINT, 2, $iY)
Return $tPOINT
EndFunc
Func _WinAPI_CreateRect($iLeft, $iTop, $iRight, $iBottom)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, $iLeft)
DllStructSetData($tRECT, 2, $iTop)
DllStructSetData($tRECT, 3, $iRight)
DllStructSetData($tRECT, 4, $iBottom)
Return $tRECT
EndFunc
Func _WinAPI_CreateRectEx($iX, $iY, $iWidth, $iHeight)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, $iX)
DllStructSetData($tRECT, 2, $iY)
DllStructSetData($tRECT, 3, $iX + $iWidth)
DllStructSetData($tRECT, 4, $iY + $iHeight)
Return $tRECT
EndFunc
Func _WinAPI_CreateSize($iWidth, $iHeight)
Local $tSIZE = DllStructCreate($tagSIZE)
DllStructSetData($tSIZE, 1, $iWidth)
DllStructSetData($tSIZE, 2, $iHeight)
Return $tSIZE
EndFunc
Func _WinAPI_CopyStruct($tStruct, $sStruct = '')
Local $iSize = DllStructGetSize($tStruct)
If Not $iSize Then Return SetError(1, 0, 0)
Local $tResult
If Not StringStripWS($sStruct, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES) Then
$tResult = DllStructCreate('byte[' & $iSize & ']')
Else
$tResult = DllStructCreate($sStruct)
EndIf
If DllStructGetSize($tResult) < $iSize Then Return SetError(2, 0, 0)
_WinAPI_MoveMemory($tResult, $tStruct, $iSize)
Return $tResult
EndFunc
Func _WinAPI_GetExtended()
Return $__g_vExt
EndFunc
Func _WinAPI_GetMousePos($bToClient = False, $hWnd = 0)
Local $iMode = Opt("MouseCoordMode", 1)
Local $aPos = MouseGetPos()
Opt("MouseCoordMode", $iMode)
Local $tPOINT = DllStructCreate($tagPOINT)
DllStructSetData($tPOINT, "X", $aPos[0])
DllStructSetData($tPOINT, "Y", $aPos[1])
If $bToClient And Not _WinAPI_ScreenToClient($hWnd, $tPOINT) Then Return SetError(@error + 20, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetMousePosX($bToClient = False, $hWnd = 0)
Local $tPOINT = _WinAPI_GetMousePos($bToClient, $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPOINT, "X")
EndFunc
Func _WinAPI_GetMousePosY($bToClient = False, $hWnd = 0)
Local $tPOINT = _WinAPI_GetMousePos($bToClient, $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPOINT, "Y")
EndFunc
Func _WinAPI_MulDiv($iNumber, $iNumerator, $iDenominator)
Local $aCall = DllCall("kernel32.dll", "int", "MulDiv", "int", $iNumber, "int", $iNumerator, "int", $iDenominator)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_PlaySound($sSound, $iFlags = $SND_SYSTEM_NOSTOP, $hInstance = 0)
Local $sTypeOfSound = 'ptr'
If $sSound Then
If IsString($sSound) Then
$sTypeOfSound = 'wstr'
EndIf
Else
$sSound = 0
$iFlags = 0
EndIf
Local $aCall = DllCall('winmm.dll', 'bool', 'PlaySoundW', $sTypeOfSound, $sSound, 'handle', $hInstance, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StringLenA(Const ByRef $tString)
Local $aCall = DllCall("kernel32.dll", "int", "lstrlenA", "struct*", $tString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StringLenW(Const ByRef $tString)
Local $aCall = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $tString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StructToArray(ByRef $tStruct, $iItems = 0)
Local $iSize = 2 * Floor(DllStructGetSize($tStruct) / 2)
Local $pStruct = DllStructGetPtr($tStruct)
If Not $iSize Or Not $pStruct Then Return SetError(1, 0, 0)
Local $tData, $iLength, $iOffset = 0
Local $aRet[101] = [0]
While 1
$iLength = _WinAPI_StrLen($pStruct + $iOffset)
If Not $iLength Then
ExitLoop
EndIf
If 2 * (1 + $iLength) + $iOffset > $iSize Then Return SetError(3, 0, 0)
$tData = DllStructCreate('wchar[' & (1 + $iLength) & ']', $pStruct + $iOffset)
If @error Then Return SetError(@error + 10, 0, 0)
__Inc($aRet)
$aRet[$aRet[0]] = DllStructGetData($tData, 1)
If $aRet[0] = $iItems Then
ExitLoop
EndIf
$iOffset += 2 * (1 + $iLength)
If $iOffset >= $iSize Then Return SetError(3, 0, 0)
WEnd
If Not $aRet[0] Then Return SetError(2, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_UnionStruct($tStruct1, $tStruct2, $sStruct = '')
Local $aSize[2] = [DllStructGetSize($tStruct1), DllStructGetSize($tStruct2)]
If Not $aSize[0] Or Not $aSize[1] Then Return SetError(1, 0, 0)
Local $tResult
If Not StringStripWS($sStruct, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES) Then
$tResult = DllStructCreate('byte[' & ($aSize[0] + $aSize[1]) & ']')
Else
$tResult = DllStructCreate($sStruct)
EndIf
If DllStructGetSize($tResult) < ($aSize[0] + $aSize[1]) Then Return SetError(2, 0, 0)
_WinAPI_MoveMemory($tResult, $tStruct1, $aSize[0])
_WinAPI_MoveMemory(DllStructGetPtr($tResult) + $aSize[0], $tStruct2, $aSize[1])
Return $tResult
EndFunc
#EndRegion Public Functions
Global Const $DLLVER_PLATFORM_WINDOWS = 0x01
Global Const $DLLVER_PLATFORM_NT = 0x02
Global Const $SHCNE_ALLEVENTS = 0x7FFFFFFF
Global Const $SHCNE_ASSOCCHANGED = 0x8000000
Global Const $SHCNE_ATTRIBUTES = 0x00000800
Global Const $SHCNE_CREATE = 0x00000002
Global Const $SHCNE_DELETE = 0x00000004
Global Const $SHCNE_DRIVEADD = 0x00000100
Global Const $SHCNE_DRIVEADDGUI = 0x00010000
Global Const $SHCNE_DRIVEREMOVED = 0x00000080
Global Const $SHCNE_EXTENDED_EVENT = 0x04000000
Global Const $SHCNE_FREESPACE = 0x00040000
Global Const $SHCNE_MEDIAINSERTED = 0x00000020
Global Const $SHCNE_MEDIAREMOVED = 0x00000040
Global Const $SHCNE_MKDIR = 0x00000008
Global Const $SHCNE_NETSHARE = 0x00000200
Global Const $SHCNE_NETUNSHARE = 0x00000400
Global Const $SHCNE_RENAMEFOLDER = 0x00020000
Global Const $SHCNE_RENAMEITEM = 0x00000001
Global Const $SHCNE_RMDIR = 0x00000010
Global Const $SHCNE_SERVERDISCONNECT = 0x00004000
Global Const $SHCNE_UPDATEDIR = 0x00001000
Global Const $SHCNE_UPDATEIMAGE = 0x00008000
Global Const $SHCNE_UPDATEITEM = 0x00002000
Global Const $SHCNE_DISKEVENTS = 0x0002381F
Global Const $SHCNE_GLOBALEVENTS = 0x0C0581E0
Global Const $SHCNE_INTERRUPT = 0x80000000
Global Const $SHCNF_DWORD = 0x00000003
Global Const $SHCNF_IDLIST = 0x00000000
Global Const $SHCNF_PATH = 0x00000001
Global Const $SHCNF_PRINTER = 0x00000002
Global Const $SHCNF_FLUSH = 0x00001000
Global Const $SHCNF_FLUSHNOWAIT = 0x00002000
Global Const $SHCNF_NOTIFYRECURSIVE = 0x00010000
Global Const $SHCNRF_INTERRUPTLEVEL = 0x0001
Global Const $SHCNRF_SHELLLEVEL = 0x0002
Global Const $SHCNRF_RECURSIVEINTERRUPT = 0x1000
Global Const $SHCNRF_NEWDELIVERY = 0x8000
Global Const $SHERB_NOCONFIRMATION = 0x01
Global Const $SHERB_NOPROGRESSUI = 0x02
Global Const $SHERB_NOSOUND = 0x04
Global Const $SHERB_NO_UI = BitOR($SHERB_NOCONFIRMATION, $SHERB_NOPROGRESSUI, $SHERB_NOSOUND)
Global Const $SEE_MASK_DEFAULT = 0x00000000
Global Const $SEE_MASK_CLASSNAME = 0x00000001
Global Const $SEE_MASK_CLASSKEY = 0x00000003
Global Const $SEE_MASK_IDLIST = 0x00000004
Global Const $SEE_MASK_INVOKEIDLIST = 0x0000000C
Global Const $SEE_MASK_ICON = 0x00000010
Global Const $SEE_MASK_HOTKEY = 0x00000020
Global Const $SEE_MASK_NOCLOSEPROCESS = 0x00000040
Global Const $SEE_MASK_CONNECTNETDRV = 0x00000080
Global Const $SEE_MASK_NOASYNC = 0x00000100
Global Const $SEE_MASK_FLAG_DDEWAIT = $SEE_MASK_NOASYNC
Global Const $SEE_MASK_DOENVSUBST = 0x00000200
Global Const $SEE_MASK_FLAG_NO_UI = 0x00000400
Global Const $SEE_MASK_UNICODE = 0x00004000
Global Const $SEE_MASK_NO_CONSOLE = 0x00008000
Global Const $SEE_MASK_ASYNCOK = 0x00100000
Global Const $SEE_MASK_NOQUERYCLASSSTORE = 0x01000000
Global Const $SEE_MASK_HMONITOR = 0x00200000
Global Const $SEE_MASK_NOZONECHECKS = 0x00800000
Global Const $SEE_MASK_WAITFORINPUTIDLE = 0x02000000
Global Const $SEE_MASK_FLAG_LOG_USAGE = 0x04000000
Global Const $SE_ERR_ACCESSDENIED = 5
Global Const $SE_ERR_ASSOCINCOMPLETE = 27
Global Const $SE_ERR_DDEBUSY = 30
Global Const $SE_ERR_DDEFAIL = 29
Global Const $SE_ERR_DDETIMEOUT = 28
Global Const $SE_ERR_DLLNOTFOUND = 32
Global Const $SE_ERR_FNF = 2
Global Const $SE_ERR_NOASSOC = 31
Global Const $SE_ERR_OOM = 8
Global Const $SE_ERR_PNF = 3
Global Const $SE_ERR_SHARE = 26
Global Const $FO_COPY = 2
Global Const $FO_DELETE = 3
Global Const $FO_MOVE = 1
Global Const $FO_RENAME = 4
Global Const $FOF_ALLOWUNDO = 0x0040
Global Const $FOF_CONFIRMMOUSE = 0x0002
Global Const $FOF_FILESONLY = 0x0080
Global Const $FOF_MULTIDESTFILES = 0x0001
Global Const $FOF_NOCONFIRMATION = 0x0010
Global Const $FOF_NOCONFIRMMKDIR = 0x0200
Global Const $FOF_NO_CONNECTED_ELEMENTS = 0x2000
Global Const $FOF_NOCOPYSECURITYATTRIBS = 0x0800
Global Const $FOF_NOERRORUI = 0x0400
Global Const $FOF_NORECURSEREPARSE = 0x8000
Global Const $FOF_NORECURSION = 0x1000
Global Const $FOF_RENAMEONCOLLISION = 0x0008
Global Const $FOF_SILENT = 0x0004
Global Const $FOF_SIMPLEPROGRESS = 0x0100
Global Const $FOF_WANTMAPPINGHANDLE = 0x0020
Global Const $FOF_WANTNUKEWARNING = 0x4000
Global Const $FOF_NO_UI = BitOR($FOF_NOCONFIRMATION, $FOF_NOCONFIRMMKDIR, $FOF_NOERRORUI, $FOF_SILENT)
Global Const $SHGFI_ADDOVERLAYS = 0x00000020
Global Const $SHGFI_ATTR_SPECIFIED = 0x00020000
Global Const $SHGFI_ATTRIBUTES = 0x00000800
Global Const $SHGFI_DISPLAYNAME = 0x00000200
Global Const $SHGFI_EXETYPE = 0x00002000
Global Const $SHGFI_ICON = 0x00000100
Global Const $SHGFI_ICONLOCATION = 0x00001000
Global Const $SHGFI_LARGEICON = 0x00000000
Global Const $SHGFI_LINKOVERLAY = 0x00008000
Global Const $SHGFI_OPENICON = 0x00000002
Global Const $SHGFI_OVERLAYINDEX = 0x00000040
Global Const $SHGFI_PIDL = 0x00000008
Global Const $SHGFI_SELECTED = 0x00010000
Global Const $SHGFI_SHELLICONSIZE = 0x00000004
Global Const $SHGFI_SMALLICON = 0x00000001
Global Const $SHGFI_SYSICONINDEX = 0x00004000
Global Const $SHGFI_TYPENAME = 0x00000400
Global Const $SHGFI_USEFILEATTRIBUTES = 0x00000010
Global Const $SFGAO_CANCOPY = 0x00000001
Global Const $SFGAO_CANMOVE = 0x00000002
Global Const $SFGAO_CANLINK = 0x00000004
Global Const $SFGAO_STORAGE = 0x00000008
Global Const $SFGAO_CANRENAME = 0x00000010
Global Const $SFGAO_CANDELETE = 0x00000020
Global Const $SFGAO_HASPROPSHEET = 0x00000040
Global Const $SFGAO_DROPTARGET = 0x00000100
Global Const $SFGAO_CAPABILITYMASK = BitOR($SFGAO_CANCOPY, $SFGAO_CANMOVE, $SFGAO_CANLINK, $SFGAO_CANRENAME, $SFGAO_CANDELETE, $SFGAO_HASPROPSHEET, $SFGAO_DROPTARGET)
Global Const $SFGAO_SYSTEM = 0x00001000
Global Const $SFGAO_ENCRYPTED = 0x00002000
Global Const $SFGAO_ISSLOW = 0x00004000
Global Const $SFGAO_GHOSTED = 0x00008000
Global Const $SFGAO_LINK = 0x00010000
Global Const $SFGAO_SHARE = 0x00020000
Global Const $SFGAO_READONLY = 0x00040000
Global Const $SFGAO_HIDDEN = 0x00080000
Global Const $SFGAO_DISPLAYATTRMASK = BitOR($SFGAO_ISSLOW, $SFGAO_GHOSTED, $SFGAO_LINK, $SFGAO_SHARE, $SFGAO_READONLY, $SFGAO_HIDDEN)
Global Const $SFGAO_NONENUMERATED = 0x00100000
Global Const $SFGAO_NEWCONTENT = 0x00200000
Global Const $SFGAO_STREAM = 0x00400000
Global Const $SFGAO_STORAGEANCESTOR = 0x00800000
Global Const $SFGAO_VALIDATE = 0x01000000
Global Const $SFGAO_REMOVABLE = 0x02000000
Global Const $SFGAO_COMPRESSED = 0x04000000
Global Const $SFGAO_BROWSABLE = 0x08000000
Global Const $SFGAO_FILESYSANCESTOR = 0x10000000
Global Const $SFGAO_FOLDER = 0x20000000
Global Const $SFGAO_FILESYSTEM = 0x40000000
Global Const $SFGAO_STORAGECAPMASK = BitOR($SFGAO_STORAGE, $SFGAO_LINK, $SFGAO_READONLY, $SFGAO_STREAM, $SFGAO_STORAGEANCESTOR, $SFGAO_FILESYSANCESTOR, $SFGAO_FOLDER, $SFGAO_FILESYSTEM)
Global Const $SFGAO_HASSUBFOLDER = 0x80000000
Global Const $SFGAO_CONTENTSMASK = $SFGAO_HASSUBFOLDER
Global Const $SFGAO_PKEYSFGAOMASK = BitOR($SFGAO_ISSLOW, $SFGAO_READONLY, $SFGAO_HASSUBFOLDER, $SFGAO_VALIDATE)
Global Const $IDO_SHGIOI_DEFAULT = 0x0FFFFFFC
Global Const $IDO_SHGIOI_LINK = 0x0FFFFFFE
Global Const $IDO_SHGIOI_SHARE = 0x0FFFFFFF
Global Const $IDO_SHGIOI_SLOWFILE = 0x0FFFFFFD
Global Const $FCSM_VIEWID = 0x0001
Global Const $FCSM_WEBVIEWTEMPLATE = 0x0002
Global Const $FCSM_INFOTIP = 0x0004
Global Const $FCSM_CLSID = 0x0008
Global Const $FCSM_ICONFILE = 0x0010
Global Const $FCSM_LOGO = 0x0020
Global Const $FCSM_FLAGS = 0x0040
Global Const $FCS_READ = 0x0001
Global Const $FCS_FORCEWRITE = 0x0002
Global Const $FCS_WRITE = BitOR($FCS_READ, $FCS_FORCEWRITE)
Global Const $SSF_AUTOCHECKSELECT = 0x00800000
Global Const $SSF_DESKTOPHTML = 0x00000200
Global Const $SSF_DONTPRETTYPATH = 0x00000800
Global Const $SSF_DOUBLECLICKINWEBVIEW = 0x00000080
Global Const $SSF_HIDEICONS = 0x00004000
Global Const $SSF_ICONSONLY = 0x01000000
Global Const $SSF_MAPNETDRVBUTTON = 0x00001000
Global Const $SSF_NOCONFIRMRECYCLE = 0x00008000
Global Const $SSF_NONETCRAWLING = 0x00100000
Global Const $SSF_SEPPROCESS = 0x00080000
Global Const $SSF_SHOWALLOBJECTS = 0x00000001
Global Const $SSF_SHOWCOMPCOLOR = 0x00000008
Global Const $SSF_SHOWEXTENSIONS = 0x00000002
Global Const $SSF_SHOWINFOTIP = 0x00002000
Global Const $SSF_SHOWSUPERHIDDEN = 0x00040000
Global Const $SSF_SHOWSYSFILES = 0x00000020
Global Const $SSF_SHOWTYPEOVERLAY = 0x02000000
Global Const $SSF_STARTPANELON = 0x00200000
Global Const $SSF_WIN95CLASSIC = 0x00000400
Global Const $SSF_WEBVIEW = 0x00020000
Global Const $CSIDL_ADMINTOOLS = 0x0030
Global Const $CSIDL_ALTSTARTUP = 0x001D
Global Const $CSIDL_APPDATA = 0x001A
Global Const $CSIDL_BITBUCKET = 0x000A
Global Const $CSIDL_CDBURN_AREA = 0x003B
Global Const $CSIDL_COMMON_ADMINTOOLS = 0x002F
Global Const $CSIDL_COMMON_ALTSTARTUP = 0x001E
Global Const $CSIDL_COMMON_APPDATA = 0x0023
Global Const $CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019
Global Const $CSIDL_COMMON_DOCUMENTS = 0x002E
Global Const $CSIDL_COMMON_FAVORITES = 0x001F
Global Const $CSIDL_COMMON_MUSIC = 0x0035
Global Const $CSIDL_COMMON_PICTURES = 0x0036
Global Const $CSIDL_COMMON_PROGRAMS = 0x0017
Global Const $CSIDL_COMMON_STARTMENU = 0x0016
Global Const $CSIDL_COMMON_STARTUP = 0x0018
Global Const $CSIDL_COMMON_TEMPLATES = 0x002D
Global Const $CSIDL_COMMON_VIDEO = 0x0037
Global Const $CSIDL_COMPUTERSNEARME = 0x003D
Global Const $CSIDL_CONNECTIONS = 0x0031
Global Const $CSIDL_CONTROLS = 0x0003
Global Const $CSIDL_COOKIES = 0x0021
Global Const $CSIDL_DESKTOP = 0x0000
Global Const $CSIDL_DESKTOPDIRECTORY = 0x0010
Global Const $CSIDL_DRIVES = 0x0011
Global Const $CSIDL_FAVORITES = 0x0006
Global Const $CSIDL_FONTS = 0x0014
Global Const $CSIDL_INTERNET_CACHE = 0x0020
Global Const $CSIDL_HISTORY = 0x0022
Global Const $CSIDL_LOCAL_APPDATA = 0x001C
Global Const $CSIDL_MYMUSIC = 0x000D
Global Const $CSIDL_MYPICTURES = 0x0027
Global Const $CSIDL_MYVIDEO = 0x000E
Global Const $CSIDL_NETHOOD = 0x0013
Global Const $CSIDL_PERSONAL = 0x0005
Global Const $CSIDL_PRINTERS = 0x0004
Global Const $CSIDL_PRINTHOOD = 0x001B
Global Const $CSIDL_PROFILE = 0x0028
Global Const $CSIDL_PROGRAM_FILES = 0x0026
Global Const $CSIDL_PROGRAM_FILES_COMMON = 0x002B
Global Const $CSIDL_PROGRAM_FILES_COMMONX86 = 0x002C
Global Const $CSIDL_PROGRAM_FILESX86 = 0x002A
Global Const $CSIDL_PROGRAMS = 0x0002
Global Const $CSIDL_RECENT = 0x0008
Global Const $CSIDL_SENDTO = 0x0009
Global Const $CSIDL_STARTMENU = 0x000B
Global Const $CSIDL_STARTUP = 0x0007
Global Const $CSIDL_SYSTEM = 0x0025
Global Const $CSIDL_SYSTEMX86 = 0x0029
Global Const $CSIDL_TEMPLATES = 0x0015
Global Const $CSIDL_WINDOWS = 0x0024
Global Const $SIID_DOCNOASSOC = 0
Global Const $SIID_DOCASSOC = 1
Global Const $SIID_APPLICATION = 2
Global Const $SIID_FOLDER = 3
Global Const $SIID_FOLDEROPEN = 4
Global Const $SIID_DRIVE525 = 5
Global Const $SIID_DRIVE35 = 6
Global Const $SIID_DRIVEREMOVE = 7
Global Const $SIID_DRIVEFIXED = 8
Global Const $SIID_DRIVENET = 9
Global Const $SIID_DRIVENETDISABLED = 10
Global Const $SIID_DRIVECD = 11
Global Const $SIID_DRIVERAM = 12
Global Const $SIID_WORLD = 13
Global Const $SIID_SERVER = 15
Global Const $SIID_PRINTER = 16
Global Const $SIID_MYNETWORK = 17
Global Const $SIID_FIND = 22
Global Const $SIID_HELP = 23
Global Const $SIID_SHARE = 28
Global Const $SIID_LINK = 29
Global Const $SIID_SLOWFILE = 30
Global Const $SIID_RECYCLER = 31
Global Const $SIID_RECYCLERFULL = 32
Global Const $SIID_MEDIACDAUDIO = 40
Global Const $SIID_LOCK = 47
Global Const $SIID_AUTOLIST = 49
Global Const $SIID_PRINTERNET = 50
Global Const $SIID_SERVERSHARE = 51
Global Const $SIID_PRINTERFAX = 52
Global Const $SIID_PRINTERFAXNET = 53
Global Const $SIID_PRINTERFILE = 54
Global Const $SIID_STACK = 55
Global Const $SIID_MEDIASVCD = 56
Global Const $SIID_STUFFEDFOLDER = 57
Global Const $SIID_DRIVEUNKNOWN = 58
Global Const $SIID_DRIVEDVD = 59
Global Const $SIID_MEDIADVD = 60
Global Const $SIID_MEDIADVDRAM = 61
Global Const $SIID_MEDIADVDRW = 62
Global Const $SIID_MEDIADVDR = 63
Global Const $SIID_MEDIADVDROM = 64
Global Const $SIID_MEDIACDAUDIOPLUS = 65
Global Const $SIID_MEDIACDRW = 66
Global Const $SIID_MEDIACDR = 67
Global Const $SIID_MEDIACDBURN = 68
Global Const $SIID_MEDIABLANKCD = 69
Global Const $SIID_MEDIACDROM = 70
Global Const $SIID_AUDIOFILES = 71
Global Const $SIID_IMAGEFILES = 72
Global Const $SIID_VIDEOFILES = 73
Global Const $SIID_MIXEDFILES = 74
Global Const $SIID_FOLDERBACK = 75
Global Const $SIID_FOLDERFRONT = 76
Global Const $SIID_SHIELD = 77
Global Const $SIID_WARNING = 78
Global Const $SIID_INFO = 79
Global Const $SIID_ERROR = 80
Global Const $SIID_KEY = 81
Global Const $SIID_SOFTWARE = 82
Global Const $SIID_RENAME = 83
Global Const $SIID_DELETE = 84
Global Const $SIID_MEDIAAUDIODVD = 85
Global Const $SIID_MEDIAMOVIEDVD = 86
Global Const $SIID_MEDIAENHANCEDCD = 87
Global Const $SIID_MEDIAENHANCEDDVD = 88
Global Const $SIID_MEDIAHDDVD = 89
Global Const $SIID_MEDIABLURAY = 90
Global Const $SIID_MEDIAVCD = 91
Global Const $SIID_MEDIADVDPLUSR = 92
Global Const $SIID_MEDIADVDPLUSRW = 93
Global Const $SIID_DESKTOPPC = 94
Global Const $SIID_MOBILEPC = 95
Global Const $SIID_USERS = 96
Global Const $SIID_MEDIASMARTMEDIA = 97
Global Const $SIID_MEDIACOMPACTFLASH = 98
Global Const $SIID_DEVICECELLPHONE = 99
Global Const $SIID_DEVICECAMERA = 100
Global Const $SIID_DEVICEVIDEOCAMERA = 101
Global Const $SIID_DEVICEAUDIOPLAYER = 102
Global Const $SIID_NETWORKCONNECT = 103
Global Const $SIID_INTERNET = 104
Global Const $SIID_ZIPFILE = 105
Global Const $SIID_SETTINGS = 106
Global Const $SIID_DRIVEHDDVD = 132
Global Const $SIID_DRIVEBD = 133
Global Const $SIID_MEDIAHDDVDROM = 134
Global Const $SIID_MEDIAHDDVDR = 135
Global Const $SIID_MEDIAHDDVDRAM = 136
Global Const $SIID_MEDIABDROM = 137
Global Const $SIID_MEDIABDR = 138
Global Const $SIID_MEDIABDRE = 139
Global Const $SIID_CLUSTEREDDRIVE = 140
Global Const $SIID_MAX_ICONS = 174
Global Const $SHGSI_ICONLOCATION = 0
Global Const $SHGSI_ICON = $SHGFI_ICON
Global Const $SHGSI_SYSICONINDEX = $SHGFI_SYSICONINDEX
Global Const $SHGSI_LINKOVERLAY = $SHGFI_LINKOVERLAY
Global Const $SHGSI_SELECTED = $SHGFI_SELECTED
Global Const $SHGSI_LARGEICON = $SHGFI_LARGEICON
Global Const $SHGSI_SMALLICON = $SHGFI_SMALLICON
Global Const $SHGSI_SHELLICONSIZE = $SHGFI_SHELLICONSIZE
Global Const $NIM_ADD = 0x00
Global Const $NIM_MODIFY = 0x01
Global Const $NIM_DELETE = 0x02
Global Const $NIM_SETFOCUS = 0x03
Global Const $NIM_SETVERSION = 0x04
Global Const $NIF_MESSAGE = 0x01
Global Const $NIF_ICON = 0x02
Global Const $NIF_TIP = 0x04
Global Const $NIF_STATE = 0x08
Global Const $NIF_INFO = 0x10
Global Const $NIF_GUID = 0x20
Global Const $NIF_REALTIME = 0x40
Global Const $NIF_SHOWTIP = 0x80
Global Const $NIS_HIDDEN = 0x01
Global Const $NIS_SHAREDICON = 0x02
Global Const $NIIF_NONE = 0x00
Global Const $NIIF_INFO = 0x01
Global Const $NIIF_WARNING = 0x02
Global Const $NIIF_ERROR = 0x03
Global Const $NIIF_USER = 0x04
Global Const $NIIF_NOSOUND = 0x10
Global Const $NIIF_LARGE_ICON = 0x10
Global Const $NIIF_RESPECT_QUIET_TIME = 0x80
Global Const $NIIF_ICON_MASK = 0x0F
Global Const $SHOP_PRINTERNAME = 1
Global Const $SHOP_FILEPATH = 2
Global Const $SHOP_VOLUMEGUID = 4
Global Const $OFASI_EDIT = 0x01
Global Const $OFASI_OPENDESKTOP = 0x02
Global Const $QUNS_NOT_PRESENT = 1
Global Const $QUNS_BUSY = 2
Global Const $QUNS_RUNNING_D3D_FULL_SCREEN = 3
Global Const $QUNS_PRESENTATION_MODE = 4
Global Const $QUNS_ACCEPTS_NOTIFICATIONS = 5
Global Const $QUNS_QUIET_TIME = 6
Global Const $REST_NORUN = 1
Global Const $REST_NOCLOSE = 2
Global Const $REST_NOSAVESET = 3
Global Const $REST_NOFILEMENU = 4
Global Const $REST_NOSETFOLDERS = 5
Global Const $REST_NOSETTASKBAR = 6
Global Const $REST_NODESKTOP = 7
Global Const $REST_NOFIND = 8
Global Const $REST_NODRIVES = 9
Global Const $REST_NODRIVEAUTORUN = 10
Global Const $REST_NODRIVETYPEAUTORUN = 11
Global Const $REST_NONETHOOD = 12
Global Const $REST_STARTBANNER = 13
Global Const $REST_RESTRICTRUN = 14
Global Const $REST_NOPRINTERTABS = 15
Global Const $REST_NOPRINTERDELETE = 16
Global Const $REST_NOPRINTERADD = 17
Global Const $REST_NOSTARTMENUSUBFOLDERS = 18
Global Const $REST_MYDOCSONNET = 19
Global Const $REST_NOEXITTODOS = 20
Global Const $REST_ENFORCESHELLEXTSECURITY = 21
Global Const $REST_LINKRESOLVEIGNORELINKINFO = 22
Global Const $REST_NOCOMMONGROUPS = 23
Global Const $REST_SEPARATEDESKTOPPROCESS = 24
Global Const $REST_NOWEB = 25
Global Const $REST_NOTRAYCONTEXTMENU = 26
Global Const $REST_NOVIEWCONTEXTMENU = 27
Global Const $REST_NONETCONNECTDISCONNECT = 28
Global Const $REST_STARTMENULOGOFF = 29
Global Const $REST_NOSETTINGSASSIST = 30
Global Const $REST_NOINTERNETICON = 31
Global Const $REST_NORECENTDOCSHISTORY = 32
Global Const $REST_NORECENTDOCSMENU = 33
Global Const $REST_NOACTIVEDESKTOP = 34
Global Const $REST_NOACTIVEDESKTOPCHANGES = 35
Global Const $REST_NOFAVORITESMENU = 36
Global Const $REST_CLEARRECENTDOCSONEXIT = 37
Global Const $REST_CLASSICSHELL = 38
Global Const $REST_NOCUSTOMIZEWEBVIEW = 39
Global Const $REST_NOHTMLWALLPAPER = 40
Global Const $REST_NOCHANGINGWALLPAPER = 41
Global Const $REST_NODESKCOMP = 42
Global Const $REST_NOADDDESKCOMP = 43
Global Const $REST_NODELDESKCOMP = 44
Global Const $REST_NOCLOSEDESKCOMP = 45
Global Const $REST_NOCLOSE_DRAGDROPBAND = 46
Global Const $REST_NOMOVINGBAND = 47
Global Const $REST_NOEDITDESKCOMP = 48
Global Const $REST_NORESOLVESEARCH = 49
Global Const $REST_NORESOLVETRACK = 50
Global Const $REST_FORCECOPYACLWITHFILE = 51
Global Const $REST_NOLOGO3CHANNELNOTIFY = 52
Global Const $REST_NOFORGETSOFTWAREUPDATE = 53
Global Const $REST_NOSETACTIVEDESKTOP = 54
Global Const $REST_NOUPDATEWINDOWS = 55
Global Const $REST_NOCHANGESTARMENU = 56
Global Const $REST_NOFOLDEROPTIONS = 57
Global Const $REST_HASFINDCOMPUTERS = 58
Global Const $REST_INTELLIMENUS = 59
Global Const $REST_RUNDLGMEMCHECKBOX = 60
Global Const $REST_ARP_ShowPostSetup = 61
Global Const $REST_NOCSC = 62
Global Const $REST_NOCONTROLPANEL = 63
Global Const $REST_ENUMWORKGROUP = 64
Global Const $REST_ARP_NOARP = 65
Global Const $REST_ARP_NOREMOVEPAGE = 66
Global Const $REST_ARP_NOADDPAGE = 67
Global Const $REST_ARP_NOWINSETUPPAGE = 68
Global Const $REST_GREYMSIADS = 69
Global Const $REST_NOCHANGEMAPPEDDRIVELABEL = 70
Global Const $REST_NOCHANGEMAPPEDDRIVECOMMENT = 71
Global Const $REST_MAXRECENTDOCS = 72
Global Const $REST_NONETWORKCONNECTIONS = 73
Global Const $REST_FORCESTARTMENULOGOFF = 74
Global Const $REST_NOWEBVIEW = 75
Global Const $REST_NOCUSTOMIZETHISFOLDER = 76
Global Const $REST_NOENCRYPTION = 77
Global Const $REST_DONTSHOWSUPERHIDDEN = 78
Global Const $REST_NOSHELLSEARCHBUTTON = 79
Global Const $REST_NOHARDWARETAB = 80
Global Const $REST_NORUNASINSTALLPROMPT = 81
Global Const $REST_PROMPTRUNASINSTALLNETPATH = 82
Global Const $REST_NOMANAGEMYCOMPUTERVERB = 83
Global Const $REST_NORECENTDOCSNETHOOD = 84
Global Const $REST_DISALLOWRUN = 85
Global Const $REST_NOWELCOMESCREEN = 86
Global Const $REST_RESTRICTCPL = 87
Global Const $REST_DISALLOWCPL = 88
Global Const $REST_NOSMBALLOONTIP = 89
Global Const $REST_NOSMHELP = 90
Global Const $REST_NOWINKEYS = 91
Global Const $REST_NOENCRYPTONMOVE = 92
Global Const $REST_NOLOCALMACHINERUN = 93
Global Const $REST_NOCURRENTUSERRUN = 94
Global Const $REST_NOLOCALMACHINERUNONCE = 95
Global Const $REST_NOCURRENTUSERRUNONCE = 96
Global Const $REST_FORCEACTIVEDESKTOPON = 97
Global Const $REST_NOCOMPUTERSNEARME = 98
Global Const $REST_NOVIEWONDRIVE = 99
Global Const $REST_NONETCRAWL = 100
Global Const $REST_NOSHAREDDOCUMENTS = 101
Global Const $REST_NOSMMYDOCS = 102
Global Const $REST_NOSMMYPICS = 103
Global Const $REST_ALLOWBITBUCKDRIVES = 104
Global Const $REST_NONLEGACYSHELLMODE = 105
Global Const $REST_NOCONTROLPANELBARRICADE = 106
Global Const $REST_NOSTARTPAGE = 107
Global Const $REST_NOAUTOTRAYNOTIFY = 108
Global Const $REST_NOTASKGROUPING = 109
Global Const $REST_NOCDBURNING = 110
Global Const $REST_MYCOMPNOPROP = 111
Global Const $REST_MYDOCSNOPROP = 112
Global Const $REST_NOSTARTPANEL = 113
Global Const $REST_NODISPLAYAPPEARANCEPAGE = 114
Global Const $REST_NOTHEMESTAB = 115
Global Const $REST_NOVISUALSTYLECHOICE = 116
Global Const $REST_NOSIZECHOICE = 117
Global Const $REST_NOCOLORCHOICE = 118
Global Const $REST_SETVISUALSTYLE = 119
Global Const $REST_STARTRUNNOHOMEPATH = 120
Global Const $REST_NOUSERNAMEINSTARTPANEL = 121
Global Const $REST_NOMYCOMPUTERICON = 122
Global Const $REST_NOSMNETWORKPLACES = 123
Global Const $REST_NOSMPINNEDLIST = 124
Global Const $REST_NOSMMYMUSIC = 125
Global Const $REST_NOSMEJECTPC = 126
Global Const $REST_NOSMMOREPROGRAMS = 127
Global Const $REST_NOSMMFUPROGRAMS = 128
Global Const $REST_NOTRAYITEMSDISPLAY = 129
Global Const $REST_NOTOOLBARSONTASKBAR = 130
Global Const $REST_NOSMCONFIGUREPROGRAMS = 131
Global Const $REST_HIDECLOCK = 132
Global Const $REST_NOLOWDISKSPACECHECKS = 133
Global Const $REST_NOENTIRENETWORK = 134
Global Const $REST_NODESKTOPCLEANUP = 135
Global Const $REST_BITBUCKNUKEONDELETE = 136
Global Const $REST_BITBUCKCONFIRMDELETE = 137
Global Const $REST_BITBUCKNOPROP = 138
Global Const $REST_NODISPBACKGROUND = 139
Global Const $REST_NODISPSCREENSAVEPG = 140
Global Const $REST_NODISPSETTINGSPG = 141
Global Const $REST_NODISPSCREENSAVEPREVIEW = 142
Global Const $REST_NODISPLAYCPL = 143
Global Const $REST_HIDERUNASVERB = 144
Global Const $REST_NOTHUMBNAILCACHE = 145
Global Const $REST_NOSTRCMPLOGICAL = 146
Global Const $REST_NOPUBLISHWIZARD = 147
Global Const $REST_NOONLINEPRINTSWIZARD = 148
Global Const $REST_NOWEBSERVICES = 149
Global Const $REST_ALLOWUNHASHEDWEBVIEW = 150
Global Const $REST_ALLOWLEGACYWEBVIEW = 151
Global Const $REST_REVERTWEBVIEWSECURITY = 152
Global Const $REST_INHERITCONSOLEHANDLES = 153
Global Const $REST_SORTMAXITEMCOUNT = 154
Global Const $REST_NOREMOTERECURSIVEEVENTS = 155
Global Const $REST_NOREMOTECHANGENOTIFY = 156
Global Const $REST_NOSIMPLENETIDLIST = 157
Global Const $REST_NOENUMENTIRENETWORK = 158
Global Const $REST_NODETAILSTHUMBNAILONNETWORK = 159
Global Const $REST_NOINTERNETOPENWITH = 160
Global Const $REST_ALLOWLEGACYLMZBEHAVIOR = 161
Global Const $REST_DONTRETRYBADNETNAME = 162
Global Const $REST_ALLOWFILECLSIDJUNCTIONS = 163
Global Const $REST_NOUPNPINSTALL = 164
Global Const $REST_ARP_DONTGROUPPATCHES = 165
Global Const $REST_ARP_NOCHOOSEPROGRAMSPAGE = 166
Global Const $REST_NODISCONNECT = 167
Global Const $REST_NOSECURITY = 168
Global Const $REST_NOFILEASSOCIATE = 169
Global Const $REST_ALLOWCOMMENTTOGGLE = 170
Global Const $REST_USEDESKTOPINICACHE = 171
Global Const $GIL_DONTCACHE = 0x0010
Global Const $GIL_NOTFILENAME = 0x0008
Global Const $GIL_PERCLASS = 0x0004
Global Const $GIL_PERINSTANCE = 0x0002
Global Const $GIL_SIMULATEDOC = 0x0001
Global Const $GIL_SHIELD = 0x0200
Global Const $GIL_FORCENOSHIELD = 0x0400
Global Const $FOLDERID_AddNewPrograms = '{DE61D971-5EBC-4F02-A3A9-6C82895E5C04}'
Global Const $FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}'
Global Const $FOLDERID_AppUpdates = '{A305CE99-F527-492B-8B1A-7E76FA98D6E4}'
Global Const $FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}'
Global Const $FOLDERID_ChangeRemovePrograms = '{DF7266AC-9274-4867-8D55-3BD661DE872D}'
Global Const $FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}'
Global Const $FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}'
Global Const $FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}'
Global Const $FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}'
Global Const $FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}'
Global Const $FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}'
Global Const $FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}'
Global Const $FOLDERID_ConflictFolder = '{4BFEFB45-347D-4006-A5BE-AC0CB0567192}'
Global Const $FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}'
Global Const $FOLDERID_Contacts = '{56784854-C6CB-462B-8169-88E350ACB882}'
Global Const $FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}'
Global Const $FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}'
Global Const $FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}'
Global Const $FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}'
Global Const $FOLDERID_DocumentsLibrary = '{7B0DB17D-9CD2-4A93-9733-46CC89022E7C}'
Global Const $FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}'
Global Const $FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}'
Global Const $FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}'
Global Const $FOLDERID_Games = '{CAC52C1A-B53D-4EDC-92D7-6B2E8AC19434}'
Global Const $FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}'
Global Const $FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}'
Global Const $FOLDERID_HomeGroup = '{52528A6B-B9E3-4ADD-B60D-588C2DBA842D}'
Global Const $FOLDERID_ImplicitAppShortcuts = '{BCB5256F-79F6-4CEE-B725-DC34E402FD46}'
Global Const $FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}'
Global Const $FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}'
Global Const $FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}'
Global Const $FOLDERID_Links = '{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}'
Global Const $FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}'
Global Const $FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}'
Global Const $FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}'
Global Const $FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}'
Global Const $FOLDERID_MusicLibrary = '{2112AB0A-C86A-4FFE-A368-0DE96E47012E}'
Global Const $FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}'
Global Const $FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}'
Global Const $FOLDERID_OriginalImages = '{2C36C0AA-5812-4B87-BFD0-4CD0DFB19B39}'
Global Const $FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}'
Global Const $FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4E80-94BC-9912D7504104}'
Global Const $FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}'
Global Const $FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}'
Global Const $FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}'
Global Const $FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}'
Global Const $FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}'
Global Const $FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}'
Global Const $FOLDERID_ProgramFiles = '{905E63B6-C1BF-494E-B29C-65B732D3D21A}'
Global Const $FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444B-8957-A3773F02200E}'
Global Const $FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}'
Global Const $FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}'
Global Const $FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D}'
Global Const $FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}'
Global Const $FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}'
Global Const $FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}'
Global Const $FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}'
Global Const $FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}'
Global Const $FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4F30-9B45-F670235F79C0}'
Global Const $FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4C59-B6A2-414586476AEA}'
Global Const $FOLDERID_PublicLibraries = '{48DAF80B-E6CF-4F4E-B800-0E69D84EE384}'
Global Const $FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}'
Global Const $FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}'
Global Const $FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}'
Global Const $FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}'
Global Const $FOLDERID_QuickLaunch = '{52A4F021-7B75-48A9-9F6B-4B87A210BC8F}'
Global Const $FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}'
Global Const $FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}'
Global Const $FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}'
Global Const $FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}'
Global Const $FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}'
Global Const $FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}'
Global Const $FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}'
Global Const $FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}'
Global Const $FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}'
Global Const $FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}'
Global Const $FOLDERID_SavedGames = '{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}'
Global Const $FOLDERID_SavedSearches = '{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}'
Global Const $FOLDERID_SEARCH_CSC = '{EE32E446-31CA-4ABA-814F-A5EBD2FD6D5E}'
Global Const $FOLDERID_SEARCH_MAPI = '{98EC0E18-2098-4D44-8644-66979315A281}'
Global Const $FOLDERID_SearchHome = '{190337D1-B8CA-4121-A639-6D472D16972A}'
Global Const $FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}'
Global Const $FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}'
Global Const $FOLDERID_SidebarParts = '{A75D362E-50FC-4FB7-AC2C-A8BEAA314493}'
Global Const $FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}'
Global Const $FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}'
Global Const $FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}'
Global Const $FOLDERID_SyncResultsFolder = '{289A9A43-BE44-4057-A41B-587A76D7E7F9}'
Global Const $FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4A90-BBA9-27CBC0C5389A}'
Global Const $FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}'
Global Const $FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}'
Global Const $FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}'
Global Const $FOLDERID_UserPinned = '{9E3995AB-1F9C-4F13-B827-48B24B6C7174}'
Global Const $FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}'
Global Const $FOLDERID_UserProgramFiles = '{5CD7AEE2-2219-4A67-B85D-6C9CE15660CB}'
Global Const $FOLDERID_UserProgramFilesCommon = '{BCBD3057-CA5C-4622-B42D-BC56DB0AE516}'
Global Const $FOLDERID_UsersFiles = '{F3CE0F7C-4901-4ACC-8648-D5D44B04EF8F}'
Global Const $FOLDERID_UsersLibraries = '{A302545D-DEFF-464B-ABE8-61C8648D939B}'
Global Const $FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}'
Global Const $FOLDERID_VideosLibrary = '{491E922F-5643-4AF4-A7EB-4E7A138D8174}'
Global Const $FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}'
Global Const $KF_FLAG_ALIAS_ONLY = 0x80000000
Global Const $KF_FLAG_CREATE = 0x00008000
Global Const $KF_FLAG_DONT_VERIFY = 0x00004000
Global Const $KF_FLAG_DONT_UNEXPAND = 0x00002000
Global Const $KF_FLAG_NO_ALIAS = 0x00001000
Global Const $KF_FLAG_INIT = 0x00000800
Global Const $KF_FLAG_DEFAULT_PATH = 0x00000400
Global Const $KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000
Global Const $KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200
Global Const $KF_FLAG_SIMPLE_IDLIST = 0x00000100
#Region Global Variables and Constants
Global Const $tagNOTIFYICONDATA = 'struct;dword Size;hwnd hWnd;uint ID;uint Flags;uint CallbackMessage;ptr hIcon;wchar Tip[128];dword State;dword StateMask;wchar Info[256];uint Version;wchar InfoTitle[64];dword InfoFlags;endstruct'
Global Const $tagNOTIFYICONDATA_V3 = $tagNOTIFYICONDATA & ';' & $tagGUID
Global Const $tagNOTIFYICONDATA_V4 = $tagNOTIFYICONDATA_V3 & ';ptr hBalloonIcon;'
Global Const $tagSHELLEXECUTEINFO = 'dword Size;ulong Mask;hwnd hWnd;ptr Verb;ptr File;ptr Parameters;ptr Directory;int Show;ulong_ptr hInstApp;ptr IDList;ptr Class;ulong_ptr hKeyClass;dword HotKey;ptr hMonitor;ptr hProcess'
Global Const $tagSHFILEINFO = 'ptr hIcon;int iIcon;dword Attributes;wchar DisplayName[260];wchar TypeName[80]'
Global Const $tagSHFILEOPSTRUCT = 'hwnd hWnd;uint Func;ptr From;ptr To;dword Flags;int fAnyOperationsAborted;ptr hNameMappings;ptr ProgressTitle'
Global Const $tagSHFOLDERCUSTOMSETTINGS = 'dword Size;dword Mask;ptr GUID;ptr WebViewTemplate;dword SizeWVT;ptr WebViewTemplateVersion;ptr InfoTip;dword SizeIT;ptr CLSID;dword Flags;ptr IconFile;dword SizeIF;int IconIndex;ptr Logo;dword SizeL'
Global Const $tagSHSTOCKICONINFO = 'dword Size;ptr hIcon;int SysImageIndex;int iIcon;wchar Path[260]'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_DefSubclassProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('comctl32.dll', 'lresult', 'DefSubclassProc', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DllGetVersion($sFilePath)
Local $tVersion = DllStructCreate('dword[5]')
DllStructSetData($tVersion, 1, DllStructGetSize($tVersion), 1)
Local $aCall = DllCall($sFilePath, 'uint', 'DllGetVersion', 'struct*', $tVersion)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tVersion, 1, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_FindExecutable($sFileName, $sDirectory = "")
Local $aCall = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $sFileName, "wstr", $sDirectory, "wstr", "")
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] <= 32 Then Return SetError(10, $aCall[0], '')
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_GetAllUsersProfileDirectory()
Local $aCall = DllCall('userenv.dll', 'bool', 'GetAllUsersProfileDirectoryW', 'wstr', '', 'dword*', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetDefaultUserProfileDirectory()
Local $aCall = DllCall('userenv.dll', 'bool', 'GetDefaultUserProfileDirectoryW', 'wstr', '', 'dword*', 4096)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetWindowSubclass($hWnd, $pSubclassProc, $idSubClass)
Local $aCall = DllCall('comctl32.dll', 'bool', 'GetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass,  'dword_ptr*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[4]
EndFunc
Func _WinAPI_RemoveWindowSubclass($hWnd, $pSubclassProc, $idSubClass)
Local $aCall = DllCall('comctl32.dll', 'bool', 'RemoveWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCurrentProcessExplicitAppUserModelID($sAppID)
Local $aCall = DllCall('shell32.dll', 'long', 'SetCurrentProcessExplicitAppUserModelID', 'wstr', $sAppID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_SetWindowSubclass($hWnd, $pSubclassProc, $idSubClass, $pData = 0)
Local $aCall = DllCall('comctl32.dll', 'bool', 'SetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass,  'dword_ptr', $pData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellAddToRecentDocs($sFilePath)
If StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sFilePath = _WinAPI_PathSearchAndQualify($sFilePath, 1)
If Not $sFilePath Then
Return SetError(1, 0, 0)
EndIf
Else
$sFilePath = Null
EndIf
DllCall('shell32.dll', 'none', 'SHAddToRecentDocs', 'uint', 3, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellChangeNotify($iEvent, $iFlags, $iItem1 = 0, $iItem2 = 0)
Local $sTypeOfItem1 = 'dword_ptr', $sTypeOfItem2 = 'dword_ptr'
If IsString($iItem1) Then
$sTypeOfItem1 = 'wstr'
EndIf
If IsString($iItem2) Then
$sTypeOfItem2 = 'wstr'
EndIf
DllCall('shell32.dll', 'none', 'SHChangeNotify', 'long', $iEvent, 'uint', $iFlags, $sTypeOfItem1, $iItem1, $sTypeOfItem2, $iItem2)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellChangeNotifyDeregister($iID)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHChangeNotifyDeregister', 'ulong', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellChangeNotifyRegister($hWnd, $iMsg, $iEvents, $iSources, $aPaths, $bRecursive = False)
Local $iPath = $aPaths, $tagStruct = ''
If IsArray($aPaths) Then
If UBound($aPaths, $UBOUND_COLUMNS) Then Return SetError(1, 0, 0)
Else
Dim $aPaths[1] = [$iPath]
EndIf
For $i = 0 To UBound($aPaths) - 1
If Not _WinAPI_PathIsDirectory($aPaths[$i]) Then Return SetError(2, 0, 0)
Next
For $i = 0 To UBound($aPaths) - 1
$tagStruct &= 'ptr;int;'
Next
Local $tEntry = DllStructCreate($tagStruct)
For $i = 0 To UBound($aPaths) - 1
$aPaths[$i] = _WinAPI_ShellILCreateFromPath(_WinAPI_PathSearchAndQualify($aPaths[$i]))
DllStructSetData($tEntry, 2 * $i + 1, $aPaths[$i])
DllStructSetData($tEntry, 2 * $i + 2, $bRecursive)
Next
Local $iError = 0
Local $aCall = DllCall('shell32.dll', 'ulong', 'SHChangeNotifyRegister', 'hwnd', $hWnd, 'int', $iSources, 'long', $iEvents,  'uint', $iMsg, 'int', UBound($aPaths), 'struct*', $tEntry)
If @error Or Not $aCall[0] Then $iError = @error + 10
For $i = 0 To UBound($aPaths) - 1
_WinAPI_CoTaskMemFree($aPaths[$i])
Next
Return SetError($iError, 0, $aCall[0])
EndFunc
Func _WinAPI_ShellCreateDirectory($sFilePath, $hParent = 0, $tSecurity = 0)
Local $aCall = DllCall('shell32.dll', 'int', 'SHCreateDirectoryExW', 'hwnd', $hParent, 'wstr', $sFilePath, 'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellEmptyRecycleBin($sRoot = '', $iFlags = 0, $hParent = 0)
Local $aCall = DllCall('shell32.dll', 'long', 'SHEmptyRecycleBinW', 'hwnd', $hParent, 'wstr', $sRoot, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellExecute($sFilePath, $sArgs = '', $sDir = '', $sVerb = '', $iShow = 1, $hParent = 0)
If Not StringStripWS($sArgs, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sArgs = Null
If Not StringStripWS($sDir, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDir = Null
If Not StringStripWS($sVerb, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sVerb = Null
Local $aCall = DllCall('shell32.dll', 'ULONG_PTR', 'ShellExecuteW', 'hwnd', $hParent, 'wstr', $sVerb, 'wstr', $sFilePath,  'wstr', $sArgs, 'wstr', $sDir, 'int', $iShow)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] <= 32 Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellExecuteEx(ByRef $tSHEXINFO)
Local $aCall = DllCall('shell32.dll', 'bool', 'ShellExecuteExW', 'struct*', $tSHEXINFO)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellExtractAssociatedIcon($sFilePath, $bSmall = False)
Local $iFlags = 0x00000100
If Not _WinAPI_PathIsDirectory($sFilePath) Then
$iFlags = BitOR($iFlags, 0x00000010)
EndIf
If $bSmall Then
$iFlags = BitOR($iFlags, 0x00000001)
EndIf
Local $tSHFILEINFO = DllStructCreate($tagSHFILEINFO)
If Not _WinAPI_ShellGetFileInfo($sFilePath, $iFlags, 0, $tSHFILEINFO) Then Return SetError(@error + 10, @extended, 0)
Return DllStructGetData($tSHFILEINFO, 'hIcon')
EndFunc
Func _WinAPI_ShellExtractIcon($sIcon, $iIndex, $iWidth, $iHeight)
Local $aCall = DllCall('shell32.dll', 'int', 'SHExtractIconsW', 'wstr', $sIcon, 'int', $iIndex, 'int', $iWidth,  'int', $iHeight, 'ptr*', 0, 'ptr*', 0, 'int', 1, 'int', 0)
If @error Or Not $aCall[0] Or Not $aCall[5] Then Return SetError(@error, @extended, 0)
Return $aCall[5]
EndFunc
Func _WinAPI_ShellFileOperation($sFrom, $sTo, $iFunc, $iFlags, $sTitle = '', $hParent = 0)
Local $iData
If Not IsArray($sFrom) Then
$iData = $sFrom
Dim $sFrom[1] = [$iData]
EndIf
Local $tFrom = _WinAPI_ArrayToStruct($sFrom)
If @error Then Return SetError(@error + 20, @extended, 0)
If Not IsArray($sTo) Then
$iData = $sTo
Dim $sTo[1] = [$iData]
EndIf
Local $tTo = _WinAPI_ArrayToStruct($sTo)
If @error Then Return SetError(@error + 30, @extended, 0)
Local $tSHFILEOPSTRUCT = DllStructCreate($tagSHFILEOPSTRUCT)
DllStructSetData($tSHFILEOPSTRUCT, 'hWnd', $hParent)
DllStructSetData($tSHFILEOPSTRUCT, 'Func', $iFunc)
DllStructSetData($tSHFILEOPSTRUCT, 'From', DllStructGetPtr($tFrom))
DllStructSetData($tSHFILEOPSTRUCT, 'To', DllStructGetPtr($tTo))
DllStructSetData($tSHFILEOPSTRUCT, 'Flags', $iFlags)
DllStructSetData($tSHFILEOPSTRUCT, 'ProgressTitle', $sTitle)
Local $aCall = DllCall('shell32.dll', 'int', 'SHFileOperationW', 'struct*', $tSHFILEOPSTRUCT)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSHFILEOPSTRUCT
EndFunc
Func _WinAPI_ShellFlushSFCache()
DllCall('shell32.dll', 'none', 'SHFlushSFCache')
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellGetFileInfo($sFilePath, $iFlags, $iAttributes, ByRef $tSHFILEINFO)
Local $aCall = DllCall('shell32.dll', 'dword_ptr', 'SHGetFileInfoW', 'wstr', $sFilePath, 'dword', $iAttributes,  'struct*', $tSHFILEINFO, 'uint', DllStructGetSize($tSHFILEINFO), 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellGetIconOverlayIndex($sIcon, $iIndex)
If Not StringStripWS($sIcon, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sIcon = Null
Local $aCall = DllCall('shell32.dll', 'int', 'SHGetIconOverlayIndexW', 'wstr', $sIcon, 'int', $iIndex)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellGetKnownFolderIDList($sGUID, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('shell32.dll', 'uint', 'SHGetKnownFolderIDList', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _WinAPI_ShellGetKnownFolderPath($sGUID, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, '')
$aCall = DllCall('shell32.dll', 'long', 'SHGetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $sPath = _WinAPI_GetString($aCall[4])
_WinAPI_CoTaskMemFree($aCall[4])
Return $sPath
EndFunc
Func _WinAPI_ShellGetLocalizedName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetLocalizedName', 'wstr', $sFilePath, 'wstr', '', 'uint*', 0, 'int*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[2]
Local $aCall1 = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $aCall[2], "wstr", "", "dword", 4096)
$aRet[0] = $aCall1[2]
$aRet[1] = $aCall[4]
Return $aRet
EndFunc
Func _WinAPI_ShellGetPathFromIDList($pPIDL)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHGetPathFromIDListW', 'struct*', $pPIDL, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_ShellGetSetFolderCustomSettings($sFilePath, $iFlag, ByRef $tSHFCS)
Local $sProc = 'SHGetSetFolderCustomSettings'
If _WinAPI_GetVersion() < 6.0 Then $sProc &= 'W'
Local $aCall = DllCall('shell32.dll', 'long', $sProc, 'struct*', $tSHFCS, 'wstr', $sFilePath, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellGetSettings($iFlags)
Local $tSHELLSTATE = DllStructCreate('uint[8]')
DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 0)
If @error Then Return SetError(@error, @extended, 0)
Local $iVal1 = DllStructGetData($tSHELLSTATE, 1, 1)
Local $iVal2 = DllStructGetData($tSHELLSTATE, 1, 8)
Local $iResult = 0
Local $aOpt[20][2] =  [[0x00000001, 0x00000001],  [0x00000002, 0x00000002],  [0x00000004, 0x00008000],  [0x00000008, 0x00000020],  [0x00000010, 0x00000008],  [0x00000020, 0x00000080],  [0x00000040, 0x00000200],  [0x00000080, 0x00000400],  [0x00000100, 0x00000800],  [0x00000400, 0x00001000],  [0x00000800, 0x00002000],  [0x00001000, 0x00004000],  [0x00002000, 0x00020000],  [0x00008000, 0x00040000],  [0x00010000, 0x00100000],  [0x00000001, 0x00080000],  [0x00000002, 0x00200000],  [0x00000008, 0x00800000],  [0x00000010, 0x01000000],  [0x00000020, 0x02000000]]
For $i = 0 To 14
If BitAND($iVal1, $aOpt[$i][0]) Then
$iResult += $aOpt[$i][1]
EndIf
Next
For $i = 15 To 19
If BitAND($iVal2, $aOpt[$i][0]) Then
$iResult += $aOpt[$i][1]
EndIf
Next
Return $iResult
EndFunc
Func _WinAPI_ShellGetSpecialFolderLocation($iCSIDL)
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetSpecialFolderLocation', 'hwnd', 0, 'int', $iCSIDL, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_ShellGetSpecialFolderPath($iCSIDL, $bCreate = False)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHGetSpecialFolderPathW', 'hwnd', 0, 'wstr', '', 'int', $iCSIDL, 'bool', $bCreate)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_ShellGetStockIconInfo($iSIID, $iFlags)
Local $tSHSTOCKICONINFO = DllStructCreate($tagSHSTOCKICONINFO)
DllStructSetData($tSHSTOCKICONINFO, 'Size', DllStructGetSize($tSHSTOCKICONINFO))
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetStockIconInfo', 'int', $iSIID, 'uint', $iFlags, 'struct*', $tSHSTOCKICONINFO)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSHSTOCKICONINFO
EndFunc
Func _WinAPI_ShellILCreateFromPath($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHILCreateFromPath', 'wstr', $sFilePath, 'ptr*', 0, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _WinAPI_ShellNotifyIcon($iMessage, ByRef $tNOTIFYICONDATA)
Local $aCall = DllCall('shell32.dll', 'bool', 'Shell_NotifyIconW', 'dword', $iMessage, 'struct*', $tNOTIFYICONDATA)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellNotifyIconGetRect($hWnd, $iID, $tGUID = 0)
Local $tNII = DllStructCreate('dword;hwnd;uint;' & $tagGUID)
DllStructSetData($tNII, 1, DllStructGetSize($tNII))
DllStructSetData($tNII, 2, $hWnd)
DllStructSetData($tNII, 3, $iID)
If IsDllStruct($tGUID) Then
If Not _WinAPI_MoveMemory(DllStructGetPtr($tNII, 4), $tGUID, 16) Then Return SetError(@error + 10, @extended, 0)
EndIf
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('shell32.dll', 'long', 'Shell_NotifyIconGetRect', 'struct*', $tNII, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tRECT
EndFunc
Func _WinAPI_ShellObjectProperties($sFilePath, $iType = 2, $sProperty = '', $hParent = 0)
If Not StringStripWS($sProperty, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sProperty = Null
Local $aCall = DllCall('shell32.dll', 'bool', 'SHObjectProperties', 'hwnd', $hParent, 'dword', $iType, 'wstr', $sFilePath,  'wstr', $sProperty)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellOpenFolderAndSelectItems($sFilePath, $aNames = 0, $iStart = 0, $iEnd = -1, $iFlags = 0)
Local $pPIDL, $aCall, $tPtr = 0, $iCount = 0, $iObj = 0, $iError = 0
$sFilePath = _WinAPI_PathRemoveBackslash(_WinAPI_PathSearchAndQualify($sFilePath))
If IsArray($aNames) Then
If $sFilePath And Not _WinAPI_PathIsDirectory($sFilePath) Then Return SetError(@error + 20, @extended, 0)
EndIf
$pPIDL = _WinAPI_ShellILCreateFromPath($sFilePath)
If @error Then Return SetError(@error + 30, @extended, 0)
If Not __CheckErrorArrayBounds($aNames, $iStart, $iEnd) Then
$tPtr = DllStructCreate('ptr[' & ($iEnd - $iStart + 1) & ']')
For $i = $iStart To $iEnd
$iCount += 1
If $aNames[$i] Then
DllStructSetData($tPtr, 1, _WinAPI_ShellILCreateFromPath($sFilePath & '\' & $aNames[$i]), $iCount)
Else
DllStructSetData($tPtr, 1, 0, $iCount)
EndIf
Next
EndIf
If _WinAPI_CoInitialize() Then $iObj = 1
$aCall = DllCall('shell32.dll', 'long', 'SHOpenFolderAndSelectItems', 'ptr', $pPIDL, 'uint', $iCount, 'struct*', $tPtr,  'dword', $iFlags)
If @error Then
$iError = @error + 10
Else
If $aCall[0] Then $iError = 10
EndIf
If $iObj Then _WinAPI_CoUninitialize()
_WinAPI_CoTaskMemFree($pPIDL)
For $i = 1 To $iCount
$pPIDL = DllStructGetData($tPtr, $i)
If $pPIDL Then
_WinAPI_CoTaskMemFree($pPIDL)
EndIf
Next
If $iError = 10 Then Return SetError(10, $aCall[0], 0)
If $iError Then Return SetError($iError, 0, 0)
Return 1
EndFunc
Func _WinAPI_ShellQueryRecycleBin($sRoot = '')
Local $tagSHQUERYRBINFO = (@AutoItX64 ? '' : 'align 1;') & 'dword cbSize;int64 Size;int64 nbFiles'
Local $tSHQRBI = DllStructCreate($tagSHQUERYRBINFO)
DllStructSetData($tSHQRBI, 1, DllStructGetSize($tSHQRBI))
Local $aCall = DllCall('shell32.dll', 'long', 'SHQueryRecycleBinW', 'wstr', $sRoot, 'struct*', $tSHQRBI)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[2]
$aRet[0] = DllStructGetData($tSHQRBI, 2)
$aRet[1] = DllStructGetData($tSHQRBI, 3)
Return $aRet
EndFunc
Func _WinAPI_ShellQueryUserNotificationState()
Local $aCall = DllCall('shell32.dll', 'long', 'SHQueryUserNotificationState', 'uint*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _WinAPI_ShellRemoveLocalizedName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHRemoveLocalizedName', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellRestricted($iRestriction)
Local $aCall = DllCall('shell32.dll', 'dword', 'SHRestricted', 'uint', $iRestriction)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellSetKnownFolderPath($sGUID, $sFilePath, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('shell32.dll', 'long', 'SHSetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellSetLocalizedName($sFilePath, $sModule, $iResID)
Local $aCall = DllCall('shell32.dll', 'long', 'SHSetLocalizedName', 'wstr', $sFilePath, 'wstr', $sModule, 'int', $iResID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellSetSettings($iFlags, $bSet)
Local $iVal1 = 0, $iVal2 = 0
Local $aOpt[20][2] =  [[0x00000001, 0x00000001],  [0x00000002, 0x00000002],  [0x00000004, 0x00008000],  [0x00000008, 0x00000020],  [0x00000010, 0x00000008],  [0x00000020, 0x00000080],  [0x00000040, 0x00000200],  [0x00000080, 0x00000400],  [0x00000100, 0x00000800],  [0x00000400, 0x00001000],  [0x00000800, 0x00002000],  [0x00001000, 0x00004000],  [0x00002000, 0x00020000],  [0x00008000, 0x00040000],  [0x00010000, 0x00100000],  [0x00000001, 0x00080000],  [0x00000002, 0x00200000],  [0x00000008, 0x00800000],  [0x00000010, 0x01000000],  [0x00000020, 0x02000000]]
If $bSet Then
For $i = 0 To 14
If BitAND($iFlags, $aOpt[$i][1]) Then
$iVal1 += $aOpt[$i][0]
EndIf
Next
For $i = 15 To 19
If BitAND($iFlags, $aOpt[$i][1]) Then
$iVal2 += $aOpt[$i][0]
EndIf
Next
EndIf
Local $tSHELLSTATE = DllStructCreate('uint[8]')
DllStructSetData($tSHELLSTATE, 1, $iVal1, 1)
DllStructSetData($tSHELLSTATE, 1, $iVal2, 8)
DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 1)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellUpdateImage($sIcon, $iIndex, $iImage, $iFlags = 0)
DllCall('shell32.dll', 'none', 'SHUpdateImageW', 'wstr', $sIcon, 'int', $iIndex, 'uint', $iFlags, 'int', $iImage)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
#EndRegion Public Functions
#Region Global Variables and Constants
Global $__g_pFRBuffer = 0, $__g_iFRBufferSize = 16385
Global Const $tagDEVNAMES = 'ushort DriverOffset;ushort DeviceOffset;ushort OutputOffset;ushort Default'
Global Const $tagFINDREPLACE = 'dword Size;hwnd hOwner;ptr hInstance;dword Flags;ptr FindWhat;ptr ReplaceWith;ushort FindWhatLen;ushort ReplaceWithLen;lparam lParam;ptr Hook;ptr TemplateName'
Global Const $tagMSGBOXPARAMS = 'uint Size;hwnd hOwner;ptr hInstance;int_ptr Text;int_ptr Caption;dword Style;int_ptr Icon;dword_ptr ContextHelpId;ptr MsgBoxCallback;dword LanguageId'
Global Const $tagPAGESETUPDLG = 'dword Size;hwnd hOwner;ptr hDevMode;ptr hDevNames;dword Flags;long PaperWidth;long PaperHeight;long MarginMinLeft;long MarginMinTop;long MarginMinRight;long MarginMinBottom;long MarginLeft;long MarginTop;long MarginRight;long MarginBottom;ptr hInstance;lparam lParam;ptr PageSetupHook;ptr PagePaintHook;ptr PageSetupTemplateName;ptr hPageSetupTemplate'
Global Const $tagPRINTDLG = (@AutoItX64 ? '' : 'align 1;') & 'dword Size;hwnd hOwner;handle hDevMode;handle hDevNames;handle hDC;dword Flags;word FromPage;word ToPage;word MinPage;word MaxPage;word Copies;handle hInstance;lparam lParam;ptr PrintHook;ptr SetupHook;ptr PrintTemplateName;ptr SetupTemplateName;handle hPrintTemplate;handle hSetupTemplate'
Global Const $tagPRINTDLGEX = 'dword Size;hwnd hOwner;handle hDevMode;handle hDevNames;handle hDC;dword Flags;dword Flags2;dword ExclusionFlags;dword NumPageRanges;dword MaxPageRanges;ptr PageRanges;dword MinPage;dword MaxPage;dword Copies;handle hInstance;ptr PrintTemplateName;lparam lParam;dword NumPropertyPages;ptr hPropertyPages;dword StartPage;dword ResultAction'
Global Const $tagPRINTPAGERANGE = 'dword FromPage;dword ToPage'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_BrowseForFolderDlg($sRoot = '', $sText = '', $iFlags = 0, $pBrowseProc = 0, $lParam = 0, $hParent = 0)
Local Const $tagBROWSEINFO = 'hwnd hwndOwner;ptr pidlRoot;ptr pszDisplayName; ptr lpszTitle;uint ulFlags;ptr lpfn;lparam lParam;int iImage'
Local $tBROWSEINFO = DllStructCreate($tagBROWSEINFO & ';wchar[' & (StringLen($sText) + 1) & '];wchar[260]')
Local $pPIDL = 0, $sResult = ''
If StringStripWS($sRoot, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
Local $sPath = _WinAPI_PathSearchAndQualify($sRoot, 1)
If @error Then
$sPath = $sRoot
EndIf
$pPIDL = _WinAPI_ShellILCreateFromPath($sPath)
If @error Then
EndIf
EndIf
DllStructSetData($tBROWSEINFO, 1, $hParent)
DllStructSetData($tBROWSEINFO, 2, $pPIDL)
DllStructSetData($tBROWSEINFO, 3, DllStructGetPtr($tBROWSEINFO, 10))
DllStructSetData($tBROWSEINFO, 4, DllStructGetPtr($tBROWSEINFO, 9))
DllStructSetData($tBROWSEINFO, 5, $iFlags)
DllStructSetData($tBROWSEINFO, 6, $pBrowseProc)
DllStructSetData($tBROWSEINFO, 7, $lParam)
DllStructSetData($tBROWSEINFO, 8, 0)
DllStructSetData($tBROWSEINFO, 9, $sText)
Local $aCall = DllCall('shell32.dll', 'ptr', 'SHBrowseForFolderW', 'struct*', $tBROWSEINFO)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
$sResult = _WinAPI_ShellGetPathFromIDList($aCall[0])
_WinAPI_CoTaskMemFree($aCall[0])
If $pPIDL Then
_WinAPI_CoTaskMemFree($pPIDL)
EndIf
If Not $sResult Then Return SetError(10, 0, '')
Return $sResult
EndFunc
Func _WinAPI_CommDlgExtendedError()
Local Const $CDERR_DIALOGFAILURE = 0xFFFF
Local Const $CDERR_FINDRESFAILURE = 0x06
Local Const $CDERR_INITIALIZATION = 0x02
Local Const $CDERR_LOADRESFAILURE = 0x07
Local Const $CDERR_LOADSTRFAILURE = 0x05
Local Const $CDERR_LOCKRESFAILURE = 0x08
Local Const $CDERR_MEMALLOCFAILURE = 0x09
Local Const $CDERR_MEMLOCKFAILURE = 0x0A
Local Const $CDERR_NOHINSTANCE = 0x04
Local Const $CDERR_NOHOOK = 0x0B
Local Const $CDERR_NOTEMPLATE = 0x03
Local Const $CDERR_REGISTERMSGFAIL = 0x0C
Local Const $CDERR_STRUCTSIZE = 0x01
Local Const $FNERR_BUFFERTOOSMALL = 0x3003
Local Const $FNERR_INVALIDFILENAME = 0x3002
Local Const $FNERR_SUBCLASSFAILURE = 0x3001
Local $aCall = DllCall("comdlg32.dll", "dword", "CommDlgExtendedError")
If Not @error Then
Switch $aCall[0]
Case $CDERR_DIALOGFAILURE
Return SetError($aCall[0], 0, "The dialog box could not be created." & @LF &  "The common dialog box function's call to the DialogBox function failed." & @LF &  "For example, this error occurs if the common dialog box call specifies an invalid window handle.")
Case $CDERR_FINDRESFAILURE
Return SetError($aCall[0], 0, "The common dialog box function failed to find a specified resource.")
Case $CDERR_INITIALIZATION
Return SetError($aCall[0], 0, "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available.")
Case $CDERR_LOADRESFAILURE
Return SetError($aCall[0], 0, "The common dialog box function failed to load a specified resource.")
Case $CDERR_LOADSTRFAILURE
Return SetError($aCall[0], 0, "The common dialog box function failed to load a specified string.")
Case $CDERR_LOCKRESFAILURE
Return SetError($aCall[0], 0, "The common dialog box function failed to lock a specified resource.")
Case $CDERR_MEMALLOCFAILURE
Return SetError($aCall[0], 0, "The common dialog box function was unable to allocate memory for internal structures.")
Case $CDERR_MEMLOCKFAILURE
Return SetError($aCall[0], 0, "The common dialog box function was unable to lock the memory associated with a handle.")
Case $CDERR_NOHINSTANCE
Return SetError($aCall[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF &  "but you failed to provide a corresponding instance handle.")
Case $CDERR_NOHOOK
Return SetError($aCall[0], 0, "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF &  "but you failed to provide a pointer to a corresponding hook procedure.")
Case $CDERR_NOTEMPLATE
Return SetError($aCall[0], 0, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF &  "but you failed to provide a corresponding template.")
Case $CDERR_REGISTERMSGFAIL
Return SetError($aCall[0], 0, "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function.")
Case $CDERR_STRUCTSIZE
Return SetError($aCall[0], 0, "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid")
Case $FNERR_BUFFERTOOSMALL
Return SetError($aCall[0], 0, "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF &  "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name.")
Case $FNERR_INVALIDFILENAME
Return SetError($aCall[0], 0, "A file name is invalid.")
Case $FNERR_SUBCLASSFAILURE
Return SetError($aCall[0], 0, "An attempt to subclass a list box failed because sufficient memory was not available.")
EndSwitch
EndIf
Return SetError(@error, @extended, '0x' & Hex($aCall[0]))
EndFunc
Func _WinAPI_CommDlgExtendedErrorEx()
Local $aCall = DllCall('comdlg32.dll', 'dword', 'CommDlgExtendedError')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ConfirmCredentials($sTarget, $bConfirm)
If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)
Local $aCall = DllCall('credui.dll', 'dword', 'CredUIConfirmCredentialsW', 'wstr', $sTarget, 'bool', $bConfirm)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_FindTextDlg($hOwner, $sFindWhat = '', $iFlags = 0, $pFindProc = 0, $lParam = 0)
$__g_pFRBuffer = __HeapReAlloc($__g_pFRBuffer, 2 * $__g_iFRBufferSize)
If @error Then Return SetError(@error + 20, @extended, 0)
DllStructSetData(DllStructCreate('wchar[' & $__g_iFRBufferSize & ']', $__g_pFRBuffer), 1, StringLeft($sFindWhat, $__g_iFRBufferSize - 1))
Local $tFR = DllStructCreate($tagFINDREPLACE)
DllStructSetData($tFR, 'Size', DllStructGetSize($tFR))
DllStructSetData($tFR, 'hOwner', $hOwner)
DllStructSetData($tFR, 'hInstance', 0)
DllStructSetData($tFR, 'Flags', $iFlags)
DllStructSetData($tFR, 'FindWhat', $__g_pFRBuffer)
DllStructSetData($tFR, 'ReplaceWith', 0)
DllStructSetData($tFR, 'FindWhatLen', $__g_iFRBufferSize * 2)
DllStructSetData($tFR, 'ReplaceWithLen', 0)
DllStructSetData($tFR, 'lParam', $lParam)
DllStructSetData($tFR, 'Hook', $pFindProc)
DllStructSetData($tFR, 'TemplateName', 0)
Local $aCall = DllCall('comdlg32.dll', 'hwnd', 'FindTextW', 'struct*', $tFR)
If @error Or Not $aCall[0] Then
Local $iError = @error + 30
__HeapFree($__g_pFRBuffer)
If IsArray($aCall) Then
Return SetError(10, _WinAPI_CommDlgExtendedErrorEx(), 0)
Else
Return SetError($iError, @extended, 0)
EndIf
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_FlushFRBuffer()
If Not __HeapFree($__g_pFRBuffer, 1) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_FormatDriveDlg($sDrive, $iOption = 0, $hParent = 0)
If Not IsString($sDrive) Then Return SetError(10, 0, 0)
$sDrive = StringLeft(StringUpper(StringStripWS($sDrive, $STR_STRIPLEADING)), 1)
If Not $sDrive Then Return SetError(11, 0, 0)
$sDrive = Asc($sDrive) - 65
If ($sDrive < 0) Or ($sDrive > 25) Then Return SetError(12, 0, 0)
Local $aCall = DllCall('shell32.dll', 'dword', 'SHFormatDrive', 'hwnd', $hParent, 'uint', $sDrive, 'uint', 0xFFFF,  'uint', $iOption)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] < 0 Then Return SetError($aCall[0], 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetConnectedDlg($iDlg, $iFlags = 0, $hParent = 0)
If Not __DLL('connect.dll') Then Return SetError(103, 0, 0)
Switch $iDlg
Case 0
$iDlg = 'GetNetworkConnected'
Case 1
$iDlg = 'GetInternetConnected'
Case 2
$iDlg = 'GetVPNConnected'
Case Else
Return SetError(1, 0, 0)
EndSwitch
Local $sStr = ''
If BitAND($iFlags, 1) Then
$sStr &= '-SkipInternetDetection '
EndIf
If BitAND($iFlags, 2) Then
$sStr &= '-SkipExistingConnections '
EndIf
If BitAND($iFlags, 4) Then
$sStr &= '-HideFinishPage '
EndIf
Local $aCall = DllCall('connect.dll', 'long', $iDlg, 'hwnd', $hParent, 'dword', 0, 'dword', 0, 'dword', 0, 'handle', 0,  'wstr', StringStripWS($sStr, $STR_STRIPTRAILING))
If @error Then Return SetError(@error, @extended, 0)
If Not ($aCall[0] = 0 Or $aCall[0] = 1) Then Return SetError(10, $aCall[0], 0)
Return Number(Not $aCall[0])
EndFunc
Func _WinAPI_GetFRBuffer()
Return $__g_iFRBufferSize - 1
EndFunc
Func _WinAPI_GetOpenFileName($sTitle = "", $sFilter = "All files (*.*)", $sInitalDir = ".", $sDefaultFile = "", $sDefaultExt = "", $iFilterIndex = 1, $iFlags = 0, $iFlagsEx = 0, $hWndOwner = 0)
Local $vResult = __OFNDlg(0, $sTitle, $sInitalDir, $sFilter, $iFilterIndex, $sDefaultFile, $sDefaultExt, $iFlags, $iFlagsEx, 0, 0, $hWndOwner)
If @error Then Return SetError(@error, @extended, $vResult)
If BitAND($iFlags, $OFN_ALLOWMULTISELECT) Then
Return __WinAPI_ParseMultiSelectFileDialogPath($vResult)
Else
Return __WinAPI_ParseFileDialogPath($vResult)
EndIf
EndFunc
Func _WinAPI_GetSaveFileName($sTitle = "", $sFilter = "All files (*.*)", $sInitalDir = ".", $sDefaultFile = "", $sDefaultExt = "", $iFilterIndex = 1, $iFlags = 0, $iFlagsEx = 0, $hWndOwner = 0)
Local $vReturn = __OFNDlg(1, $sTitle, $sInitalDir, $sFilter, $iFilterIndex, $sDefaultFile, $sDefaultExt, $iFlags, $iFlagsEx, 0, 0, $hWndOwner)
If @error Then Return SetError(@error, @extended, $vReturn)
Return __WinAPI_ParseFileDialogPath($vReturn)
EndFunc
Func _WinAPI_MessageBoxCheck($iType, $sTitle, $sText, $sRegVal, $iDefault = -1, $hParent = 0)
Local $aCall = DllCall('shlwapi.dll', 'int', 'SHMessageBoxCheckW', 'hwnd', $hParent, 'wstr', $sText, 'wstr', $sTitle,  'uint', $iType, 'int', $iDefault, 'wstr', $sRegVal)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_MessageBoxIndirect($tMSGBOXPARAMS)
Local $aCall = DllCall('user32.dll', 'int', 'MessageBoxIndirectW', 'struct*', $tMSGBOXPARAMS)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenFileDlg($sTitle = '', $sInitDir = '', $sFilters = '', $iDefaultFilter = 0, $sDefaultFilePath = '', $sDefaultExt = '', $iFlags = 0, $iFlagsEx = 0, $pOFNProc = 0, $pData = 0, $hParent = 0)
Local $vResult = __OFNDlg(0, $sTitle, $sInitDir, $sFilters, $iDefaultFilter, $sDefaultFilePath, $sDefaultExt, $iFlags, $iFlagsEx, $pOFNProc, $pData, $hParent)
If @error Then Return SetError(@error, @extended, $vResult)
Return $vResult
EndFunc
Func _WinAPI_PageSetupDlg(ByRef $tPAGESETUPDLG)
Local $aCall = DllCall('comdlg32.dll', 'int', 'PageSetupDlgW', 'struct*', $tPAGESETUPDLG)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_CommDlgExtendedErrorEx(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PickIconDlg($sIcon = '', $iIndex = 0, $hParent = 0)
Local $aCall = DllCall('shell32.dll', 'int', 'PickIconDlg', 'hwnd', $hParent, 'wstr', $sIcon, 'int', 4096, 'int*', $iIndex)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[2]
Local $aRes = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $aCall[2], "wstr", "", "dword", 4096)
$aRet[0] = $aRes[2]
$aRet[1] = $aCall[4]
Return $aRet
EndFunc
Func _WinAPI_PrintDlg(ByRef $tPRINTDLG)
Local $aCall = DllCall('comdlg32.dll', 'long', 'PrintDlgW', 'struct*', $tPRINTDLG)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_CommDlgExtendedErrorEx(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PrintDlgEx(ByRef $tPRINTDLGEX)
Local $tPDEX = DllStructCreate($tagPRINTDLGEX, DllStructGetPtr($tPRINTDLGEX))
Local $aCall = DllCall('comdlg32.dll', 'long', 'PrintDlgExW', 'struct*', $tPDEX)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return SetExtended(DllStructGetData($tPDEX, 'ResultAction'), 1)
EndFunc
Func _WinAPI_ReplaceTextDlg($hOwner, $sFindWhat = '', $sReplaceWith = '', $iFlags = 0, $pReplaceProc = 0, $lParam = 0)
$__g_pFRBuffer = __HeapReAlloc($__g_pFRBuffer, 4 * $__g_iFRBufferSize)
If @error Then Return SetError(@error + 100, @extended, 0)
Local $tBuff = DllStructCreate('wchar[' & $__g_iFRBufferSize & '];wchar[' & $__g_iFRBufferSize & ']', $__g_pFRBuffer)
DllStructSetData($tBuff, 1, StringLeft($sFindWhat, $__g_iFRBufferSize - 1))
DllStructSetData($tBuff, 2, StringLeft($sReplaceWith, $__g_iFRBufferSize - 1))
Local $tFR = DllStructCreate($tagFINDREPLACE)
DllStructSetData($tFR, 'Size', DllStructGetSize($tFR))
DllStructSetData($tFR, 'hOwner', $hOwner)
DllStructSetData($tFR, 'hInstance', 0)
DllStructSetData($tFR, 'Flags', $iFlags)
DllStructSetData($tFR, 'FindWhat', DllStructGetPtr($tBuff, 1))
DllStructSetData($tFR, 'ReplaceWith', DllStructGetPtr($tBuff, 2))
DllStructSetData($tFR, 'FindWhatLen', $__g_iFRBufferSize * 2)
DllStructSetData($tFR, 'ReplaceWithLen', $__g_iFRBufferSize * 2)
DllStructSetData($tFR, 'lParam', $lParam)
DllStructSetData($tFR, 'Hook', $pReplaceProc)
DllStructSetData($tFR, 'TemplateName', 0)
Local $aCall = DllCall('comdlg32.dll', 'hwnd', 'ReplaceTextW', 'struct*', $tFR)
If @error Or Not $aCall[0] Then
Local $iError = @error
__HeapFree($__g_pFRBuffer)
If IsArray($aCall) Then
Return SetError(10, _WinAPI_CommDlgExtendedErrorEx(), 0)
Else
Return SetError($iError, 0, 0)
EndIf
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_RestartDlg($sText = '', $iFlags = 2, $hParent = 0)
Local $aCall = DllCall('shell32.dll', 'int', 'RestartDialog', 'hwnd', $hParent, 'wstr', $sText, 'int', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SaveFileDlg($sTitle = "", $sInitDir = "", $sFilters = "", $iDefaultFilter = 0, $sDefaultFilePath = "", $sDefaultExt = "", $iFlags = 0, $iFlagsEx = 0, $pOFNProc = 0, $pData = 0, $hParent = 0)
Local $vResult = __OFNDlg(1, $sTitle, $sInitDir, $sFilters, $iDefaultFilter, $sDefaultFilePath, $sDefaultExt, $iFlags, $iFlagsEx, $pOFNProc, $pData, $hParent)
If @error Then Return SetError(@error, @extended, $vResult)
Return $vResult
EndFunc
Func _WinAPI_SetFRBuffer($iChars)
$iChars = Number($iChars)
If $iChars < 80 Then
$iChars = 80
EndIf
$__g_iFRBufferSize = $iChars + 1
Return 1
EndFunc
Func _WinAPI_ShellAboutDlg($sTitle, $sName, $sText, $hIcon = 0, $hParent = 0)
Local $aCall = DllCall('shell32.dll', 'int', 'ShellAboutW', 'hwnd', $hParent, 'wstr', $sTitle & '#' & $sName, 'wstr', $sText,  'handle', $hIcon)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellOpenWithDlg($sFilePath, $iFlags = 0, $hParent = 0)
Local $tOPENASINFO = DllStructCreate('ptr;ptr;dword;wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tOPENASINFO, 1, DllStructGetPtr($tOPENASINFO, 4))
DllStructSetData($tOPENASINFO, 2, 0)
DllStructSetData($tOPENASINFO, 3, $iFlags)
DllStructSetData($tOPENASINFO, 4, $sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHOpenWithDialog', 'hwnd', $hParent, 'struct*', $tOPENASINFO)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellStartNetConnectionDlg($sRemote = '', $iFlags = 0, $hParent = 0)
If Not StringStripWS($sRemote, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sRemote = Null
DllCall('shell32.dll', 'long', 'SHStartNetConnectionDialogW', 'hwnd', $hParent, 'wstr', $sRemote, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellUserAuthenticationDlg($sCaption, $sMessage, $sUser, $sPassword, $sTarget, $iFlags = 0, $iError = 0, $bSave = False, $hBitmap = 0, $hParent = 0)
If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)
Local $tInfo = DllStructCreate('dword;hwnd;ptr;ptr;ptr;wchar[' & (StringLen($sMessage) + 1) & '];wchar[' & (StringLen($sCaption) + 1) & ']')
DllStructSetData($tInfo, 1, DllStructGetPtr($tInfo, 6) - DllStructGetPtr($tInfo))
DllStructSetData($tInfo, 2, $hParent)
DllStructSetData($tInfo, 3, DllStructGetPtr($tInfo, 6))
DllStructSetData($tInfo, 4, DllStructGetPtr($tInfo, 7))
DllStructSetData($tInfo, 5, $hBitmap)
DllStructSetData($tInfo, 6, $sMessage)
DllStructSetData($tInfo, 7, $sCaption)
Local $aCall = DllCall('credui.dll', 'dword', 'CredUIPromptForCredentialsW', 'struct*', $tInfo, 'wstr', $sTarget, 'ptr', 0,  'dword', $iError, 'wstr', $sUser, 'ulong', 4096, 'wstr', $sPassword, 'ulong', 4096, 'bool*', $bSave,  'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[3]
$aRet[0] = $aCall[5]
$aRet[1] = $aCall[7]
$aRet[2] = $aCall[9]
Return $aRet
EndFunc
Func _WinAPI_ShellUserAuthenticationDlgEx($sCaption, $sMessage, $sUser, $sPassword, $iFlags = 0, $iAuthError = 0, $bSave = False, $iPackage = 0, $hParent = 0)
If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)
Local $tBLOB = 0, $aCall
If StringLen($sUser) Then
$aCall = DllCall('credui.dll', 'bool', 'CredPackAuthenticationBufferW', 'dword', 1, 'wstr', $sUser, 'wstr', $sPassword,  'ptr', 0, 'dword*', 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 10, @extended, 0)
$tBLOB = DllStructCreate('byte[' & $aCall[5] & ']')
$aCall = DllCall('credui.dll', 'bool', 'CredPackAuthenticationBufferW', 'dword', 1, 'wstr', $sUser, 'wstr', $sPassword,  'struct*', $tBLOB, 'dword*', $aCall[5])
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
EndIf
Local $tInfo = DllStructCreate('dword;hwnd;ptr;ptr;ptr;wchar[' & (StringLen($sMessage) + 1) & '];wchar[' & (StringLen($sCaption) + 1) & ']')
DllStructSetData($tInfo, 1, DllStructGetPtr($tInfo, 6) - DllStructGetPtr($tInfo))
DllStructSetData($tInfo, 2, $hParent)
DllStructSetData($tInfo, 3, DllStructGetPtr($tInfo, 6))
DllStructSetData($tInfo, 4, DllStructGetPtr($tInfo, 7))
DllStructSetData($tInfo, 5, 0)
DllStructSetData($tInfo, 6, $sMessage)
DllStructSetData($tInfo, 7, $sCaption)
$aCall = DllCall('credui.dll', 'dword', 'CredUIPromptForWindowsCredentialsW', 'struct*', $tInfo, 'dword', $iAuthError,  'ulong*', $iPackage, 'struct*', $tBLOB, 'ulong', DllStructGetSize($tBLOB), 'ptr*', 0, 'ulong*', 0,  'bool*', $bSave, 'dword', $iFlags)
If @error Then Return SetError(@error + 30, @extended, 0)
If $aCall[0] Then Return SetError(30, $aCall[0], 0)
Local $aRet[4], $iError = 0
$aRet[2] = $aCall[8]
$aRet[3] = $aCall[3]
Local $pBLOB = $aCall[6]
Local $iSize = $aCall[7]
$aCall = DllCall('credui.dll', 'bool', 'CredUnPackAuthenticationBufferW', 'dword', 1, 'ptr', $pBLOB, 'dword', $iSize,  'wstr', '', 'dword*', 4096, 'wstr', '', 'dword*', 4096, 'wstr', '', 'dword*', 4096)
If Not @error And $aCall[0] Then
$aRet[0] = $aCall[4]
$aRet[1] = $aCall[8]
Else
$iError = @error + 40
EndIf
If Not _WinAPI_ZeroMemory($pBLOB, $iSize) Then
EndIf
_WinAPI_CoTaskMemFree($pBLOB)
If $iError Then Return SetError($iError, 0, 0)
Return $aRet
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __OFNDlg($iDlg, $sTitle, $sInitDir, $sFilters, $iDefFilter, $sDefFile, $sDefExt, $iFlags, $iFlagsEx, $pOFNProc, $pData, $hParent)
Local $vError[1] = [0]
If BitAND($iFlags, $OFN_ALLOWMULTISELECT) = 0 Then $vError = ''
Local $tBuffer = DllStructCreate('wchar[32768]')
Local $tFilters = 0, $tDefExt = 0, $tInitDir = 0, $tTitle = 0
Local $tOFN = DllStructCreate($tagOPENFILENAME)
DllStructSetData($tOFN, "StructSize", DllStructGetSize($tOFN))
DllStructSetData($tOFN, "hwndOwner", $hParent)
DllStructSetData($tOFN, 3, 0)
Local $aData = StringSplit($sFilters, '|')
Local $aFilters[$aData[0] * 2]
Local $iCount = 0
For $i = 1 To $aData[0]
$aFilters[$iCount + 0] = StringStripWS($aData[$i], $STR_STRIPLEADING + $STR_STRIPTRAILING)
$aFilters[$iCount + 1] = StringStripWS(StringRegExpReplace($aData[$i], '.*\((.*)\)', '\1'), $STR_STRIPALL)
If $aFilters[$iCount + 1] Then
$iCount += 2
EndIf
Next
If $iCount Then
$tFilters = _WinAPI_ArrayToStruct($aFilters, 0, $iCount - 1)
If @error Then
EndIf
EndIf
DllStructSetData($tOFN, "lpstrFilter", DllStructGetPtr($tFilters))
DllStructSetData($tOFN, 5, 0)
DllStructSetData($tOFN, 6, 0)
DllStructSetData($tOFN, "nFilterIndex", $iDefFilter)
$sDefFile = StringStripWS($sDefFile, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sDefFile Then
DllStructSetData($tBuffer, 1, $sDefFile)
EndIf
DllStructSetData($tOFN, "lpstrFile", DllStructGetPtr($tBuffer))
DllStructSetData($tOFN, "nMaxFile", 32768)
DllStructSetData($tOFN, 10, 0)
DllStructSetData($tOFN, 11, 0)
$sInitDir = StringStripWS($sInitDir, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sInitDir Then
$tInitDir = DllStructCreate('wchar[' & (StringLen($sInitDir) + 1) & ']')
EndIf
DllStructSetData($tInitDir, 1, $sInitDir)
DllStructSetData($tOFN, "lpstrInitialDir", DllStructGetPtr($tInitDir))
$sTitle = StringStripWS($sTitle, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sTitle Then
$tTitle = DllStructCreate('wchar[' & (StringLen($sTitle) + 1) & ']')
EndIf
DllStructSetData($tTitle, 1, $sTitle)
DllStructSetData($tOFN, "lpstrTitle", DllStructGetPtr($tTitle))
DllStructSetData($tOFN, "Flags", $iFlags)
DllStructSetData($tOFN, 15, 0)
DllStructSetData($tOFN, 16, 0)
$sDefExt = StringStripWS($sDefExt, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sDefExt Then
$tDefExt = DllStructCreate('wchar[' & (StringLen($tDefExt) + 1) & ']')
EndIf
DllStructSetData($tDefExt, 1, StringReplace($sDefExt, '.', ''))
DllStructSetData($tOFN, "lpstrDefExt", DllStructGetPtr($tDefExt))
DllStructSetData($tOFN, "lCustData", $pData)
DllStructSetData($tOFN, "lpfnHook", $pOFNProc)
DllStructSetData($tOFN, 20, 0)
DllStructSetData($tOFN, 21, 0)
DllStructSetData($tOFN, 22, 0)
DllStructSetData($tOFN, "FlagsEx", $iFlagsEx)
Local $aCall
Switch $iDlg
Case 0
$aCall = DllCall('comdlg32.dll', 'bool', 'GetOpenFileNameW', 'struct*', $tOFN)
Case 1
$aCall = DllCall('comdlg32.dll', 'bool', 'GetSaveFileNameW', 'struct*', $tOFN)
Case Else
EndSwitch
If @error Or Not $aCall[0] Then Return SetError(@error + 10, _WinAPI_CommDlgExtendedErrorEx(), $vError)
If BitAND($iFlags, $OFN_ALLOWMULTISELECT) Then
If BitAND($iFlags, $OFN_EXPLORER) Then
$aData = _WinAPI_StructToArray($tBuffer)
If @error Then
Return SetError(11, 0, $vError)
EndIf
Else
$aData = StringSplit(DllStructGetData($tBuffer, 1), ' ')
EndIf
Switch $aData[0]
Case 0
Return SetError(12, 0, $vError)
Case 1
Case Else
Local $sPath = $aData[1]
For $i = 2 To $aData[0]
$aData[$i - 1] = _WinAPI_PathAppend($sPath, $aData[$i])
Next
ReDim $aData[$aData[0]]
$aData[0] -= 1
EndSwitch
Else
$aData = DllStructGetData($tBuffer, 1)
EndIf
$__g_vExt = $tOFN
Return $aData
EndFunc
Func __WinAPI_ParseMultiSelectFileDialogPath($aPath)
Local $aFiles[UBound($aPath) + 1]
$aFiles[0] = UBound($aPath)
$aFiles[1] = StringMid($aPath[1], 1, StringInStr($aPath[1], "\", $STR_NOCASESENSEBASIC, -1) - 1)
For $i = 1 To UBound($aPath) - 1
$aFiles[$i + 1] = StringMid($aPath[$i], StringInStr($aPath[$i], "\", $STR_NOCASESENSEBASIC, -1) + 1)
Next
Return $aFiles
EndFunc
Func __WinAPI_ParseFileDialogPath($sPath)
Local $aFiles[3]
$aFiles[0] = 2
$aFiles[1] = StringMid($sPath, 1, StringInStr($sPath, "\", $STR_NOCASESENSEBASIC, -1) - 1)
$aFiles[2] = StringMid($sPath, StringInStr($sPath, "\", $STR_NOCASESENSEBASIC, -1) + 1)
Return $aFiles
EndFunc
#EndRegion Internal Functions
Global Const $BACKUP_ALTERNATE_DATA = 0x00000004
Global Const $BACKUP_DATA = 0x00000001
Global Const $BACKUP_EA_DATA = 0x00000002
Global Const $BACKUP_LINK = 0x00000005
Global Const $BACKUP_OBJECT_ID = 0x00000007
Global Const $BACKUP_PROPERTY_DATA = 0x00000006
Global Const $BACKUP_REPARSE_DATA = 0x00000008
Global Const $BACKUP_SECURITY_DATA = 0x00000003
Global Const $BACKUP_SPARSE_BLOCK = 0x00000009
Global Const $BACKUP_TXFS_DATA = 0x0000000A
Global Const $COPY_FILE_ALLOW_DECRYPTED_DESTINATION = 0x0008
Global Const $COPY_FILE_COPY_SYMLINK = 0x0800
Global Const $COPY_FILE_FAIL_IF_EXISTS = 0x0001
Global Const $COPY_FILE_NO_BUFFERING = 0x1000
Global Const $COPY_FILE_OPEN_SOURCE_FOR_WRITE = 0x0004
Global Const $COPY_FILE_RESTARTABLE = 0x0002
Global Const $MOVE_FILE_COPY_ALLOWED = 0x0002
Global Const $MOVE_FILE_CREATE_HARDLINK = 0x0010
Global Const $MOVE_FILE_DELAY_UNTIL_REBOOT = 0x0004
Global Const $MOVE_FILE_FAIL_IF_NOT_TRACKABLE = 0x0020
Global Const $MOVE_FILE_REPLACE_EXISTING = 0x0001
Global Const $MOVE_FILE_WRITE_THROUGH = 0x0008
Global Const $PROGRESS_CONTINUE = 0
Global Const $PROGRESS_CANCEL = 1
Global Const $PROGRESS_STOP = 2
Global Const $PROGRESS_QUIET = 3
Global Const $FILE_APPEND_DATA = 0x0004
Global Const $FILE_DELETE_CHILD = 0x0040
Global Const $FILE_EXECUTE = 0x0020
Global Const $FILE_READ_ATTRIBUTES = 0x0080
Global Const $FILE_READ_DATA = 0x0001
Global Const $FILE_READ_EA = 0x0008
Global Const $FILE_WRITE_ATTRIBUTES = 0x0100
Global Const $FILE_WRITE_DATA = 0x0002
Global Const $FILE_WRITE_EA = 0x0010
Global Const $FILE_ADD_FILE = $FILE_WRITE_DATA
Global Const $FILE_ADD_SUBDIRECTORY = $FILE_APPEND_DATA
Global Const $FILE_CREATE_PIPE_INSTANCE = $FILE_APPEND_DATA
Global Const $FILE_LIST_DIRECTORY = $FILE_READ_DATA
Global Const $FILE_TRAVERSE = $FILE_EXECUTE
Global Const $FILE_ALL_ACCESS = 0x001F01FF
Global Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
Global Const $FILE_FLAG_DELETE_ON_CLOSE = 0x04000000
Global Const $FILE_FLAG_NO_BUFFERING = 0x20000000
Global Const $FILE_FLAG_OPEN_NO_RECALL = 0x00100000
Global Const $FILE_FLAG_OPEN_REPARSE_POINT = 0x00200000
Global Const $FILE_FLAG_OVERLAPPED = 0x40000000
Global Const $FILE_FLAG_POSIX_SEMANTICS = 0x0100000
Global Const $FILE_FLAG_RANDOM_ACCESS = 0x10000000
Global Const $FILE_FLAG_SEQUENTIAL_SCAN = 0x08000000
Global Const $FILE_FLAG_WRITE_THROUGH = 0x80000000
Global Const $SECURITY_ANONYMOUS = 0x00000000
Global Const $SECURITY_CONTEXT_TRACKING = 0x00040000
Global Const $SECURITY_DELEGATION = 0x00030000
Global Const $SECURITY_EFFECTIVE_ONLY = 0x00080000
Global Const $SECURITY_IDENTIFICATION = 0x00010000
Global Const $SECURITY_IMPERSONATION = 0x00020000
Global Const $SEC_COMMIT = 0x08000000
Global Const $SEC_IMAGE = 0x01000000
Global Const $SEC_LARGE_PAGES = 0x80000000
Global Const $SEC_NOCACHE = 0x10000000
Global Const $SEC_RESERVE = 0x04000000
Global Const $SEC_WRITECOMBINE = 0x40000000
Global Const $SECTION_EXTEND_SIZE = 0x0010
Global Const $SECTION_MAP_EXECUTE = 0x0008
Global Const $SECTION_MAP_READ = 0x0004
Global Const $SECTION_MAP_WRITE = 0x0002
Global Const $SECTION_QUERY = 0x0001
Global Const $SECTION_ALL_ACCESS = 0x001F001F
Global Const $FILE_MAP_COPY = 0x0001
Global Const $FILE_MAP_EXECUTE = 0x0020
Global Const $FILE_MAP_READ = 0x0004
Global Const $FILE_MAP_WRITE = 0x0002
Global Const $FILE_MAP_ALL_ACCESS = $SECTION_ALL_ACCESS
Global Const $DDD_EXACT_MATCH_ON_REMOVE = 0x04
Global Const $DDD_NO_BROADCAST_SYSTEM = 0x08
Global Const $DDD_RAW_TARGET_PATH = 0x01
Global Const $DDD_REMOVE_DEFINITION = 0x02
Global Const $FSCTL_ALLOW_EXTENDED_DASD_IO = 0x00090083
Global Const $FSCTL_CREATE_OR_GET_OBJECT_ID = 0x000900C0
Global Const $FSCTL_CREATE_USN_JOURNAL = 0x000900E7
Global Const $FSCTL_DELETE_OBJECT_ID = 0x000900A0
Global Const $FSCTL_DELETE_REPARSE_POINT = 0x000900AC
Global Const $FSCTL_DELETE_USN_JOURNAL = 0x000900F8
Global Const $FSCTL_DISMOUNT_VOLUME = 0x00090020
Global Const $FSCTL_DUMP_PROPERTY_DATA = 0x00090097
Global Const $FSCTL_ENABLE_UPGRADE = 0x000980D0
Global Const $FSCTL_ENCRYPTION_FSCTL_IO = 0x000900DB
Global Const $FSCTL_ENUM_USN_DATA = 0x000900B3
Global Const $FSCTL_EXTEND_VOLUME = 0x000900F0
Global Const $FSCTL_FILESYSTEM_GET_STATISTICS = 0x00090060
Global Const $FSCTL_FIND_FILES_BY_SID = 0x0009008F
Global Const $FSCTL_GET_COMPRESSION = 0x0009003C
Global Const $FSCTL_GET_NTFS_FILE_RECORD = 0x00090068
Global Const $FSCTL_GET_NTFS_VOLUME_DATA = 0x00090064
Global Const $FSCTL_GET_OBJECT_ID = 0x0009009C
Global Const $FSCTL_GET_REPARSE_POINT = 0x000900A8
Global Const $FSCTL_GET_RETRIEVAL_POINTERS = 0x00090073
Global Const $FSCTL_GET_VOLUME_BITMAP = 0x0009006F
Global Const $FSCTL_HSM_DATA = 0x0009C113
Global Const $FSCTL_HSM_MSG = 0x0009C108
Global Const $FSCTL_INVALIDATE_VOLUMES = 0x00090054
Global Const $FSCTL_IS_PATHNAME_VALID = 0x0009002C
Global Const $FSCTL_IS_VOLUME_DIRTY = 0x00090078
Global Const $FSCTL_IS_VOLUME_MOUNTED = 0x00090028
Global Const $FSCTL_LOCK_VOLUME = 0x00090018
Global Const $FSCTL_MARK_AS_SYSTEM_HIVE = 0x0009004F
Global Const $FSCTL_MARK_HANDLE = 0x000900FC
Global Const $FSCTL_MARK_VOLUME_DIRTY = 0x00090030
Global Const $FSCTL_MOVE_FILE = 0x00090074
Global Const $FSCTL_OPBATCH_ACK_CLOSE_PENDING = 0x00090010
Global Const $FSCTL_OPLOCK_BREAK_ACK_NO_2 = 0x00090050
Global Const $FSCTL_OPLOCK_BREAK_ACKNOWLEDGE = 0x0009000C
Global Const $FSCTL_OPLOCK_BREAK_NOTIFY = 0x00090014
Global Const $FSCTL_QUERY_ALLOCATED_RANGES = 0x000940CF
Global Const $FSCTL_QUERY_FAT_BPB = 0x00090058
Global Const $FSCTL_QUERY_RETRIEVAL_POINTERS = 0x0009003B
Global Const $FSCTL_QUERY_USN_JOURNAL = 0x000900F4
Global Const $FSCTL_READ_FILE_USN_DATA = 0x000900EB
Global Const $FSCTL_READ_PROPERTY_DATA = 0x00090087
Global Const $FSCTL_READ_RAW_ENCRYPTED = 0x000900E3
Global Const $FSCTL_READ_USN_JOURNAL = 0x000900BB
Global Const $FSCTL_RECALL_FILE = 0x00090117
Global Const $FSCTL_REQUEST_BATCH_OPLOCK = 0x00090008
Global Const $FSCTL_REQUEST_FILTER_OPLOCK = 0x0009005C
Global Const $FSCTL_REQUEST_OPLOCK_LEVEL_1 = 0x00090000
Global Const $FSCTL_REQUEST_OPLOCK_LEVEL_2 = 0x00090004
Global Const $FSCTL_SECURITY_ID_CHECK = 0x000940B7
Global Const $FSCTL_SET_COMPRESSION = 0x0009C040
Global Const $FSCTL_SET_ENCRYPTION = 0x000900D7
Global Const $FSCTL_SET_OBJECT_ID = 0x00090098
Global Const $FSCTL_SET_OBJECT_ID_EXTENDED = 0x000900BC
Global Const $FSCTL_SET_REPARSE_POINT = 0x000900A4
Global Const $FSCTL_SET_SPARSE = 0x000900C4
Global Const $FSCTL_SET_ZERO_DATA = 0x000980C8
Global Const $FSCTL_SIS_COPYFILE = 0x00090100
Global Const $FSCTL_SIS_LINK_FILES = 0x0009C104
Global Const $FSCTL_UNLOCK_VOLUME = 0x0009001C
Global Const $FSCTL_WRITE_PROPERTY_DATA = 0x0009008B
Global Const $FSCTL_WRITE_RAW_ENCRYPTED = 0x000900DF
Global Const $FSCTL_WRITE_USN_CLOSE_RECORD = 0x000900EF
Global Const $IOCTL_AACS_END_SESSION = 0x003350CC
Global Const $IOCTL_AACS_GENERATE_BINDING_NONCE = 0x0033D0F0
Global Const $IOCTL_AACS_GET_CERTIFICATE = 0x003350D4
Global Const $IOCTL_AACS_GET_CHALLENGE_KEY = 0x003350D8
Global Const $IOCTL_AACS_READ_BINDING_NONCE = 0x003350EC
Global Const $IOCTL_AACS_READ_MEDIA_ID = 0x003350E8
Global Const $IOCTL_AACS_READ_MEDIA_KEY_BLOCK = 0x003350C4
Global Const $IOCTL_AACS_READ_MEDIA_KEY_BLOCK_SIZE = 0x003350C0
Global Const $IOCTL_AACS_READ_SERIAL_NUMBER = 0x003350E4
Global Const $IOCTL_AACS_READ_VOLUME_ID = 0x003350E0
Global Const $IOCTL_AACS_SEND_CERTIFICATE = 0x003350D0
Global Const $IOCTL_AACS_SEND_CHALLENGE_KEY = 0x003350DC
Global Const $IOCTL_AACS_START_SESSION = 0x003350C8
Global Const $IOCTL_ATA_PASS_THROUGH = 0x0004D02C
Global Const $IOCTL_ATA_PASS_THROUGH_DIRECT = 0x0004D030
Global Const $IOCTL_CDROM_CHECK_VERIFY = 0x00024800
Global Const $IOCTL_CDROM_DISK_TYPE = 0x00020040
Global Const $IOCTL_CDROM_EJECT_MEDIA = 0x00024808
Global Const $IOCTL_CDROM_FIND_NEW_DEVICES = 0x00024818
Global Const $IOCTL_CDROM_GET_CONFIGURATION = 0x00024058
Global Const $IOCTL_CDROM_GET_CONTROL = 0x00024034
Global Const $IOCTL_CDROM_GET_DRIVE_GEOMETRY = 0x0002404C
Global Const $IOCTL_CDROM_GET_DRIVE_GEOMETRY_EX = 0x00024050
Global Const $IOCTL_CDROM_GET_LAST_SESSION = 0x00024038
Global Const $IOCTL_CDROM_GET_VOLUME = 0x00024014
Global Const $IOCTL_CDROM_LOAD_MEDIA = 0x0002480C
Global Const $IOCTL_CDROM_MEDIA_REMOVAL = 0x00024804
Global Const $IOCTL_CDROM_PAUSE_AUDIO = 0x0002400C
Global Const $IOCTL_CDROM_PLAY_AUDIO_MSF = 0x00024018
Global Const $IOCTL_CDROM_RAW_READ = 0x0002403E
Global Const $IOCTL_CDROM_READ_Q_CHANNEL = 0x0002402C
Global Const $IOCTL_CDROM_READ_TOC = 0x00024000
Global Const $IOCTL_CDROM_READ_TOC_EX = 0x00024054
Global Const $IOCTL_CDROM_RELEASE = 0x00024814
Global Const $IOCTL_CDROM_RESERVE = 0x00024810
Global Const $IOCTL_CDROM_RESUME_AUDIO = 0x00024010
Global Const $IOCTL_CDROM_SEEK_AUDIO_MSF = 0x00024004
Global Const $IOCTL_CDROM_SET_VOLUME = 0x00024028
Global Const $IOCTL_CDROM_STOP_AUDIO = 0x00024008
Global Const $IOCTL_CDROM_UNLOAD_DRIVER = 0x00025008
Global Const $IOCTL_DISK_CHECK_VERIFY = 0x00074800
Global Const $IOCTL_DISK_CONTROLLER_NUMBER = 0x00070044
Global Const $IOCTL_DISK_CREATE_DISK = 0x0007C058
Global Const $IOCTL_DISK_DELETE_DRIVE_LAYOUT = 0x0007C100
Global Const $IOCTL_DISK_EJECT_MEDIA = 0x00074808
Global Const $IOCTL_DISK_FIND_NEW_DEVICES = 0x00074818
Global Const $IOCTL_DISK_FORMAT_TRACKS = 0x0007C018
Global Const $IOCTL_DISK_FORMAT_TRACKS_EX = 0x0007C02C
Global Const $IOCTL_DISK_GET_CACHE_INFORMATION = 0x000740D4
Global Const $IOCTL_DISK_GET_DRIVE_GEOMETRY = 0x00070000
Global Const $IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = 0x000700A0
Global Const $IOCTL_DISK_GET_DRIVE_LAYOUT = 0x0007400C
Global Const $IOCTL_DISK_GET_DRIVE_LAYOUT_EX = 0x00070050
Global Const $IOCTL_DISK_GET_LENGTH_INFO = 0x0007405C
Global Const $IOCTL_DISK_GET_MEDIA_TYPES = 0x00070C00
Global Const $IOCTL_DISK_GET_PARTITION_INFO = 0x00074004
Global Const $IOCTL_DISK_GET_PARTITION_INFO_EX = 0x00070048
Global Const $IOCTL_DISK_GET_WRITE_CACHE_STATE = 0x000740DC
Global Const $IOCTL_DISK_GROW_PARTITION = 0x0007C0D0
Global Const $IOCTL_DISK_HISTOGRAM_DATA = 0x00070034
Global Const $IOCTL_DISK_HISTOGRAM_RESET = 0x00070038
Global Const $IOCTL_DISK_HISTOGRAM_STRUCTURE = 0x00070030
Global Const $IOCTL_DISK_INTERNAL_CLEAR_VERIFY = 0x00070407
Global Const $IOCTL_DISK_INTERNAL_SET_NOTIFY = 0x00070408
Global Const $IOCTL_DISK_INTERNAL_SET_VERIFY = 0x00070403
Global Const $IOCTL_DISK_IS_WRITABLE = 0x00070024
Global Const $IOCTL_DISK_LOAD_MEDIA = 0x0007480C
Global Const $IOCTL_DISK_LOGGING = 0x00070028
Global Const $IOCTL_DISK_MEDIA_REMOVAL = 0x00074804
Global Const $IOCTL_DISK_PERFORMANCE = 0x00070020
Global Const $IOCTL_DISK_PERFORMANCE_OFF = 0x00070060
Global Const $IOCTL_DISK_REASSIGN_BLOCKS = 0x0007C01C
Global Const $IOCTL_DISK_RELEASE = 0x00074814
Global Const $IOCTL_DISK_REQUEST_DATA = 0x00070040
Global Const $IOCTL_DISK_REQUEST_STRUCTURE = 0x0007003C
Global Const $IOCTL_DISK_RESERVE = 0x00074810
Global Const $IOCTL_DISK_SET_CACHE_INFORMATION = 0x0007C0D8
Global Const $IOCTL_DISK_SET_DRIVE_LAYOUT = 0x0007C010
Global Const $IOCTL_DISK_SET_DRIVE_LAYOUT_EX = 0x0007C054
Global Const $IOCTL_DISK_SET_PARTITION_INFO = 0x0007C008
Global Const $IOCTL_DISK_SET_PARTITION_INFO_EX = 0x0007C04C
Global Const $IOCTL_DISK_UPDATE_DRIVE_SIZE = 0x0007C0C8
Global Const $IOCTL_DISK_UPDATE_PROPERTIES = 0x00070140
Global Const $IOCTL_DISK_VERIFY = 0x00070014
Global Const $IOCTL_DVD_END_SESSION = 0x0033500C
Global Const $IOCTL_DVD_GET_REGION = 0x00335014
Global Const $IOCTL_DVD_READ_KEY = 0x00335004
Global Const $IOCTL_DVD_READ_STRUCTURE = 0x00335140
Global Const $IOCTL_DVD_SEND_KEY = 0x00335008
Global Const $IOCTL_DVD_SEND_KEY2 = 0x0033D018
Global Const $IOCTL_DVD_SET_READ_AHEAD = 0x00335010
Global Const $IOCTL_DVD_START_SESSION = 0x00335000
Global Const $IOCTL_MOUNTDEV_LINK_CREATED = 0x004D0010
Global Const $IOCTL_MOUNTDEV_LINK_DELETED = 0x004D0014
Global Const $IOCTL_MOUNTDEV_QUERY_STABLE_GUID = 0x004D0018
Global Const $IOCTL_MOUNTDEV_QUERY_SUGGESTED_LINK_NAME = 0x004D000C
Global Const $IOCTL_MOUNTDEV_QUERY_UNIQUE_ID = 0x004D0000
Global Const $IOCTL_MOUNTDEV_UNIQUE_ID_CHANGE_NOTIFY = 0x004D0004
Global Const $IOCTL_MOUNTMGR_AUTO_DL_ASSIGNMENTS = 0x006DC014
Global Const $IOCTL_MOUNTMGR_CHANGE_NOTIFY = 0x006D4020
Global Const $IOCTL_MOUNTMGR_CHECK_UNPROCESSED_VOLUMES = 0x006D4028
Global Const $IOCTL_MOUNTMGR_CREATE_POINT = 0x006DC000
Global Const $IOCTL_MOUNTMGR_DELETE_POINTS = 0x006DC004
Global Const $IOCTL_MOUNTMGR_DELETE_POINTS_DBONLY = 0x006DC00C
Global Const $IOCTL_MOUNTMGR_KEEP_LINKS_WHEN_OFFLINE = 0x006DC024
Global Const $IOCTL_MOUNTMGR_NEXT_DRIVE_LETTER = 0x006DC010
Global Const $IOCTL_MOUNTMGR_QUERY_DOS_VOLUME_PATH = 0x006D0030
Global Const $IOCTL_MOUNTMGR_QUERY_DOS_VOLUME_PATHS = 0x006D0034
Global Const $IOCTL_MOUNTMGR_QUERY_POINTS = 0x006D0008
Global Const $IOCTL_MOUNTMGR_VOLUME_ARRIVAL_NOTIFICATION = 0x006D402C
Global Const $IOCTL_MOUNTMGR_VOLUME_MOUNT_POINT_CREATED = 0x006DC018
Global Const $IOCTL_MOUNTMGR_VOLUME_MOUNT_POINT_DELETED = 0x006DC01C
Global Const $IOCTL_SCSI_GET_INQUIRY_DATA = 0x0004100C
Global Const $IOCTL_SCSI_GET_CAPABILITIES = 0x00041010
Global Const $IOCTL_SCSI_GET_ADDRESS = 0x00041018
Global Const $IOCTL_SCSI_MINIPORT = 0x0004D008
Global Const $IOCTL_SCSI_PASS_THROUGH = 0x0004D004
Global Const $IOCTL_SCSI_PASS_THROUGH_DIRECT = 0x0004D014
Global Const $IOCTL_SCSI_RESCAN_BUS = 0x0004101C
Global Const $IOCTL_STORAGE_BREAK_RESERVATION = 0x002D5014
Global Const $IOCTL_STORAGE_CHECK_VERIFY = 0x002D4800
Global Const $IOCTL_STORAGE_CHECK_VERIFY2 = 0x002D0800
Global Const $IOCTL_STORAGE_EJECT_MEDIA = 0x002D4808
Global Const $IOCTL_STORAGE_EJECTION_CONTROL = 0x002D0940
Global Const $IOCTL_STORAGE_FIND_NEW_DEVICES = 0x002D4818
Global Const $IOCTL_STORAGE_GET_DEVICE_NUMBER = 0x002D1080
Global Const $IOCTL_STORAGE_GET_HOTPLUG_INFO = 0x002D0C14
Global Const $IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER = 0x002D0C10
Global Const $IOCTL_STORAGE_GET_MEDIA_TYPES = 0x002D0C00
Global Const $IOCTL_STORAGE_GET_MEDIA_TYPES_EX = 0x002D0C04
Global Const $IOCTL_STORAGE_LOAD_MEDIA = 0x002D480C
Global Const $IOCTL_STORAGE_LOAD_MEDIA2 = 0x002D080C
Global Const $IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES = 0x002D9404
Global Const $IOCTL_STORAGE_MCN_CONTROL = 0x002D0944
Global Const $IOCTL_STORAGE_MEDIA_REMOVAL = 0x002D4804
Global Const $IOCTL_STORAGE_PERSISTENT_RESERVE_IN = 0x002D5018
Global Const $IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = 0x002D501C
Global Const $IOCTL_STORAGE_PREDICT_FAILURE = 0x002D1100
Global Const $IOCTL_STORAGE_QUERY_PROPERTY = 0x002D1400
Global Const $IOCTL_STORAGE_RELEASE = 0x002D4814
Global Const $IOCTL_STORAGE_RESERVE = 0x002D4810
Global Const $IOCTL_STORAGE_RESET_BUS = 0x002D5000
Global Const $IOCTL_STORAGE_RESET_DEVICE = 0x002D5004
Global Const $IOCTL_STORAGE_SET_HOTPLUG_INFO = 0x002DCC18
Global Const $IOCTL_STORAGE_SET_READ_AHEAD = 0x002D4400
Global Const $IOCTL_VOLUME_GET_GPT_ATTRIBUTES = 0x00560038
Global Const $IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = 0x00560000
Global Const $IOCTL_VOLUME_IS_CLUSTERED = 0x00560030
Global Const $IOCTL_VOLUME_IS_IO_CAPABLE = 0x00560014
Global Const $IOCTL_VOLUME_IS_OFFLINE = 0x00560010
Global Const $IOCTL_VOLUME_IS_PARTITION = 0x00560028
Global Const $IOCTL_VOLUME_LOGICAL_TO_PHYSICAL = 0x00560020
Global Const $IOCTL_VOLUME_OFFLINE = 0x0056C00C
Global Const $IOCTL_VOLUME_ONLINE = 0x0056C008
Global Const $IOCTL_VOLUME_PHYSICAL_TO_LOGICAL = 0x00560024
Global Const $IOCTL_VOLUME_QUERY_FAILOVER_SET = 0x00560018
Global Const $IOCTL_VOLUME_QUERY_VOLUME_NUMBER = 0x0056001C
Global Const $IOCTL_VOLUME_READ_PLEX = 0x0056402E
Global Const $IOCTL_VOLUME_SET_GPT_ATTRIBUTES = 0x00560034
Global Const $IOCTL_VOLUME_SUPPORTS_ONLINE_OFFLINE = 0x00560004
Global Const $SMART_GET_VERSION = 0x00074080
Global Const $SMART_RCV_DRIVE_DATA = 0x0007C088
Global Const $SMART_SEND_DRIVE_COMMAND = 0x0007C084
Global Const $FILE_ENCRYPTABLE = 0
Global Const $FILE_IS_ENCRYPTED = 1
Global Const $FILE_READ_ONLY = 8
Global Const $FILE_ROOT_DIR = 3
Global Const $FILE_SYSTEM_ATTR = 2
Global Const $FILE_SYSTEM_DIR = 4
Global Const $FILE_SYSTEM_NOT_SUPPORT = 6
Global Const $FILE_UNKNOWN = 5
Global Const $FILE_USER_DISALLOWED = 7
Global Const $SCS_32BIT_BINARY = 0
Global Const $SCS_64BIT_BINARY = 6
Global Const $SCS_DOS_BINARY = 1
Global Const $SCS_OS216_BINARY = 5
Global Const $SCS_PIF_BINARY = 3
Global Const $SCS_POSIX_BINARY = 4
Global Const $SCS_WOW_BINARY = 2
Global Const $DRIVE_BUS_TYPE_UNKNOWN = 0x00
Global Const $DRIVE_BUS_TYPE_SCSI = 0x01
Global Const $DRIVE_BUS_TYPE_ATAPI = 0x02
Global Const $DRIVE_BUS_TYPE_ATA = 0x03
Global Const $DRIVE_BUS_TYPE_1394 = 0x04
Global Const $DRIVE_BUS_TYPE_SSA = 0x05
Global Const $DRIVE_BUS_TYPE_FIBRE = 0x06
Global Const $DRIVE_BUS_TYPE_USB = 0x07
Global Const $DRIVE_BUS_TYPE_RAID = 0x08
Global Const $DRIVE_BUS_TYPE_ISCSI = 0x09
Global Const $DRIVE_BUS_TYPE_SAS = 0x0A
Global Const $DRIVE_BUS_TYPE_SATA = 0x0B
Global Const $DRIVE_BUS_TYPE_SD = 0x0C
Global Const $DRIVE_BUS_TYPE_MMC = 0x0D
Global Const $DRIVE_UNKNOWN = 0
Global Const $DRIVE_NO_ROOT_DIR = 1
Global Const $DRIVE_REMOVABLE = 2
Global Const $DRIVE_FIXED = 3
Global Const $DRIVE_REMOTE = 4
Global Const $DRIVE_CDROM = 5
Global Const $DRIVE_RAMDISK = 6
Global Const $FILE_TYPE_CHAR = 0x0002
Global Const $FILE_TYPE_DISK = 0x0001
Global Const $FILE_TYPE_PIPE = 0x0003
Global Const $FILE_TYPE_REMOTE = 0x8000
Global Const $FILE_TYPE_UNKNOWN = 0x0000
Global Const $FILE_NAME_NORMALIZED = 0x0
Global Const $FILE_NAME_OPENED = 0x8
Global Const $VOLUME_NAME_DOS = 0x0
Global Const $VOLUME_NAME_GUID = 0x1
Global Const $VOLUME_NAME_NONE = 0x4
Global Const $VOLUME_NAME_NT = 0x2
Global Const $IMAGE_FILE_MACHINE_UNKNOWN = 0x0000
Global Const $IMAGE_FILE_MACHINE_AM33 = 0x01D3
Global Const $IMAGE_FILE_MACHINE_AMD64 = 0x8664
Global Const $IMAGE_FILE_MACHINE_ARM = 0x01C0
Global Const $IMAGE_FILE_MACHINE_EBC = 0x0EBC
Global Const $IMAGE_FILE_MACHINE_I386 = 0x014C
Global Const $IMAGE_FILE_MACHINE_IA64 = 0x0200
Global Const $IMAGE_FILE_MACHINE_M32R = 0x9041
Global Const $IMAGE_FILE_MACHINE_MIPS16 = 0x0266
Global Const $IMAGE_FILE_MACHINE_MIPSFPU = 0x0366
Global Const $IMAGE_FILE_MACHINE_MIPSFPU16 = 0x0466
Global Const $IMAGE_FILE_MACHINE_POWERPC = 0x01F0
Global Const $IMAGE_FILE_MACHINE_POWERPCFP = 0x01F1
Global Const $IMAGE_FILE_MACHINE_R4000 = 0x0166
Global Const $IMAGE_FILE_MACHINE_SH3 = 0x01A2
Global Const $IMAGE_FILE_MACHINE_SH3DSP = 0x01A3
Global Const $IMAGE_FILE_MACHINE_SH4 = 0x01A6
Global Const $IMAGE_FILE_MACHINE_SH5 = 0x01A8
Global Const $IMAGE_FILE_MACHINE_THUMB = 0x01C2
Global Const $IMAGE_FILE_MACHINE_WCEMIPSV2 = 0x0169
Global Const $FILE_CASE_PRESERVED_NAMES = 0x00000002
Global Const $FILE_CASE_SENSITIVE_SEARCH = 0x00000001
Global Const $FILE_FILE_COMPRESSION = 0x00000010
Global Const $FILE_NAMED_STREAMS = 0x00040000
Global Const $FILE_PERSISTENT_ACLS = 0x00000008
Global Const $FILE_READ_ONLY_VOLUME = 0x00080000
Global Const $FILE_SEQUENTIAL_WRITE_ONCE = 0x00100000
Global Const $FILE_SUPPORTS_ENCRYPTION = 0x00020000
Global Const $FILE_SUPPORTS_EXTENDED_ATTRIBUTES = 0x00800000
Global Const $FILE_SUPPORTS_HARD_LINKS = 0x00400000
Global Const $FILE_SUPPORTS_OBJECT_IDS = 0x00010000
Global Const $FILE_SUPPORTS_OPEN_BY_FILE_ID = 0x01000000
Global Const $FILE_SUPPORTS_REPARSE_POINTS = 0x00000080
Global Const $FILE_SUPPORTS_SPARSE_FILES = 0x00000040
Global Const $FILE_SUPPORTS_TRANSACTIONS = 0x00200000
Global Const $FILE_SUPPORTS_USN_JOURNAL = 0x02000000
Global Const $FILE_UNICODE_ON_DISK = 0x00000004
Global Const $FILE_VOLUME_IS_COMPRESSED = 0x00008000
Global Const $FILE_VOLUME_QUOTAS = 0x00000020
Global Const $FILE_DEVICE_8042_PORT = 0x0027
Global Const $FILE_DEVICE_ACPI = 0x0032
Global Const $FILE_DEVICE_BATTERY = 0x0029
Global Const $FILE_DEVICE_BEEP = 0x0001
Global Const $FILE_DEVICE_BUS_EXTENDER = 0x002A
Global Const $FILE_DEVICE_CD_ROM = 0x0002
Global Const $FILE_DEVICE_CD_ROM_FILE_SYSTEM = 0x0003
Global Const $FILE_DEVICE_CHANGER = 0x0030
Global Const $FILE_DEVICE_CONTROLLER = 0x0004
Global Const $FILE_DEVICE_DATALINK = 0x0005
Global Const $FILE_DEVICE_DFS = 0x0006
Global Const $FILE_DEVICE_DFS_FILE_SYSTEM = 0x0035
Global Const $FILE_DEVICE_DFS_VOLUME = 0x0036
Global Const $FILE_DEVICE_DISK = 0x0007
Global Const $FILE_DEVICE_DISK_FILE_SYSTEM = 0x0008
Global Const $FILE_DEVICE_DVD = 0x0033
Global Const $FILE_DEVICE_FILE_SYSTEM = 0x0009
Global Const $FILE_DEVICE_FIPS = 0x003A
Global Const $FILE_DEVICE_FULLSCREEN_VIDEO = 0x0034
Global Const $FILE_DEVICE_INPORT_PORT = 0x000A
Global Const $FILE_DEVICE_KEYBOARD = 0x000B
Global Const $FILE_DEVICE_KS = 0x002F
Global Const $FILE_DEVICE_KSEC = 0x0039
Global Const $FILE_DEVICE_MAILSLOT = 0x000C
Global Const $FILE_DEVICE_MASS_STORAGE = 0x002D
Global Const $FILE_DEVICE_MIDI_IN = 0x000D
Global Const $FILE_DEVICE_MIDI_OUT = 0x000E
Global Const $FILE_DEVICE_MODEM = 0x002B
Global Const $FILE_DEVICE_MOUSE = 0x000F
Global Const $FILE_DEVICE_MULTI_UNC_PROVIDER = 0x0010
Global Const $FILE_DEVICE_NAMED_PIPE = 0x0011
Global Const $FILE_DEVICE_NETWORK = 0x0012
Global Const $FILE_DEVICE_NETWORK_BROWSER = 0x0013
Global Const $FILE_DEVICE_NETWORK_FILE_SYSTEM = 0x0014
Global Const $FILE_DEVICE_NETWORK_REDIRECTOR = 0x0028
Global Const $FILE_DEVICE_NULL = 0x0015
Global Const $FILE_DEVICE_PARALLEL_PORT = 0x0016
Global Const $FILE_DEVICE_PHYSICAL_NETCARD = 0x0017
Global Const $FILE_DEVICE_PRINTER = 0x0018
Global Const $FILE_DEVICE_SCANNER = 0x0019
Global Const $FILE_DEVICE_SCREEN = 0x001C
Global Const $FILE_DEVICE_SERENUM = 0x0037
Global Const $FILE_DEVICE_SERIAL_MOUSE_PORT = 0x001A
Global Const $FILE_DEVICE_SERIAL_PORT = 0x001B
Global Const $FILE_DEVICE_SMARTCARD = 0x0031
Global Const $FILE_DEVICE_SMB = 0x002E
Global Const $FILE_DEVICE_SOUND = 0x001D
Global Const $FILE_DEVICE_STREAMS = 0x001E
Global Const $FILE_DEVICE_TAPE = 0x001F
Global Const $FILE_DEVICE_TAPE_FILE_SYSTEM = 0x0020
Global Const $FILE_DEVICE_TERMSRV = 0x0038
Global Const $FILE_DEVICE_TRANSPORT = 0x0021
Global Const $FILE_DEVICE_UNKNOWN = 0x0022
Global Const $FILE_DEVICE_VDM = 0x002C
Global Const $FILE_DEVICE_VIDEO = 0x0023
Global Const $FILE_DEVICE_VIRTUAL_DISK = 0x0024
Global Const $FILE_DEVICE_WAVE_IN = 0x0025
Global Const $FILE_DEVICE_WAVE_OUT = 0x0026
Global Const $FILE_ANY_ACCESS = 0x00
Global Const $FILE_SPECIAL_ACCESS = $FILE_ANY_ACCESS
Global Const $FILE_READ_ACCESS = 0x01
Global Const $FILE_WRITE_ACCESS = 0x02
Global Const $METHOD_BUFFERED = 0
Global Const $METHOD_IN_DIRECT = 1
Global Const $METHOD_OUT_DIRECT = 2
Global Const $METHOD_NEITHER = 3
Global Const $FILE_NOTIFY_CHANGE_FILE_NAME = 0x0001
Global Const $FILE_NOTIFY_CHANGE_DIR_NAME = 0x0002
Global Const $FILE_NOTIFY_CHANGE_ATTRIBUTES = 0x0004
Global Const $FILE_NOTIFY_CHANGE_SIZE = 0x0008
Global Const $FILE_NOTIFY_CHANGE_LAST_WRITE = 0x0010
Global Const $FILE_NOTIFY_CHANGE_LAST_ACCESS = 0x0020
Global Const $FILE_NOTIFY_CHANGE_CREATION = 0x0040
Global Const $FILE_NOTIFY_CHANGE_SECURITY = 0x0100
Global Const $FILE_ACTION_ADDED = 0x0001
Global Const $FILE_ACTION_REMOVED = 0x0002
Global Const $FILE_ACTION_MODIFIED = 0x0003
Global Const $FILE_ACTION_RENAMED_OLD_NAME = 0x0004
Global Const $FILE_ACTION_RENAMED_NEW_NAME = 0x0005
Global Const $REPLACEFILE_WRITE_THROUGH = 0x01
Global Const $REPLACEFILE_IGNORE_MERGE_ERRORS = 0x02
Global Const $REPLACEFILE_IGNORE_ACL_ERRORS = 0x04
Global Const $BASE_SEARCH_PATH_ENABLE_SAFE_SEARCHMODE = 0x00000001
Global Const $BASE_SEARCH_PATH_DISABLE_SAFE_SEARCHMODE = 0x00010000
Global Const $BASE_SEARCH_PATH_PERMANENT = 0x00008000
Global Const $GMEM_FIXED = 0x0000
Global Const $GMEM_MOVEABLE = 0x0002
Global Const $GMEM_NOCOMPACT = 0x0010
Global Const $GMEM_NODISCARD = 0x0020
Global Const $GMEM_ZEROINIT = 0x0040
Global Const $GMEM_MODIFY = 0x0080
Global Const $GMEM_DISCARDABLE = 0x0100
Global Const $GMEM_NOT_BANKED = 0x1000
Global Const $GMEM_SHARE = 0x2000
Global Const $GMEM_DDESHARE = 0x2000
Global Const $GMEM_NOTIFY = 0x4000
Global Const $GMEM_LOWER = 0x1000
Global Const $GMEM_VALID_FLAGS = 0x7F72
Global Const $GMEM_INVALID_HANDLE = 0x8000
Global Const $GPTR = BitOR($GMEM_FIXED, $GMEM_ZEROINIT)
Global Const $GHND = BitOR($GMEM_MOVEABLE, $GMEM_ZEROINIT)
Global Const $MEM_COMMIT = 0x00001000
Global Const $MEM_RESERVE = 0x00002000
Global Const $MEM_TOP_DOWN = 0x00100000
Global Const $MEM_SHARED = 0x08000000
Global Const $PAGE_NOACCESS = 0x00000001
Global Const $PAGE_READONLY = 0x00000002
Global Const $PAGE_READWRITE = 0x00000004
Global Const $PAGE_EXECUTE = 0x00000010
Global Const $PAGE_EXECUTE_READ = 0x00000020
Global Const $PAGE_EXECUTE_READWRITE = 0x00000040
Global Const $PAGE_EXECUTE_WRITECOPY = 0x00000080
Global Const $PAGE_GUARD = 0x00000100
Global Const $PAGE_NOCACHE = 0x00000200
Global Const $PAGE_WRITECOMBINE = 0x00000400
Global Const $PAGE_WRITECOPY = 0x00000008
Global Const $MEM_DECOMMIT = 0x00004000
Global Const $MEM_RELEASE = 0x00008000
Global Enum $MEM_LOAD, $MEM_TOTALPHYSRAM, $MEM_AVAILPHYSRAM, $MEM_TOTALPAGEFILE, $MEM_AVAILPAGEFILE, $MEM_TOTALVIRTUAL, $MEM_AVAILVIRTUAL
#Region Global Variables and Constants
Global $__g_iHeapSize = 8388608
Global Const $tagFILEINFO = 'uint64 CreationTime;uint64 LastAccessTime;uint64 LastWriteTime;uint64 ChangeTime;dword Attributes'
Global Const $tagFILE_ID_DESCRIPTOR = 'dword Size;uint Type;' & $tagGUID
Global Const $tagWIN32_FIND_STREAM_DATA = 'int64 StreamSize;wchar StreamName[296]'
Global Const $tagWIN32_STREAM_ID = 'dword StreamId;dword StreamAttributes;int64 Size;dword StreamNameSize;wchar StreamName[1]'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_BackupRead($hFile, $pBuffer, $iLength, ByRef $iBytes, ByRef $pContext, $bSecurity = False)
$iBytes = 0
Local $aCall = DllCall('kernel32.dll', 'bool', 'BackupRead', 'handle', $hFile, 'struct*', $pBuffer, 'dword', $iLength,  'dword*', 0, 'bool', 0, 'bool', $bSecurity, 'ptr*', $pContext)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
$iBytes = $aCall[4]
$pContext = $aCall[7]
Return $aCall[0]
EndFunc
Func _WinAPI_BackupReadAbort(ByRef $pContext)
Local $aCall = DllCall('kernel32.dll', 'bool', 'BackupRead', 'handle', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'bool', 1,  'bool', 0, 'ptr*', $pContext)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
$pContext = $aCall[7]
Return $aCall[0]
EndFunc
Func _WinAPI_BackupSeek($hFile, $iSeek, ByRef $iBytes, ByRef $pContext)
$iBytes = 0
Local $aCall = DllCall('kernel32.dll', 'bool', 'BackupSeek', 'handle', $hFile, 'dword', _WinAPI_LoDWord($iSeek),  'dword', _WinAPI_HiDWord($iSeek), 'dword*', 0, 'dword*', 0, 'ptr*', $pContext)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
$iBytes = __WinAPI_MakeQWord($aCall[4], $aCall[5])
$pContext = $aCall[6]
Return $aCall[0]
EndFunc
Func _WinAPI_BackupWrite($hFile, $pBuffer, $iLength, ByRef $iBytes, ByRef $pContext, $bSecurity = False)
$iBytes = 0
Local $aCall = DllCall('kernel32.dll', 'bool', 'BackupWrite', 'handle', $hFile, 'struct*', $pBuffer, 'dword', $iLength,  'dword*', 0, 'bool', 0, 'bool', $bSecurity, 'ptr*', $pContext)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
$iBytes = $aCall[4]
$pContext = $aCall[7]
Return $aCall[0]
EndFunc
Func _WinAPI_BackupWriteAbort(ByRef $pContext)
Local $aCall = DllCall('kernel32.dll', 'bool', 'BackupWrite', 'handle', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'bool', 1,  'bool', 0, 'ptr*', $pContext)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
$pContext = $aCall[7]
Return $aCall[0]
EndFunc
Func _WinAPI_CopyFileEx($sExistingFile, $sNewFile, $iFlags = 0, $pProgressProc = 0, $pData = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'CopyFileExW', 'wstr', $sExistingFile, 'wstr', $sNewFile,  'ptr', $pProgressProc, 'struct*', $pData, 'bool*', 0, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDirectory($sDir, $tSecurity = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'CreateDirectoryW', 'wstr', $sDir, 'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDirectoryEx($sNewDir, $sTemplateDir, $tSecurity = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'CreateDirectoryExW', 'wstr', $sTemplateDir, 'wstr', $sNewDir, 'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFileEx($sFilePath, $iCreation, $iAccess = 0, $iShare = 0, $iFlagsAndAttributes = 0, $tSecurity = 0, $hTemplate = 0)
Local $aCall = DllCall('kernel32.dll', 'handle', 'CreateFileW', 'wstr', $sFilePath, 'dword', $iAccess, 'dword', $iShare,  'struct*', $tSecurity, 'dword', $iCreation, 'dword', $iFlagsAndAttributes, 'handle', $hTemplate)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFileMapping($hFile, $iSize = 0, $sName = '', $iProtect = 0x0004, $tSecurity = 0)
If Not StringStripWS($sName, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sName = Null
Local $aCall = DllCall('kernel32.dll', 'handle', 'CreateFileMappingW', 'handle', $hFile, 'struct*', $tSecurity,  'dword', $iProtect, 'dword', _WinAPI_HiDWord($iSize), 'dword', _WinAPI_LoDWord($iSize),  'wstr', $sName)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended(_WinAPI_GetLastError(), $aCall[0])
EndFunc
Func _WinAPI_CreateHardLink($sNewFile, $sExistingFile)
Local $aCall = DllCall('kernel32.dll', 'bool', 'CreateHardLinkW', 'wstr', $sNewFile, 'wstr', $sExistingFile, 'ptr', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateObjectID($sFilePath)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tFOID = DllStructCreate('byte[16];byte[48]')
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000900C0, 'ptr', 0,  'dword', 0, 'struct*', $tFOID, 'dword', DllStructGetSize($tFOID), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Local $tGUID = DllStructCreate($tagGUID)
_WinAPI_MoveMemory($tGUID, $tFOID, 16)
Return $tGUID
EndFunc
Func _WinAPI_CreateSymbolicLink($sSymlink, $sTarget, $bDirectory = False)
If $bDirectory Then
$bDirectory = 1
EndIf
Local $aCall = DllCall('kernel32.dll', 'boolean', 'CreateSymbolicLinkW', 'wstr', $sSymlink, 'wstr', $sTarget, 'dword', $bDirectory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DecryptFile($sFilePath)
Local $aCall = DllCall('advapi32.dll', 'bool', 'DecryptFileW', 'wstr', $sFilePath, 'dword', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DefineDosDevice($sDevice, $iFlags, $sFilePath = '')
If Not StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sFilePath = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'DefineDosDeviceW', 'dword', $iFlags, 'wstr', $sDevice, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteFile($sFilePath)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeleteFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteObjectID($sFilePath)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, $GENERIC_WRITE, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000900A0, 'ptr', 0,  'dword', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_DeleteVolumeMountPoint($sMountedPath)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeleteVolumeMountPointW', 'wstr', $sMountedPath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DeviceIoControl($hDevice, $iControlCode, $pInBuffer = 0, $iInBufferSize = 0, $pOutBuffer = 0, $iOutBufferSize = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hDevice, 'dword', $iControlCode,  'struct*', $pInBuffer, 'dword', $iInBufferSize, 'struct*', $pOutBuffer, 'dword', $iOutBufferSize,  'dword*', 0, 'ptr', 0)
If @error Then Return SetError(@error, @extended, False)
Return SetExtended($aCall[7], $aCall[0])
EndFunc
Func _WinAPI_DuplicateEncryptionInfoFile($sSrcFilePath, $sDestFilePath, $iCreation = 2, $iAttributes = 0, $tSecurity = 0)
Local $aCall = DllCall('advapi32.dll', 'dword', 'DuplicateEncryptionInfoFile', 'wstr', $sSrcFilePath, 'wstr', $sDestFilePath,  'dword', $iCreation, 'dword', $iAttributes, 'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_EjectMedia($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D4808, 'ptr', 0,  'dword', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_EncryptFile($sFilePath)
Local $aCall = DllCall('advapi32.dll', 'bool', 'EncryptFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EncryptionDisable($sDir, $bDisable)
Local $aCall = DllCall('advapi32.dll', 'bool', 'EncryptionDisable', 'wstr', $sDir, 'bool', $bDisable)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumFiles($sDir, $iFlag = 0, $sTemplate = '', $bExclude = False)
Local $aCall, $iError = 0
Local $aData[501][7] = [[0]]
Local $hDir = _WinAPI_CreateFileEx($sDir, $OPEN_EXISTING, 0x00000001, $FILE_SHARE_ANY, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $pBuffer = __HeapAlloc($__g_iHeapSize)
If @error Then
$iError = @error
Else
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
$aCall = DllCall('ntdll.dll', 'uint', 'ZwQueryDirectoryFile', 'handle', $hDir, 'ptr', 0, 'ptr', 0, 'ptr', 0,  'struct*', $tIOSB, 'struct*', $pBuffer, 'ulong', 8388608, 'uint', 1, 'boolean', 0, 'ptr', 0, 'boolean', 1)
If @error Or $aCall[0] Then
$iError = @error + 40
EndIf
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hDir)
If $iError Then
__HeapFree($pBuffer, 1)
If IsArray($aCall) Then
Return SetError(10, $aCall[0], 0)
Else
Return SetError($iError, 0, 0)
EndIf
EndIf
Local $tFDI, $iAttrib, $sTarget, $iLength = 0, $iOffset = 0
Do
$iLength += $iOffset
$tFDI = DllStructCreate('ulong;ulong;int64;int64;int64;int64;int64;int64;ulong;ulong;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pBuffer + $iLength + 60), 1) / 2) & ']', $pBuffer + $iLength)
$sTarget = DllStructGetData($tFDI, 11)
$iAttrib = DllStructGetData($tFDI, 9)
$iOffset = DllStructGetData($tFDI, 1)
Switch $sTarget
Case '.', '..'
ContinueLoop
Case Else
Switch $iFlag
Case 1, 2
If BitAND($iAttrib, 0x00000010) Then
If $iFlag = 1 Then
ContinueLoop
EndIf
Else
If $iFlag = 2 Then
ContinueLoop
EndIf
EndIf
EndSwitch
If $sTemplate Then
$aCall = DllCall('shlwapi.dll', 'int', 'PathMatchSpecW', 'wstr', $sTarget, 'wstr', $sTemplate)
If @error Or ($aCall[0] And $bExclude) Or (Not $aCall[0] And Not $bExclude) Then
ContinueLoop
EndIf
EndIf
EndSwitch
__Inc($aData, 500)
$aData[$aData[0][0]][0] = $sTarget
$aData[$aData[0][0]][1] = DllStructGetData($tFDI, 3)
$aData[$aData[0][0]][2] = DllStructGetData($tFDI, 4)
$aData[$aData[0][0]][3] = DllStructGetData($tFDI, 5)
$aData[$aData[0][0]][4] = DllStructGetData($tFDI, 7)
$aData[$aData[0][0]][5] = DllStructGetData($tFDI, 8)
$aData[$aData[0][0]][6] = $iAttrib
Until Not $iOffset
__HeapFree($pBuffer)
__Inc($aData, -1)
Return $aData
EndFunc
Func _WinAPI_EnumFileStreams($sFilePath)
Local $tData = DllStructCreate('byte[32768]')
Local $pData = DllStructGetPtr($tData)
Local $aData[101][2] = [[0]]
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $iError = 0
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'ptr', $pData,  'ulong', 32768, 'uint', 22)
If @error Then $iError = @error
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iError Then Return SetError($iError, 0, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $tFSI, $iLength = 0, $iOffset = 0
Do
$iLength += $iOffset
$tFSI = DllStructCreate('ulong;ulong;int64;int64;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pData + $iLength + 4), 1) / 2) & ']', $pData + $iLength)
__Inc($aData)
$aData[$aData[0][0]][0] = DllStructGetData($tFSI, 5)
$aData[$aData[0][0]][1] = DllStructGetData($tFSI, 3)
$iOffset = DllStructGetData($tFSI, 1)
Until Not $iOffset
__Inc($aData, -1)
Return $aData
EndFunc
Func _WinAPI_EnumHardLinks($sFilePath)
Local $tData = DllStructCreate('byte[32768]')
Local $pData = DllStructGetPtr($tData)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $iError = 0
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'ptr', $pData,  'ulong', 32768, 'uint', 46)
If @error Or $aCall[0] Then
$iError = @error + 10
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $aCall Then Return SetError($iError, 0, 0)
If $aCall[0] Then Return SetError(10, $iError, 0)
EndIf
Local $iCount = DllStructGetData(DllStructCreate('ulong;ulong', $pData), 2)
Local $aData[$iCount + 1] = [$iCount]
Local $tFLEI, $hPath, $sPath, $iLength = 8
For $i = 1 To $iCount
$tFLEI = DllStructCreate('ulong;int64;ulong;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pData + $iLength + 16), 1)) & ']', $pData + $iLength)
$iError = 0
Do
$hPath = _WinAPI_OpenFileById($hFile, DllStructGetData($tFLEI, 2), 0x00100080, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then
$iError = @error + 100
ExitLoop
EndIf
$sPath = _WinAPI_GetFinalPathNameByHandleEx($hPath)
If @error Then
$iError = @error + 200
ExitLoop
EndIf
Until 1
If $hPath Then
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hPath)
EndIf
If $iError Then ExitLoop
$aData[$i] = _WinAPI_PathAppend($sPath, DllStructGetData($tFLEI, 4))
$iLength += DllStructGetData($tFLEI, 1)
Next
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iError Then Return SetError($iError, 0, 0)
Return $aData
EndFunc
Func _WinAPI_FileEncryptionStatus($sFilePath)
Local $aCall = DllCall('advapi32.dll', 'bool', 'FileEncryptionStatusW', 'wstr', $sFilePath, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, -1)
Return $aCall[2]
EndFunc
Func _WinAPI_FileExists($sFilePath)
If Not FileExists($sFilePath) Then Return 0
If _WinAPI_PathIsDirectory($sFilePath) Then Return SetExtended(1, 0)
Return 1
EndFunc
Func _WinAPI_FileInUse($sFilePath)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, $GENERIC_READ)
If @error Then
If @extended = 32 Then Return 1
Return SetError(@error, @extended, 0)
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
Return 0
EndFunc
Func _WinAPI_FindClose($hSearch)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindClose', 'handle', $hSearch)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FindCloseChangeNotification($hChange)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindCloseChangeNotification', 'handle', $hChange)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FindFirstChangeNotification($sDirectory, $iFlags, $bSubtree = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindFirstChangeNotificationW', 'wstr', $sDirectory, 'bool', $bSubtree,  'dword', $iFlags)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindFirstFile($sFilePath, $tData)
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindFirstFileW', 'wstr', $sFilePath, 'struct*', $tData)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindFirstFileName($sFilePath, ByRef $sLink)
$sLink = ''
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindFirstFileNameW', 'wstr', $sFilePath, 'dword', 0, 'dword*', 4096, 'wstr', '')
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0)
$sLink = $aCall[4]
Return $aCall[0]
EndFunc
Func _WinAPI_FindFirstStream($sFilePath, $tData)
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindFirstStreamW', 'wstr', $sFilePath, 'uint', 0, 'struct*', $tData, 'dword', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindNextChangeNotification($hChange)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindNextChangeNotification', 'handle', $hChange)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindNextFile($hSearch, $tData)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindNextFileW', 'handle', $hSearch, 'struct*', $tData)
If @error Then Return SetError(@error, @extended, False)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindNextFileName($hSearch, ByRef $sLink)
$sLink = ''
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindNextFileNameW', 'handle', $hSearch, 'dword*', 4096, 'wstr', '')
If @error Then Return SetError(@error, @extended, False)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
$sLink = $aCall[3]
Return $aCall[0]
EndFunc
Func _WinAPI_FindNextStream($hSearch, $tData)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FindNextStreamW', 'handle', $hSearch, 'struct*', $tData)
If @error Then Return SetError(@error, @extended, False)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FlushFileBuffers($hFile)
Local $aCall = DllCall("kernel32.dll", "bool", "FlushFileBuffers", "handle", $hFile)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FlushViewOfFile($pAddress, $iBytes = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FlushViewOfFile', 'struct*', $pAddress, 'dword', $iBytes)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBinaryType($sFilePath)
Local $aCall = DllCall('kernel32.dll', 'int', 'GetBinaryTypeW', 'wstr', $sFilePath, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then $aCall[2] = 0
Return SetExtended($aCall[2], $aCall[0])
EndFunc
Func _WinAPI_GetCDType($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tagSCSI_PASS_THROUGH = 'struct;ushort Length;byte ScsiStatus;byte PathId;byte TargetId;byte Lun;byte CdbLength;byte SenseInfoLength;byte DataIn;ulong DataTransferLength;ulong TimeOutValue;ulong_ptr DataBufferOffset;ulong SenseInfoOffset;byte Cdb[16];endstruct'
Local $tSPT = DllStructCreate($tagSCSI_PASS_THROUGH & ';byte Hdr[8]')
Local $tCDB = DllStructCreate('byte;byte;byte[2];byte[3];byte[2];byte;byte[2];byte[4]', DllStructGetPtr($tSPT, 'Cdb'))
Local $tHDR = DllStructCreate('byte[4];byte;byte;byte[2]', DllStructGetPtr($tSPT, 'Hdr'))
Local $iSize = DllStructGetPtr($tSPT, 'Hdr') - DllStructGetPtr($tSPT)
DllStructSetData($tSPT, 'Length', $iSize)
DllStructSetData($tSPT, 'ScsiStatus', 0)
DllStructSetData($tSPT, 'PathId', 0)
DllStructSetData($tSPT, 'TargetId', 0)
DllStructSetData($tSPT, 'Lun', 0)
DllStructSetData($tSPT, 'CdbLength', 12)
DllStructSetData($tSPT, 'SenseInfoLength', 0)
DllStructSetData($tSPT, 'DataIn', 1)
DllStructSetData($tSPT, 'DataTransferLength', 8)
DllStructSetData($tSPT, 'TimeOutValue', 86400)
DllStructSetData($tSPT, 'DataBufferOffset', $iSize)
DllStructSetData($tSPT, 'SenseInfoOffset', 0)
DllStructSetData($tCDB, 1, 0x46)
DllStructSetData($tCDB, 2, 0)
DllStructSetData($tCDB, 3, 0, 1)
DllStructSetData($tCDB, 3, 0, 2)
DllStructSetData($tCDB, 5, 0, 1)
DllStructSetData($tCDB, 5, 8, 2)
DllStructSetData($tCDB, 6, 0)
DllStructSetData($tCDB, 7, 0, 1)
DllStructSetData($tCDB, 7, 0, 2)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0004D004, 'struct*', $tSPT,  'dword', $iSize, 'struct*', $tSPT, 'dword', DllStructGetSize($tSPT), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Return BitOR(BitShift(DllStructGetData($tHDR, 4, 1), -8), DllStructGetData($tHDR, 4, 2))
EndFunc
Func _WinAPI_GetCompressedFileSize($sFilePath)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetCompressedFileSizeW', 'wstr', $sFilePath, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = -1 Then
Local $iLastError = _WinAPI_GetLastError()
If $aCall[2] = 0 Then Return SetError(10, $iLastError, 0)
If $iLastError Then Return SetError(11, $iLastError, 0)
EndIf
Return __WinAPI_MakeQWord($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetCompression($sFilePath)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009003C, 'ptr', 0, 'dword', 0,  'ushort*', 0, 'dword', 2, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, -1)
Return $aCall[5]
EndFunc
Func _WinAPI_GetCurrentDirectory()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetCurrentDirectoryW', 'dword', 4096, 'wstr', '')
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetDiskFreeSpaceEx($sDrive)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetDiskFreeSpaceEx', 'str', $sDrive, 'int64*', 0, 'int64*', 0, 'int64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = $aCall[$i + 2]
Next
Return $aRet
EndFunc
Func _WinAPI_GetDriveBusType($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, -1)
Local $tagSTORAGE_PROPERTY_QUERY = 'ulong PropertyId;ulong QueryType;byte AdditionalParameters[1]'
Local $tSPQ = DllStructCreate($tagSTORAGE_PROPERTY_QUERY)
Local $tSDD = DllStructCreate('ulong Version;ulong Size;byte DeviceType;byte DeviceTypeModifier;byte RemovableMedia;byte CommandQueueing;ulong VendorIdOffset;ulong ProductIdOffset;ulong ProductRevisionOffset;ulong SerialNumberOffset;ulong BusType;ulong RawPropertiesLength;byte RawDeviceProperties[1]')
DllStructSetData($tSPQ, 'PropertyId', 0)
DllStructSetData($tSPQ, 'QueryType', 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D1400, 'struct*', $tSPQ,  'dword', DllStructGetSize($tSPQ), 'struct*', $tSDD, 'dword', DllStructGetSize($tSDD),  'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, -1)
Return DllStructGetData($tSDD, 'BusType')
EndFunc
Func _WinAPI_GetDriveGeometryEx($iDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\PhysicalDrive' & $iDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tDGEX = DllStructCreate('uint64;dword;dword;dword;dword;uint64')
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000700A0, 'ptr', 0,  'dword', 0, 'struct*', $tDGEX, 'dword', DllStructGetSize($tDGEX), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Local $aRet[6]
For $i = 0 To 5
$aRet[$i] = DllStructGetData($tDGEX, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetDriveNumber($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tSDN = DllStructCreate('dword;dword;dword')
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D1080, 'ptr', 0,  'dword', 0, 'struct*', $tSDN, 'dword', DllStructGetSize($tSDN), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = DllStructGetData($tSDN, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetDriveType($sDrive = '')
If Not StringStripWS($sDrive, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDrive = Null
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetDriveType', 'str', $sDrive)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetFileAttributes($sFilePath)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetFileAttributesW', 'wstr', $sFilePath)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetFileID($hFile)
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'int64*', 0,  'ulong', 8, 'uint', 6)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_GetFileInformationByHandle($hFile)
Local $tBHFI = DllStructCreate('dword;dword[2];dword[2];dword[2];dword;dword;dword;dword;dword;dword')
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetFileInformationByHandle', 'handle', $hFile, 'struct*', $tBHFI)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[8]
$aRet[0] = DllStructGetData($tBHFI, 1)
For $i = 1 To 3
If DllStructGetData($tBHFI, $i + 1) Then
$aRet[$i] = DllStructCreate($tagFILETIME)
_WinAPI_MoveMemory($aRet[$i], DllStructGetPtr($tBHFI, $i + 1), 8)
Else
$aRet[$i] = 0
EndIf
Next
$aRet[4] = DllStructGetData($tBHFI, 5)
$aRet[5] = __WinAPI_MakeQWord(DllStructGetData($tBHFI, 7), DllStructGetData($tBHFI, 6))
$aRet[6] = DllStructGetData($tBHFI, 8)
$aRet[7] = __WinAPI_MakeQWord(DllStructGetData($tBHFI, 9), DllStructGetData($tBHFI, 10))
Return $aRet
EndFunc
Func _WinAPI_GetFileInformationByHandleEx($hFile)
Local $tFI = DllStructCreate($tagFILEINFO)
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'struct*', $tFI,  'ulong', DllStructGetSize($tFI), 'uint', 4)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tFI
EndFunc
Func _WinAPI_GetFilePointerEx($hFile)
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'int64*', 0,  'ulong', 8, 'uint', 14)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[3]
EndFunc
Func _WinAPI_GetFileSizeEx($hFile)
Local $aCall = DllCall("kernel32.dll", "bool", "GetFileSizeEx", "handle", $hFile, "int64*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, -1)
Return $aCall[2]
EndFunc
Func _WinAPI_GetFileSizeOnDisk($sFilePath)
Local $iSize = FileGetSize($sFilePath)
If @error Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetDiskFreeSpaceW',  'wstr', _WinAPI_PathStripToRoot(_WinAPI_GetFullPathName($sFilePath)), 'dword*', 0, 'dword*', 0,  'dword*', 0, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return Ceiling($iSize / ($aCall[2] * $aCall[3])) * ($aCall[2] * $aCall[3])
EndFunc
Func _WinAPI_GetFileTitle($sFilePath)
Local $aCall = DllCall('comdlg32.dll', 'short', 'GetFileTitleW', 'wstr', $sFilePath, 'wstr', '', 'word', 4096)
If @error Or $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetFileType($hFile)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetFileType', 'handle', $hFile)
If @error Then Return SetError(@error, @extended, -1)
Local $iLastError = _WinAPI_GetLastError()
If Not $aCall[0] And $iLastError Then Return SetError(10, $iLastError, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetFinalPathNameByHandle($hFile)
Local $tFNI = DllStructCreate('ulong;wchar[4096]')
Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'struct*', $tFNI,  'ulong', DllStructGetSize($tFNI), 'uint', 9)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $iLength = DllStructGetData($tFNI, 1)
If Not $iLength Then Return SetError(12, 0, '')
Return DllStructGetData(DllStructCreate('wchar[' & ($iLength / 2) & ']', DllStructGetPtr($tFNI, 2)), 1)
EndFunc
Func _WinAPI_GetFinalPathNameByHandleEx($hFile, $iFlags = 0)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetFinalPathNameByHandleW', 'handle', $hFile, 'wstr', '', 'dword', 4096,  'dword', $iFlags)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetFullPathName($sFilePath)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetFullPathNameW', 'wstr', $sFilePath, 'dword', 4096, 'wstr', '', 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[3]
EndFunc
Func _WinAPI_GetLogicalDrives()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetLogicalDrives')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetObjectID($sFilePath)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tFOID = DllStructCreate('byte[16];byte[48]')
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009009C, 'ptr', 0,  'dword', 0, 'struct*', $tFOID, 'dword', DllStructGetSize($tFOID), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Local $tGUID = DllStructCreate($tagGUID)
_WinAPI_MoveMemory($tGUID, $tFOID, 16)
Return $tGUID
EndFunc
Func _WinAPI_GetOverlappedResult($hFile, $tOverlapped, ByRef $iBytes, $bWait = False)
Local $aCall = DllCall("kernel32.dll", "bool", "GetOverlappedResult", "handle", $hFile, "struct*", $tOverlapped, "dword*", 0,  "bool", $bWait)
If @error Then Return SetError(@error, @extended, False)
$iBytes = $aCall[3]
Return $aCall[0]
EndFunc
Func _WinAPI_GetPEType($sFilePath)
Local $tData = DllStructCreate('ushort[2]')
Local $tUInt = DllStructCreate('uint', DllStructGetPtr($tData))
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $iError = 0, $iVal
Do
Local $aCall = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'struct*', $tData, 'dword', 2, 'dword*', 0, 'ptr', 0)
If @error Or (Not $aCall[0]) Or ($aCall[4] <> 2) Then
$iError = @error + 30
ExitLoop
EndIf
$iVal = DllStructGetData($tData, 1, 1)
If $iVal <> 0x00005A4D Then
$iError = 3
ExitLoop
EndIf
If Not _WinAPI_SetFilePointerEx($hFile, 0x0000003C) Then
$iError = @error + 40
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'struct*', $tData, 'dword', 4, 'dword*', 0, 'ptr', 0)
If @error Or (Not $aCall[0]) Or ($aCall[4] <> 4) Then
$iError = @error + 50
ExitLoop
EndIf
If Not _WinAPI_SetFilePointerEx($hFile, DllStructGetData($tUInt, 1)) Then
$iError = @error + 60
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'struct*', $tData, 'dword', 4, 'dword*', 0, 'ptr', 0)
If @error Or (Not $aCall[0]) Or ($aCall[4] <> 4) Then
$iError = @error + 70
ExitLoop
EndIf
$iVal = DllStructGetData($tUInt, 1)
If $iVal <> 0x00004550 Then
$iError = 4
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'struct*', $tData, 'dword', 2, 'dword*', 0, 'ptr', 0)
If @error Or (Not $aCall[0]) Or ($aCall[4] <> 2) Then
$iError = @error + 80
ExitLoop
EndIf
$iVal = DllStructGetData($tData, 1, 1)
Until 1
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iError Then Return SetError($iError, 0, 0)
Return $iVal
EndFunc
Func _WinAPI_GetProfilesDirectory()
Local $aCall = DllCall('userenv.dll', 'bool', 'GetProfilesDirectoryW', 'wstr', '', 'dword*', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetTempFileName($sFilePath, $sPrefix = '')
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetTempFileNameW', 'wstr', $sFilePath, 'wstr', $sPrefix, 'uint', 0, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[4]
EndFunc
Func _WinAPI_GetVolumeInformation($sRoot = '')
If Not StringStripWS($sRoot, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sRoot = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVolumeInformationW', 'wstr', $sRoot, 'wstr', '', 'dword', 4096,  'dword*', 0, 'dword*', 0, 'dword*', 0, 'wstr', '', 'dword', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
For $i = 0 To 4
Switch $i
Case 0
$aRet[$i] = $aCall[2]
Case Else
$aRet[$i] = $aCall[$i + 3]
EndSwitch
Next
Return $aRet
EndFunc
Func _WinAPI_GetVolumeInformationByHandle($hFile)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVolumeInformationByHandleW', 'handle', $hFile, 'wstr', '', 'dword', 4096,  'dword*', 0, 'dword*', 0, 'dword*', 0, 'wstr', '', 'dword', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
For $i = 0 To 4
Switch $i
Case 0
$aRet[$i] = $aCall[2]
Case Else
$aRet[$i] = $aCall[$i + 3]
EndSwitch
Next
Return $aRet
EndFunc
Func _WinAPI_GetVolumeNameForVolumeMountPoint($sMountedPath)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVolumeNameForVolumeMountPointW', 'wstr', $sMountedPath, 'wstr', '', 'dword', 80)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_IOCTL($iDeviceType, $iFunction, $iMethod, $iAccess)
Return BitOR(BitShift($iDeviceType, -16), BitShift($iAccess, -14), BitShift($iFunction, -2), $iMethod)
EndFunc
Func _WinAPI_IsDoorOpen($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, False)
Local $tSPT = DllStructCreate('ushort Length;byte ScsiStatus;byte PathId;byte TargetId;byte Lun;byte CdbLength;byte SenseInfoLength;byte DataIn;byte Alignment[3];ulong DataTransferLength;ulong TimeOutValue;ulong_ptr DataBufferOffset;ulong SenseInfoOffset;byte Cdb[16]' & (@AutoItX64 ? ';byte[4]' : '') & ';byte Hdr[8]')
Local $tCDB = DllStructCreate('byte;byte;byte[6];byte[2];byte;byte;byte[4]', DllStructGetPtr($tSPT, 'Cdb'))
Local $tHDR = DllStructCreate('byte;byte;byte[3];byte;byte[2]', DllStructGetPtr($tSPT, 'Hdr'))
Local $iSize = DllStructGetPtr($tSPT, 'Hdr') - DllStructGetPtr($tSPT)
DllStructSetData($tSPT, 'Length', $iSize)
DllStructSetData($tSPT, 'ScsiStatus', 0)
DllStructSetData($tSPT, 'PathId', 0)
DllStructSetData($tSPT, 'TargetId', 0)
DllStructSetData($tSPT, 'Lun', 0)
DllStructSetData($tSPT, 'CdbLength', 12)
DllStructSetData($tSPT, 'SenseInfoLength', 0)
DllStructSetData($tSPT, 'DataIn', 1)
DllStructSetData($tSPT, 'DataTransferLength', 8)
DllStructSetData($tSPT, 'TimeOutValue', 86400)
DllStructSetData($tSPT, 'DataBufferOffset', $iSize)
DllStructSetData($tSPT, 'SenseInfoOffset', 0)
DllStructSetData($tCDB, 1, 0xBD)
DllStructSetData($tCDB, 2, 0)
DllStructSetData($tCDB, 4, 0, 1)
DllStructSetData($tCDB, 4, 8, 2)
DllStructSetData($tCDB, 5, 0)
DllStructSetData($tCDB, 6, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0004D004, 'struct*', $tSPT,  'dword', $iSize, 'struct*', $tSPT, 'dword', DllStructGetSize($tSPT), 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, False)
Return (BitAND(DllStructGetData($tHDR, 2), 0x10) = 0x10)
EndFunc
Func _WinAPI_IsPathShared($sFilePath)
If Not __DLL('ntshrui.dll') Then Return SetError(103, 0, 0)
Local $aCall = DllCall('ntshrui.dll', 'bool', 'IsPathSharedW', 'wstr', _WinAPI_PathRemoveBackslash($sFilePath), 'int', 1)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWritable($sDrive)
DriveGetFileSystem($sDrive)
If @error Then Return SetError(40 + @error, _WinAPI_GetLastError(), 0)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x00070024, 'ptr', 0, 'dword', 0,  'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
Local Const $ERROR_WRITE_PROTECT = 19
If __CheckErrorCloseHandle($aCall, $hFile, 1) <> 10 And @extended = $ERROR_WRITE_PROTECT Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadMedia($sDrive)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D480C, 'ptr', 0, 'dword', 0,  'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LockDevice($sDrive, $bLock)
Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
If @error Then Return SetError(@error + 20, @extended, False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D4804, 'boolean*', $bLock,  'dword', 1, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LockFile($hFile, $iOffset, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'LockFile', 'handle', $hFile,  'dword', _WinAPI_LoDWord($iOffset), 'dword', _WinAPI_HiDWord($iOffset),  'dword', _WinAPI_LoDWord($iLength), 'dword', _WinAPI_HiDWord($iLength))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MapViewOfFile($hMapping, $iOffset = 0, $iBytes = 0, $iAccess = 0x0006)
Local $aCall = DllCall('kernel32.dll', 'ptr', 'MapViewOfFile', 'handle', $hMapping, 'dword', $iAccess,  'dword', _WinAPI_HiDWord($iOffset), 'dword', _WinAPI_LoDWord($iOffset), 'ulong_ptr', $iBytes)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveFileEx($sExistingFile, $sNewFile, $iFlags = 0, $pProgressProc = 0, $pData = 0)
If Not StringStripWS($sNewFile, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sNewFile = Null
If BitAND($iFlags, $MOVE_FILE_DELAY_UNTIL_REBOOT) Then
If $sNewFile = 0 Then $sNewFile = Null
EndIf
Local $aCall = DllCall('kernel32.dll', 'bool', 'MoveFileWithProgressW', 'wstr', $sExistingFile, 'wstr', $sNewFile,  'ptr', $pProgressProc, 'ptr', $pData, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenFileById($hFile, $vID, $iAccess = 0, $iShare = 0, $iFlags = 0)
Local $tFIDD = DllStructCreate('dword;uint;int64;int64')
Local $hObj, $aCall, $iType, $iError = 0
Select
Case IsString($vID)
$aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $vID, 'ptr', DllStructGetPtr($tFIDD, 3))
If @error Or $aCall[0] Then
Return SetError(@error + 30, 0, 0)
EndIf
$iType = 1
Case IsDllStruct($vID)
If Not _WinAPI_MoveMemory(DllStructGetPtr($tFIDD, 3), DllStructGetPtr($vID), 16) Then
Return SetError(@error + 40, 0, 0)
EndIf
$iType = 1
Case Else
DllStructSetData($tFIDD, 3, $vID)
$iType = 0
EndSelect
DllStructSetData($tFIDD, 1, DllStructGetSize($tFIDD))
DllStructSetData($tFIDD, 2, $iType)
If IsString($hFile) Then
$hObj = _WinAPI_CreateFileEx($hFile, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Else
$hObj = $hFile
EndIf
$aCall = DllCall('kernel32.dll', 'handle', 'OpenFileById', 'handle', $hObj, 'struct*', $tFIDD, 'dword', $iAccess,  'dword', $iShare, 'ptr', 0, 'dword', $iFlags)
If @error Or ($aCall[0] = Ptr(-1)) Then $iError = @error + 10
If IsString($hFile) Then
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hObj)
EndIf
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenFileMapping($sName, $iAccess = 0x0006, $bInherit = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'OpenFileMappingW', 'dword', $iAccess, 'bool', $bInherit, 'wstr', $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsDirectoryEmpty($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryEmptyW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_QueryDosDevice($sDevice)
If Not StringStripWS($sDevice, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDevice = Null
Local $tData = DllStructCreate('wchar[16384]')
Local $aCall = DllCall('kernel32.dll', 'dword', 'QueryDosDeviceW', 'wstr', $sDevice, 'struct*', $tData, 'dword', 16384)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Local $aRet = _WinAPI_StructToArray($tData)
If IsString($sDevice) Then
$aRet = $aRet[1]
EndIf
Return $aRet
EndFunc
Func _WinAPI_ReadDirectoryChanges($hDirectory, $iFilter, $pBuffer, $iLength, $bSubtree = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'ReadDirectoryChangesW', 'handle', $hDirectory, 'struct*', $pBuffer,  'dword', $iLength - Mod($iLength, 4), 'bool', $bSubtree, 'dword', $iFilter, 'dword*', 0, 'ptr', 0, 'ptr', 0)
If @error Or Not $aCall[0] Or (Not $aCall[6]) Then Return SetError(@error + 10, @extended, 0)
$pBuffer = $aCall[2]
Local $aData[101][2] = [[0]]
Local $tFNI, $iBuffer = 0, $iOffset = 0
Do
$iBuffer += $iOffset
$tFNI = DllStructCreate('dword NextEntryOffset;dword Action;dword FileNameLength;wchar FileName[' & (DllStructGetData(DllStructCreate('dword FileNameLength', $pBuffer + $iBuffer + 8), 1) / 2) & ']', $pBuffer + $iBuffer)
__Inc($aData)
$aData[$aData[0][0]][0] = DllStructGetData($tFNI, "FileName")
$aData[$aData[0][0]][1] = DllStructGetData($tFNI, "Action")
$iOffset = DllStructGetData($tFNI, "NextEntryOffset")
Until Not $iOffset
__Inc($aData, -1)
Return $aData
EndFunc
Func _WinAPI_RemoveDirectory($sDirPath)
Local $aCall = DllCall('kernel32.dll', 'bool', 'RemoveDirectoryW', 'wstr', $sDirPath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ReOpenFile($hFile, $iAccess, $iShare, $iFlags = 0)
Local $aCall = DllCall('kernel32.dll', 'handle', 'ReOpenFile', 'handle', $hFile, 'dword', $iAccess, 'dword', $iShare, 'dword', $iFlags)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ReplaceFile($sReplacedFile, $sReplacementFile, $sBackupFile = '', $iFlags = 0)
If Not StringStripWS($sBackupFile, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sBackupFile = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'ReplaceFileW', 'wstr', $sReplacedFile, 'wstr', $sReplacementFile,  'wstr', $sBackupFile, 'dword', $iFlags, 'ptr', 0, 'ptr', 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SearchPath($sFilePath, $sSearchPath = '')
If Not StringStripWS($sSearchPath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sSearchPath = Null
Local $aCall = DllCall('kernel32.dll', 'dword', 'SearchPathW', 'wstr', $sSearchPath, 'wstr', $sFilePath, 'ptr', 0, 'dword', 4096, 'wstr', '', 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[5]
EndFunc
Func _WinAPI_SetCompression($sFilePath, $iCompression)
Local $hFile = _WinAPI_CreateFileEx($sFilePath, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE, $FILE_FLAG_BACKUP_SEMANTICS)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009C040,  'ushort*', $iCompression, 'dword', 2, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
If __CheckErrorCloseHandle($aCall, $hFile) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_SetCurrentDirectory($sDir)
Local $aCall = DllCall('kernel32.dll', 'int', 'SetCurrentDirectoryW', 'wstr', $sDir)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetEndOfFile($hFile)
Local $aCall = DllCall("kernel32.dll", "bool", "SetEndOfFile", "handle", $hFile)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFileAttributes($sFilePath, $iAttributes)
Local $aCall = DllCall('kernel32.dll', 'int', 'SetFileAttributesW', 'wstr', $sFilePath, 'dword', $iAttributes)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFileInformationByHandleEx($hFile, $tFILEINFO)
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwSetInformationFile', 'handle', $hFile, 'struct*', $tFILEINFO,  'struct*', $tFILEINFO, 'ulong', DllStructGetSize($tFILEINFO), 'uint', 4)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_SetFilePointer($hFile, $iPos, $iMethod = 0)
Local $aCall = DllCall("kernel32.dll", "INT", "SetFilePointer", "handle", $hFile, "long", $iPos, "ptr", 0, "long", $iMethod)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFilePointerEx($hFile, $iPos, $iMethod = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetFilePointerEx', 'handle', $hFile, 'int64', $iPos, 'int64*', 0, 'dword', $iMethod)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFileShortName($hFile, $sShortName)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetFileShortNameW', 'handle', $hFile, 'wstr', $sShortName)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFileValidData($hFile, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetFileValidData', 'handle', $hFile, 'int64', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetSearchPathMode($iFlags)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetSearchPathMode', 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetVolumeMountPoint($sFilePath, $sGUID)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetVolumeMountPointW', 'wstr', $sFilePath, 'wstr', $sGUID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SfcIsFileProtected($sFilePath)
If Not __DLL('sfc.dll') Then Return SetError(103, 0, False)
Local $aCall = DllCall('sfc.dll', 'bool', 'SfcIsFileProtected', 'handle', 0, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnlockFile($hFile, $iOffset, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'UnlockFile', 'handle', $hFile,  'dword', _WinAPI_LoDWord($iOffset), 'dword', _WinAPI_HiDWord($iOffset),  'dword', _WinAPI_LoDWord($iLength), 'dword', _WinAPI_HiDWord($iLength))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnmapViewOfFile($pAddress)
Local $aCall = DllCall('kernel32.dll', 'bool', 'UnmapViewOfFile', 'ptr', $pAddress)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Wow64EnableWow64FsRedirection($bEnable)
Local $aCall = DllCall('kernel32.dll', 'boolean', 'Wow64EnableWow64FsRedirection', 'boolean', $bEnable)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __WinAPI_MakeQWord($iLoDWORD, $iHiDWORD)
Local $tInt64 = DllStructCreate("uint64")
Local $tDwords = DllStructCreate("dword;dword", DllStructGetPtr($tInt64))
DllStructSetData($tDwords, 1, $iLoDWORD)
DllStructSetData($tDwords, 2, $iHiDWORD)
Return DllStructGetData($tInt64, 1)
EndFunc
#EndRegion Internal Functions
Global Const $FR_PRIVATE = 0x10
Global Const $FR_NOT_ENUM = 0x20
Global Const $COMPRESSION_BITMAP_PNG = 0
Global Const $COMPRESSION_BITMAP_JPEG = 1
Global Const $BS_DIBPATTERN = 5
Global Const $BS_DIBPATTERN8X8 = 8
Global Const $BS_DIBPATTERNPT = 6
Global Const $BS_HATCHED = 2
Global Const $BS_HOLLOW = 1
Global Const $BS_NULL = 1
Global Const $BS_PATTERN = 3
Global Const $BS_PATTERN8X8 = 7
Global Const $BS_SOLID = 0
Global Const $HS_BDIAGONAL = 3
Global Const $HS_CROSS = 4
Global Const $HS_DIAGCROSS = 5
Global Const $HS_FDIAGONAL = 2
Global Const $HS_HORIZONTAL = 0
Global Const $HS_VERTICAL = 1
Global Const $DIB_PAL_COLORS = 1
Global Const $DIB_RGB_COLORS = 0
Global Const $CA_NEGATIVE = 0x01
Global Const $CA_LOG_FILTER = 0x02
Global Const $ILLUMINANT_DEVICE_DEFAULT = 0
Global Const $ILLUMINANT_A = 1
Global Const $ILLUMINANT_B = 2
Global Const $ILLUMINANT_C = 3
Global Const $ILLUMINANT_D50 = 4
Global Const $ILLUMINANT_D55 = 5
Global Const $ILLUMINANT_D65 = 6
Global Const $ILLUMINANT_D75 = 7
Global Const $ILLUMINANT_F2 = 8
Global Const $ILLUMINANT_TUNGSTEN = $ILLUMINANT_A
Global Const $ILLUMINANT_DAYLIGHT = $ILLUMINANT_C
Global Const $ILLUMINANT_FLUORESCENT = $ILLUMINANT_F2
Global Const $ILLUMINANT_NTSC = $ILLUMINANT_C
Global Const $BI_RGB = 0
Global Const $BI_RLE8 = 1
Global Const $BI_RLE4 = 2
Global Const $BI_BITFIELDS = 3
Global Const $BI_JPEG = 4
Global Const $BI_PNG = 5
Global Const $ALTERNATE = 1
Global Const $WINDING = 2
Global Const $DWMWA_NCRENDERING_ENABLED = 1
Global Const $DWMWA_NCRENDERING_POLICY = 2
Global Const $DWMWA_TRANSITIONS_FORCEDISABLED = 3
Global Const $DWMWA_ALLOW_NCPAINT = 4
Global Const $DWMWA_CAPTION_BUTTON_BOUNDS = 5
Global Const $DWMWA_NONCLIENT_RTL_LAYOUT = 6
Global Const $DWMWA_FORCE_ICONIC_REPRESENTATION = 7
Global Const $DWMWA_FLIP3D_POLICY = 8
Global Const $DWMWA_EXTENDED_FRAME_BOUNDS = 9
Global Const $DWMWA_HAS_ICONIC_BITMAP = 10
Global Const $DWMWA_DISALLOW_PEEK = 11
Global Const $DWMWA_EXCLUDED_FROM_PEEK = 12
Global Const $DWMNCRP_USEWINDOWSTYLE = 0
Global Const $DWMNCRP_DISABLED = 1
Global Const $DWMNCRP_ENABLED = 2
Global Const $DWMFLIP3D_DEFAULT = 0
Global Const $DWMFLIP3D_EXCLUDEBELOW = 1
Global Const $DWMFLIP3D_EXCLUDEABOVE = 2
Global Const $DM_BITSPERPEL = 0x00040000
Global Const $DM_COLLATE = 0x0008000
Global Const $DM_COLOR = 0x00000800
Global Const $DM_COPIES = 0x00000100
Global Const $DM_DEFAULTSOURCE = 0x00000200
Global Const $DM_DISPLAYFIXEDOUTPUT = 0x20000000
Global Const $DM_DISPLAYFLAGS = 0x00200000
Global Const $DM_DISPLAYFREQUENCY = 0x00400000
Global Const $DM_DISPLAYORIENTATION = 0x00000080
Global Const $DM_DITHERTYPE = 0x04000000
Global Const $DM_DUPLEX = 0x0001000
Global Const $DM_FORMNAME = 0x00010000
Global Const $DM_ICMINTENT = 0x01000000
Global Const $DM_ICMMETHOD = 0x00800000
Global Const $DM_LOGPIXELS = 0x00020000
Global Const $DM_MEDIATYPE = 0x02000000
Global Const $DM_NUP = 0x00000040
Global Const $DM_ORIENTATION = 0x00000001
Global Const $DM_PANNINGHEIGHT = 0x10000000
Global Const $DM_PANNINGWIDTH = 0x08000000
Global Const $DM_PAPERLENGTH = 0x00000004
Global Const $DM_PAPERSIZE = 0x00000002
Global Const $DM_PAPERWIDTH = 0x00000008
Global Const $DM_PELSHEIGHT = 0x00100000
Global Const $DM_PELSWIDTH = 0x00080000
Global Const $DM_POSITION = 0x00000020
Global Const $DM_PRINTQUALITY = 0x00000400
Global Const $DM_SCALE = 0x00000010
Global Const $DM_TTOPTION = 0x0004000
Global Const $DM_YRESOLUTION = 0x0002000
Global Const $DMPAPER_LETTER = 1
Global Const $DMPAPER_LETTERSMALL = 2
Global Const $DMPAPER_TABLOID = 3
Global Const $DMPAPER_LEDGER = 4
Global Const $DMPAPER_LEGAL = 5
Global Const $DMPAPER_STATEMENT = 6
Global Const $DMPAPER_EXECUTIVE = 7
Global Const $DMPAPER_A3 = 8
Global Const $DMPAPER_A4 = 9
Global Const $DMPAPER_A4SMALL = 10
Global Const $DMPAPER_A5 = 11
Global Const $DMPAPER_B4 = 12
Global Const $DMPAPER_B5 = 13
Global Const $DMPAPER_FOLIO = 14
Global Const $DMPAPER_QUARTO = 15
Global Const $DMPAPER_10X14 = 16
Global Const $DMPAPER_11X17 = 17
Global Const $DMPAPER_NOTE = 18
Global Const $DMPAPER_ENV_9 = 19
Global Const $DMPAPER_ENV_10 = 20
Global Const $DMPAPER_ENV_11 = 21
Global Const $DMPAPER_ENV_12 = 22
Global Const $DMPAPER_ENV_14 = 23
Global Const $DMPAPER_CSHEET = 24
Global Const $DMPAPER_DSHEET = 25
Global Const $DMPAPER_ESHEET = 26
Global Const $DMPAPER_ENV_DL = 27
Global Const $DMPAPER_ENV_C5 = 28
Global Const $DMPAPER_ENV_C3 = 29
Global Const $DMPAPER_ENV_C4 = 30
Global Const $DMPAPER_ENV_C6 = 31
Global Const $DMPAPER_ENV_C65 = 32
Global Const $DMPAPER_ENV_B4 = 33
Global Const $DMPAPER_ENV_B5 = 34
Global Const $DMPAPER_ENV_B6 = 35
Global Const $DMPAPER_ENV_ITALY = 36
Global Const $DMPAPER_ENV_MONARCH = 37
Global Const $DMPAPER_ENV_PERSONAL = 38
Global Const $DMPAPER_FANFOLD_US = 39
Global Const $DMPAPER_FANFOLD_STD_GERMAN = 40
Global Const $DMPAPER_FANFOLD_LGL_GERMAN = 41
Global Const $DMPAPER_ISO_B4 = 42
Global Const $DMPAPER_JAPANESE_POSTCARD = 43
Global Const $DMPAPER_9X11 = 44
Global Const $DMPAPER_10X11 = 45
Global Const $DMPAPER_15X11 = 46
Global Const $DMPAPER_ENV_INVITE = 47
Global Const $DMPAPER_RESERVED_48 = 48
Global Const $DMPAPER_RESERVED_49 = 49
Global Const $DMPAPER_LETTER_EXTRA = 50
Global Const $DMPAPER_LEGAL_EXTRA = 51
Global Const $DMPAPER_TABLOID_EXTRA = 52
Global Const $DMPAPER_A4_EXTRA = 53
Global Const $DMPAPER_LETTER_TRANSVERSE = 54
Global Const $DMPAPER_A4_TRANSVERSE = 55
Global Const $DMPAPER_LETTER_EXTRA_TRANSVERSE = 56
Global Const $DMPAPER_A_PLUS = 57
Global Const $DMPAPER_B_PLUS = 58
Global Const $DMPAPER_LETTER_PLUS = 59
Global Const $DMPAPER_A4_PLUS = 60
Global Const $DMPAPER_A5_TRANSVERSE = 61
Global Const $DMPAPER_B5_TRANSVERSE = 62
Global Const $DMPAPER_A3_EXTRA = 63
Global Const $DMPAPER_A5_EXTRA = 64
Global Const $DMPAPER_B5_EXTRA = 65
Global Const $DMPAPER_A2 = 66
Global Const $DMPAPER_A3_TRANSVERSE = 67
Global Const $DMPAPER_A3_EXTRA_TRANSVERSE = 68
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD = 69
Global Const $DMPAPER_A6 = 70
Global Const $DMPAPER_JENV_KAKU2 = 71
Global Const $DMPAPER_JENV_KAKU3 = 72
Global Const $DMPAPER_JENV_CHOU3 = 73
Global Const $DMPAPER_JENV_CHOU4 = 74
Global Const $DMPAPER_LETTER_ROTATED = 75
Global Const $DMPAPER_A3_ROTATED = 76
Global Const $DMPAPER_A4_ROTATED = 77
Global Const $DMPAPER_A5_ROTATED = 78
Global Const $DMPAPER_B4_JIS_ROTATED = 79
Global Const $DMPAPER_B5_JIS_ROTATED = 80
Global Const $DMPAPER_JAPANESE_POSTCARD_ROTATED = 81
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED = 82
Global Const $DMPAPER_A6_ROTATED = 83
Global Const $DMPAPER_JENV_KAKU2_ROTATED = 84
Global Const $DMPAPER_JENV_KAKU3_ROTATED = 85
Global Const $DMPAPER_JENV_CHOU3_ROTATED = 86
Global Const $DMPAPER_JENV_CHOU4_ROTATED = 87
Global Const $DMPAPER_B6_JIS = 88
Global Const $DMPAPER_B6_JIS_ROTATED = 89
Global Const $DMPAPER_12X11 = 90
Global Const $DMPAPER_JENV_YOU4 = 91
Global Const $DMPAPER_JENV_YOU4_ROTATED = 92
Global Const $DMPAPER_P16K = 93
Global Const $DMPAPER_P32K = 94
Global Const $DMPAPER_P32KBIG = 95
Global Const $DMPAPER_PENV_1 = 96
Global Const $DMPAPER_PENV_2 = 97
Global Const $DMPAPER_PENV_3 = 98
Global Const $DMPAPER_PENV_4 = 99
Global Const $DMPAPER_PENV_5 = 100
Global Const $DMPAPER_PENV_6 = 101
Global Const $DMPAPER_PENV_7 = 102
Global Const $DMPAPER_PENV_8 = 103
Global Const $DMPAPER_PENV_9 = 104
Global Const $DMPAPER_PENV_10 = 105
Global Const $DMPAPER_P16K_ROTATED = 106
Global Const $DMPAPER_P32K_ROTATED = 107
Global Const $DMPAPER_P32KBIG_ROTATED = 108
Global Const $DMPAPER_PENV_1_ROTATED = 109
Global Const $DMPAPER_PENV_2_ROTATED = 110
Global Const $DMPAPER_PENV_3_ROTATED = 111
Global Const $DMPAPER_PENV_4_ROTATED = 112
Global Const $DMPAPER_PENV_5_ROTATED = 113
Global Const $DMPAPER_PENV_6_ROTATED = 114
Global Const $DMPAPER_PENV_7_ROTATED = 115
Global Const $DMPAPER_PENV_8_ROTATED = 116
Global Const $DMPAPER_PENV_9_ROTATED = 117
Global Const $DMPAPER_PENV_10_ROTATED = 118
Global Const $DMPAPER_USER = 256
Global Const $DMBIN_UPPER = 1
Global Const $DMBIN_LOWER = 2
Global Const $DMBIN_MIDDLE = 3
Global Const $DMBIN_MANUAL = 4
Global Const $DMBIN_ENVELOPE = 5
Global Const $DMBIN_ENVMANUAL = 6
Global Const $DMBIN_AUTO = 7
Global Const $DMBIN_TRACTOR = 8
Global Const $DMBIN_SMALLFMT = 9
Global Const $DMBIN_LARGEFMT = 10
Global Const $DMBIN_LARGECAPACITY = 11
Global Const $DMBIN_CASSETTE = 14
Global Const $DMBIN_FORMSOURCE = 15
Global Const $DMBIN_USER = 256
Global Const $DMRES_DRAFT = -1
Global Const $DMRES_LOW = -2
Global Const $DMRES_MEDIUM = -3
Global Const $DMRES_HIGH = -4
Global Const $DMDO_DEFAULT = 0
Global Const $DMDO_90 = 1
Global Const $DMDO_180 = 2
Global Const $DMDO_270 = 3
Global Const $DMDFO_DEFAULT = 0
Global Const $DMDFO_STRETCH = 1
Global Const $DMDFO_CENTER = 2
Global Const $DMCOLOR_MONOCHROME = 1
Global Const $DMCOLOR_COLOR = 2
Global Const $DMDUP_SIMPLEX = 1
Global Const $DMDUP_VERTICAL = 2
Global Const $DMDUP_HORIZONTAL = 3
Global Const $DMTT_BITMAP = 1
Global Const $DMTT_DOWNLOAD = 2
Global Const $DMTT_SUBDEV = 3
Global Const $DMTT_DOWNLOAD_OUTLINE = 4
Global Const $DMCOLLATE_FALSE = 0
Global Const $DMCOLLATE_TRUE = 1
Global Const $DM_GRAYSCALE = 1
Global Const $DM_INTERLACED = 2
Global Const $DMNUP_SYSTEM = 1
Global Const $DMNUP_ONEUP = 2
Global Const $DMICMMETHOD_NONE = 1
Global Const $DMICMMETHOD_SYSTEM = 2
Global Const $DMICMMETHOD_DRIVER = 3
Global Const $DMICMMETHOD_DEVICE = 4
Global Const $DMICMMETHOD_USER = 256
Global Const $DMICM_SATURATE = 1
Global Const $DMICM_CONTRAST = 2
Global Const $DMICM_COLORIMETRIC = 3
Global Const $DMICM_ABS_COLORIMETRIC = 4
Global Const $DMICM_USER = 256
Global Const $DMMEDIA_STANDARD = 1
Global Const $DMMEDIA_TRANSPARENCY = 2
Global Const $DMMEDIA_GLOSSY = 3
Global Const $DMMEDIA_USER = 256
Global Const $DMDITHER_NONE = 1
Global Const $DMDITHER_COARSE = 2
Global Const $DMDITHER_FINE = 3
Global Const $DMDITHER_LINEART = 4
Global Const $DMDITHER_ERRORDIFFUSION = 5
Global Const $DMDITHER_RESERVED6 = 6
Global Const $DMDITHER_RESERVED7 = 7
Global Const $DMDITHER_RESERVED8 = 8
Global Const $DMDITHER_RESERVED9 = 9
Global Const $DMDITHER_GRAYSCALE = 10
Global Const $DMDITHER_USER = 256
Global Const $ENUM_CURRENT_SETTINGS = -1
Global Const $ENUM_REGISTRY_SETTINGS = -2
Global Const $DEVICE_FONTTYPE = 0x2
Global Const $RASTER_FONTTYPE = 0x1
Global Const $TRUETYPE_FONTTYPE = 0x4
Global Const $NTM_BOLD = 0x00000020
Global Const $NTM_DSIG = 0x00200000
Global Const $NTM_ITALIC = 0x00000001
Global Const $NTM_MULTIPLEMASTER = 0x00080000
Global Const $NTM_NONNEGATIVE_AC = 0x00010000
Global Const $NTM_PS_OPENTYPE = 0x00020000
Global Const $NTM_REGULAR = 0x00000040
Global Const $NTM_TT_OPENTYPE = 0x00040000
Global Const $NTM_TYPE1 = 0x00100000
Global Const $FLOODFILLBORDER = 0
Global Const $FLOODFILLSURFACE = 1
Global Const $AD_COUNTERCLOCKWISE = 1
Global Const $AD_CLOCKWISE = 2
Global Const $DCB_ACCUMULATE = 0x02
Global Const $DCB_DISABLE = 0x08
Global Const $DCB_ENABLE = 0x04
Global Const $DCB_RESET = 0x01
Global Const $DCB_SET = BitOR($DCB_RESET, $DCB_ACCUMULATE)
Global Const $DCX_WINDOW = 0x00000001
Global Const $DCX_CACHE = 0x00000002
Global Const $DCX_PARENTCLIP = 0x00000020
Global Const $DCX_CLIPSIBLINGS = 0x00000010
Global Const $DCX_CLIPCHILDREN = 0x00000008
Global Const $DCX_NORESETATTRS = 0x00000004
Global Const $DCX_LOCKWINDOWUPDATE = 0x00000400
Global Const $DCX_EXCLUDERGN = 0x00000040
Global Const $DCX_INTERSECTRGN = 0x00000080
Global Const $DCX_INTERSECTUPDATE = 0x00000200
Global Const $DCX_VALIDATE = 0x00200000
Global Const $GGO_BEZIER = 3
Global Const $GGO_BITMAP = 1
Global Const $GGO_GLYPH_INDEX = 0x0080
Global Const $GGO_GRAY2_BITMAP = 4
Global Const $GGO_GRAY4_BITMAP = 5
Global Const $GGO_GRAY8_BITMAP = 6
Global Const $GGO_METRICS = 0
Global Const $GGO_NATIVE = 2
Global Const $GGO_UNHINTED = 0x0100
Global Const $GM_COMPATIBLE = 1
Global Const $GM_ADVANCED = 2
Global Const $MM_ANISOTROPIC = 8
Global Const $MM_HIENGLISH = 5
Global Const $MM_HIMETRIC = 3
Global Const $MM_ISOTROPIC = 7
Global Const $MM_LOENGLISH = 4
Global Const $MM_LOMETRIC = 2
Global Const $MM_TEXT = 1
Global Const $MM_TWIPS = 6
Global Const $R2_BLACK = 1
Global Const $R2_COPYPEN = 13
Global Const $R2_LAST = 16
Global Const $R2_MASKNOTPEN = 3
Global Const $R2_MASKPEN = 9
Global Const $R2_MASKPENNOT = 5
Global Const $R2_MERGENOTPEN = 12
Global Const $R2_MERGEPEN = 15
Global Const $R2_MERGEPENNOT = 14
Global Const $R2_NOP = 11
Global Const $R2_NOT = 6
Global Const $R2_NOTCOPYPEN = 4
Global Const $R2_NOTMASKPEN = 8
Global Const $R2_NOTMERGEPEN = 2
Global Const $R2_NOTXORPEN = 10
Global Const $R2_WHITE = 16
Global Const $R2_XORPEN = 7
Global Const $BLACKONWHITE = 1
Global Const $COLORONCOLOR = 3
Global Const $HALFTONE = 4
Global Const $WHITEONBLACK = 2
Global Const $STRETCH_ANDSCANS = $BLACKONWHITE
Global Const $STRETCH_DELETESCANS = $COLORONCOLOR
Global Const $STRETCH_HALFTONE = $HALFTONE
Global Const $STRETCH_ORSCANS = $WHITEONBLACK
Global Const $TA_BASELINE = 0x0018
Global Const $TA_BOTTOM = 0x0008
Global Const $TA_TOP = 0x0000
Global Const $TA_CENTER = 0x0006
Global Const $TA_LEFT = 0x0000
Global Const $TA_RIGHT = 0x0002
Global Const $TA_NOUPDATECP = 0x0000
Global Const $TA_RTLREADING = 0x0100
Global Const $TA_UPDATECP = 0x0001
Global Const $VTA_BASELINE = $TA_BASELINE
Global Const $VTA_BOTTOM = $TA_RIGHT
Global Const $VTA_TOP = $TA_LEFT
Global Const $VTA_CENTER = $TA_CENTER
Global Const $VTA_LEFT = $TA_BOTTOM
Global Const $VTA_RIGHT = $TA_TOP
Global Const $UDF_BGR = 1
Global Const $UDF_RGB = 0
Global Const $MWT_IDENTITY = 0x01
Global Const $MWT_LEFTMULTIPLY = 0x02
Global Const $MWT_RIGHTMULTIPLY = 0x03
Global Const $MWT_SET = 0x04
Global Const $MONITOR_DEFAULTTONEAREST = 2
Global Const $MONITOR_DEFAULTTONULL = 0
Global Const $MONITOR_DEFAULTTOPRIMARY = 1
Global Const $PT_BEZIERTO = 4
Global Const $PT_LINETO = 2
Global Const $PT_MOVETO = 6
Global Const $PT_CLOSEFIGURE = 1
#Region Global Variables and Constants
Global Const $DUPLICATE_CLOSE_SOURCE = 0x00000001
Global Const $DUPLICATE_SAME_ACCESS = 0x00000002
Global Const $OBJ_BITMAP = 7
Global Const $OBJ_BRUSH = 2
Global Const $OBJ_COLORSPACE = 14
Global Const $OBJ_DC = 3
Global Const $OBJ_ENHMETADC = 12
Global Const $OBJ_ENHMETAFILE = 13
Global Const $OBJ_EXTPEN = 11
Global Const $OBJ_FONT = 6
Global Const $OBJ_MEMDC = 10
Global Const $OBJ_METADC = 4
Global Const $OBJ_METAFILE = 9
Global Const $OBJ_PAL = 5
Global Const $OBJ_PEN = 1
Global Const $OBJ_REGION = 8
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CloseHandle($hObject)
Local $aCall = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteObject($hObject)
Local $aCall = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DuplicateHandle($hSourceProcessHandle, $hSourceHandle, $hTargetProcessHandle, $iDesiredAccess, $iInheritHandle, $iOptions)
Local $aCall = DllCall("kernel32.dll", "bool", "DuplicateHandle",  "handle", $hSourceProcessHandle,  "handle", $hSourceHandle,  "handle", $hTargetProcessHandle,  "handle*", 0,  "dword", $iDesiredAccess,  "bool", $iInheritHandle,  "dword", $iOptions)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[4]
EndFunc
Func _WinAPI_GetCurrentObject($hDC, $iType)
Local $aCall = DllCall('gdi32.dll', 'handle', 'GetCurrentObject', 'handle', $hDC, 'uint', $iType)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentProcess()
Local $aCall = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetObject($hObject, $iSize, $pObject)
Local $aCall = DllCall("gdi32.dll", "int", "GetObjectW", "handle", $hObject, "int", $iSize, "struct*", $pObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetObjectInfoByHandle($hObject)
Local $tagPUBLIC_OBJECT_BASIC_INFORMATION = 'ulong Attributes;ulong GrantedAcess;ulong HandleCount;ulong PointerCount;ulong Reserved[10]'
Local $tPOBI = DllStructCreate($tagPUBLIC_OBJECT_BASIC_INFORMATION)
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 0, 'struct*', $tPOBI,  'ulong', DllStructGetSize($tPOBI), 'ptr', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tPOBI, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetObjectNameByHandle($hObject)
Local $tagUNICODE_STRING = 'struct;ushort Length;ushort MaximumLength;ptr Buffer;endstruct'
Local $tagPUBLIC_OBJECT_TYPE_INFORMATION = 'struct;' & $tagUNICODE_STRING & ';ulong Reserved[22];endstruct'
Local $tPOTI = DllStructCreate($tagPUBLIC_OBJECT_TYPE_INFORMATION & ';byte[32]')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 2, 'struct*', $tPOTI,  'ulong', DllStructGetSize($tPOTI), 'ulong*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $pData = DllStructGetData($tPOTI, 3)
If Not $pData Then Return SetError(11, 0, '')
Return _WinAPI_GetString($pData)
EndFunc
Func _WinAPI_GetObjectType($hObject)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetObjectType', 'handle', $hObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetStdHandle($iStdHandle)
If $iStdHandle < 0 Or $iStdHandle > 2 Then Return SetError(2, 0, -1)
Local Const $aHandle[3] = [-10, -11, -12]
Local $aCall = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $aHandle[$iStdHandle])
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetStockObject($iObject)
Local $aCall = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $iObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectObject($hDC, $hGDIObj)
Local $aCall = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hGDIObj)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetHandleInformation($hObject, $iMask, $iFlags)
Local $aCall = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $hObject, "dword", $iMask, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Global Variables and Constants
Global Const $tagBITMAP = 'struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct'
Global Const $tagBITMAPV5HEADER = 'struct;dword bV5Size;long bV5Width;long bV5Height;ushort bV5Planes;ushort bV5BitCount;dword bV5Compression;dword bV5SizeImage;long bV5XPelsPerMeter;long bV5YPelsPerMeter;dword bV5ClrUsed;dword bV5ClrImportant;dword bV5RedMask;dword bV5GreenMask;dword bV5BlueMask;dword bV5AlphaMask;dword bV5CSType;int bV5Endpoints[9];dword bV5GammaRed;dword bV5GammaGreen;dword bV5GammaBlue;dword bV5Intent;dword bV5ProfileData;dword bV5ProfileSize;dword bV5Reserved;endstruct'
Global Const $tagDIBSECTION = $tagBITMAP & ';' & $tagBITMAPINFOHEADER & ';dword dsBitfields[3];ptr dshSection;dword dsOffset'
Global Const $TMPF_FIXED_PITCH = 0x01
Global Const $TMPF_VECTOR = 0x02
Global Const $TMPF_TRUETYPE = 0x04
Global Const $TMPF_DEVICE = 0x08
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_BitBlt($hDestDC, $iXDest, $iYDest, $iWidth, $iHeight, $hSrcDC, $iXSrc, $iYSrc, $iROP)
Local $aCall = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $hDestDC, "int", $iXDest, "int", $iYDest, "int", $iWidth,  "int", $iHeight, "handle", $hSrcDC, "int", $iXSrc, "int", $iYSrc, "dword", $iROP)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CombineRgn($hRgnDest, $hRgnSrc1, $hRgnSrc2, $iCombineMode)
Local $aCall = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $hRgnDest, "handle", $hRgnSrc1, "handle", $hRgnSrc2,  "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyBitmap($hBitmap)
$hBitmap = _WinAPI_CopyImage($hBitmap, 0, 0, 0, 0x2000)
Return SetError(@error, @extended, $hBitmap)
EndFunc
Func _WinAPI_CopyImage($hImage, $iType = 0, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CopyImage', 'handle', $hImage, 'uint', $iType,  'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateANDBitmap($hBitmap)
Local $iError = 0, $hDib = 0
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
If Not $hBitmap Then Return SetError(@error + 20, @extended, 0)
Do
Local $atDIB[2]
$atDIB[0] = DllStructCreate($tagDIBSECTION)
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($atDIB[0]), $atDIB[0]))  Or (DllStructGetData($atDIB[0], 'bmBitsPixel') <> 32) Or (DllStructGetData($atDIB[0], 'biCompression')) Then
$iError = 10
ExitLoop
EndIf
$atDIB[1] = DllStructCreate($tagBITMAP)
$hDib = _WinAPI_CreateDIB(DllStructGetData($atDIB[0], 'bmWidth'), DllStructGetData($atDIB[0], 'bmHeight'), 1)
If Not _WinAPI_GetObject($hDib, DllStructGetSize($atDIB[1]), $atDIB[1]) Then
$iError = 11
ExitLoop
EndIf
Local $aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'ptr', __ANDProc(), 'ptr', 0, 'uint', 0,  'wparam', DllStructGetPtr($atDIB[0]), 'lparam', DllStructGetPtr($atDIB[1]))
If @error Then
$iError = @error
ExitLoop
EndIf
If Not $aCall[0] Then
$iError = 12
ExitLoop
EndIf
$iError = 0
Until 1
_WinAPI_DeleteObject($hBitmap)
If $iError Then
If $hDib Then
_WinAPI_DeleteObject($hDib)
EndIf
$hDib = 0
EndIf
Return SetError($iError, 0, $hDib)
EndFunc
Func _WinAPI_CreateBitmap($iWidth, $iHeight, $iPlanes = 1, $iBitsPerPel = 1, $pBits = 0)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $iWidth, "int", $iHeight, "uint", $iPlanes,  "uint", $iBitsPerPel, "struct*", $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateCompatibleBitmap($hDC, $iWidth, $iHeight)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $hDC, "int", $iWidth, "int", $iHeight)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDIB($iWidth, $iHeight, $iBitsPerPel = 32, $tColorTable = 0, $iColorCount = 0)
Local $aRGBQ[2], $iColors, $tagRGBQ
Switch $iBitsPerPel
Case 1
$iColors = 2
Case 4
$iColors = 16
Case 8
$iColors = 256
Case Else
$iColors = 0
EndSwitch
If $iColors Then
If Not IsDllStruct($tColorTable) Then
Switch $iBitsPerPel
Case 1
$aRGBQ[0] = 0
$aRGBQ[1] = 0xFFFFFF
$tColorTable = _WinAPI_CreateDIBColorTable($aRGBQ)
Case Else
EndSwitch
Else
If $iColors > $iColorCount Then
$iColors = $iColorCount
EndIf
If (Not $iColors) Or ((4 * $iColors) > DllStructGetSize($tColorTable)) Then
Return SetError(20, 0, 0)
EndIf
EndIf
$tagRGBQ = ';dword aRGBQuad[' & $iColors & ']'
Else
$tagRGBQ = ''
EndIf
Local $tBITMAPINFO = DllStructCreate($tagBITMAPINFOHEADER & $tagRGBQ)
DllStructSetData($tBITMAPINFO, 'biSize', 40)
DllStructSetData($tBITMAPINFO, 'biWidth', $iWidth)
DllStructSetData($tBITMAPINFO, 'biHeight', $iHeight)
DllStructSetData($tBITMAPINFO, 'biPlanes', 1)
DllStructSetData($tBITMAPINFO, 'biBitCount', $iBitsPerPel)
DllStructSetData($tBITMAPINFO, 'biCompression', 0)
DllStructSetData($tBITMAPINFO, 'biSizeImage', 0)
DllStructSetData($tBITMAPINFO, 'biXPelsPerMeter', 0)
DllStructSetData($tBITMAPINFO, 'biYPelsPerMeter', 0)
DllStructSetData($tBITMAPINFO, 'biClrUsed', $iColors)
DllStructSetData($tBITMAPINFO, 'biClrImportant', 0)
If $iColors Then
If IsDllStruct($tColorTable) Then
_WinAPI_MoveMemory(DllStructGetPtr($tBITMAPINFO, 'aRGBQuad'), $tColorTable, 4 * $iColors)
Else
_WinAPI_ZeroMemory(DllStructGetPtr($tBITMAPINFO, 'aRGBQuad'), 4 * $iColors)
EndIf
EndIf
Local $hBitmap = _WinAPI_CreateDIBSection(0, $tBITMAPINFO, 0, $__g_vExt)
If Not $hBitmap Then Return SetError(@error, @extended, 0)
Return $hBitmap
EndFunc
Func _WinAPI_CreateDIBSection($hDC, $tBITMAPINFO, $iUsage, ByRef $pBits, $hSection = 0, $iOffset = 0)
$pBits = 0
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateDIBSection', 'handle', $hDC, 'struct*', $tBITMAPINFO, 'uint', $iUsage,  'ptr*', 0, 'handle', $hSection, 'dword', $iOffset)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$pBits = $aCall[4]
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDIBColorTable(Const ByRef $aColorTable, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aColorTable, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $tColorTable = DllStructCreate('dword[' & ($iEnd - $iStart + 1) & ']')
Local $iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tColorTable, 1, _WinAPI_SwitchColor(__RGB($aColorTable[$i])), $iCount)
$iCount += 1
Next
Return $tColorTable
EndFunc
Func _WinAPI_CreateFont($iHeight, $iWidth, $iEscape = 0, $iOrientn = 0, $iWeight = $__WINAPICONSTANT_FW_NORMAL, $bItalic = False, $bUnderline = False, $bStrikeout = False, $iCharset = $__WINAPICONSTANT_DEFAULT_CHARSET, $iOutputPrec = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS, $iClipPrec = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS, $iQuality = $__WINAPICONSTANT_DEFAULT_QUALITY, $iPitch = 0, $sFace = 'Arial')
Local $aCall = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $iHeight, "int", $iWidth, "int", $iEscape,  "int", $iOrientn, "int", $iWeight, "dword", $bItalic, "dword", $bUnderline, "dword", $bStrikeout,  "dword", $iCharset, "dword", $iOutputPrec, "dword", $iClipPrec, "dword", $iQuality, "dword", $iPitch, "wstr", $sFace)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFontIndirect($tLogFont)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "struct*", $tLogFont)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRectRgn($iLeftRect, $iTopRect, $iRightRect, $iBottomRect)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $iLeftRect, "int", $iTopRect, "int", $iRightRect,  "int", $iBottomRect)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRoundRectRgn($iLeftRect, $iTopRect, $iRightRect, $iBottomRect, $iWidthEllipse, $iHeightEllipse)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $iLeftRect, "int", $iTopRect,  "int", $iRightRect, "int", $iBottomRect, "int", $iWidthEllipse, "int", $iHeightEllipse)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateSolidBrush($iColor)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "INT", $iColor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapDimension($hBitmap)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return _WinAPI_CreateSize(DllStructGetData($tObj, 'bmWidth'), DllStructGetData($tObj, 'bmHeight'))
EndFunc
Func _WinAPI_GetSysColorBrush($iIndex)
Local $aCall = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextExtentPoint32($hDC, $sText)
Local $tSize = DllStructCreate($tagSIZE)
Local $iSize = StringLen($sText)
Local $aCall = DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $hDC, "wstr", $sText, "int", $iSize, "struct*", $tSize)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSize
EndFunc
Func _WinAPI_GetTextMetrics($hDC)
Local $tTEXTMETRIC = DllStructCreate($tagTEXTMETRIC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetTextMetricsW', 'handle', $hDC, 'struct*', $tTEXTMETRIC)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tTEXTMETRIC
EndFunc
Func _WinAPI_GetWindowRgn($hWnd, $hRgn)
Local $aCall = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $hWnd, "handle", $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IsAlphaBitmap($hBitmap)
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
If Not $hBitmap Then Return SetError(@error + 20, @extended, 0)
Local $aCall, $iError = 0
Do
Local $tDIB = DllStructCreate($tagDIBSECTION)
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB)) Or (DllStructGetData($tDIB, 'bmBitsPixel') <> 32) Or (DllStructGetData($tDIB, 'biCompression')) Then
$iError = 1
ExitLoop
EndIf
$aCall = DllCall('user32.dll', 'int', 'CallWindowProc', 'ptr', __AlphaProc(), 'ptr', 0, 'uint', 0, 'struct*', $tDIB, 'ptr', 0)
If @error Or ($aCall[0] = -1) Then
$iError = @error + 10
ExitLoop
EndIf
Until 1
_WinAPI_DeleteObject($hBitmap)
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRect(ByRef $tRECT, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "PtInRect", "struct*", $tRECT, "struct", $tPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RedrawWindow($hWnd, $tRECT = 0, $hRegion = 0, $iFlags = 5)
Local $aCall = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $hWnd, "struct*", $tRECT, "handle", $hRegion,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowRgn($hWnd, $hRgn, $bRedraw = True)
Local $aCall = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $hWnd, "handle", $hRgn, "bool", $bRedraw)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Embedded DLL Functions
Func __AlphaProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C050504883EC28' &  '48837C24600074054831C0EB0748C7C0010000004821C0751F488B6C24604883' &  '7D180074054831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB' &  '034831C04821C0740C48C7C0FFFFFFFF4863C0EB6F48C744242800000000488B' &  '6C24604C637D04488B6C2460486345084C0FAFF849C1E7024983C7FC4C3B7C24' &  '287C36488B6C24604C8B7D184C037C24284983C7034C897C2430488B6C243080' &  '7D0000740C48C7C0010000004863C0EB1348834424280471A54831C04863C0EB' &  '034831C04883C438415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050837C241C00740431C0EB05B80100000021C075198B6C241C837D' &  '1400740431C0EB05B80100000021C07502EB07B801000000EB0231C021C07407' &  'B8FFFFFFFFEB4FC70424000000008B6C241C8B5D048B6C241C0FAF5D08C1E302' &  '83C3FC3B1C247C288B6C241C8B5D14031C2483C303895C24048B6C2404807D00' &  '007407B801000000EB0C8304240471BE31C0EB0231C083C4085B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func __ANDProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C2420554157415648C7C009000000' &  '4883EC0848C704240000000048FFC875EF4883EC284883BC24A0000000007405' &  '4831C0EB0748C7C0010000004821C00F85840000004883BC24A8000000007405' &  '4831C0EB0748C7C0010000004821C07555488BAC24A000000048837D18007405' &  '4831C0EB0748C7C0010000004821C07522488BAC24A800000048837D18007405' &  '4831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB034831C048' &  '21C07502EB0948C7C001000000EB034831C04821C07502EB0948C7C001000000' &  'EB034831C04821C0740B4831C04863C0E9D701000048C74424280000000048C7' &  '44243000000000488BAC24A00000004C637D0849FFCF4C3B7C24300F8C9C0100' &  '0048C74424380000000048C74424400000000048C744244800000000488BAC24' &  'A00000004C637D0449FFCF4C3B7C24480F8CDB000000488BAC24A00000004C8B' &  '7D184C037C24284983C7034C897C2450488B6C2450807D000074264C8B7C2440' &  '4C8B74243849F7DE4983C61F4C89F148C7C00100000048D3E04909C74C897C24' &  '4048FF4424384C8B7C24384983FF1F7E6F4C8B7C244049F7D74C897C244048C7' &  '442458180000004831C0483B4424587F3D488BAC24A80000004C8B7D184C037C' &  '24604C897C24504C8B7C2440488B4C245849D3FF4C89F850488B6C2458588845' &  '0048FF4424604883442458F871B948C74424380000000048C744244000000000' &  '48834424280448FF4424480F810BFFFFFF48837C24380074794C8B7C244049F7' &  'D74C8B74243849F7DE4983C6204C89F148C7C0FFFFFFFF48D3E04921C74C897C' &  '244048C7442458180000004831C0483B4424587F3D488BAC24A80000004C8B7D' &  '184C037C24604C897C24504C8B7C2440488B4C245849D3FF4C89F850488B6C24' &  '585888450048FF4424604883442458F871B948FF4424300F814AFEFFFF48C7C0' &  '010000004863C0EB034831C04883C470415E415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555357BA0800000083EC04C70424000000004A75F3837C243800740431C0EB05' &  'B80100000021C07562837C243C00740431C0EB05B80100000021C0753F8B6C24' &  '38837D1400740431C0EB05B80100000021C075198B6C243C837D1400740431C0' &  'EB05B80100000021C07502EB07B801000000EB0231C021C07502EB07B8010000' &  '00EB0231C021C07502EB07B801000000EB0231C021C0740731C0E969010000C7' &  '042400000000C7442404000000008B6C24388B5D084B3B5C24040F8C3F010000' &  'C744240800000000C744240C00000000C7442410000000008B6C24388B5D044B' &  '3B5C24100F8CA90000008B6C24388B5D14031C2483C303895C24148B6C241480' &  '7D0000741C8B5C240C8B7C2408F7DF83C71F89F9B801000000D3E009C3895C24' &  '0CFF4424088B5C240883FB1F7E578B5C240CF7D3895C240CC744241818000000' &  '31C03B4424187F2D8B6C243C8B5D14035C241C895C24148B5C240C8B4C2418D3' &  'FB538B6C241858884500FF44241C83442418F871CBC744240800000000C74424' &  '0C0000000083042404FF4424100F8145FFFFFF837C240800745B8B5C240CF7D3' &  '8B7C2408F7DF83C72089F9B8FFFFFFFFD3E021C3895C240CC744241818000000' &  '31C03B4424187F2D8B6C243C8B5D14035C241C895C24148B5C240C8B4C2418D3' &  'FB538B6C241858884500FF44241C83442418F871CBFF4424040F81AFFEFFFFB8' &  '01000000EB0231C083C4205F5B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func __XORProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C050504883EC28' &  '48837C24600074054831C0EB0748C7C0010000004821C0751B48837C24680074' &  '054831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB034831C0' &  '4821C074084831C04863C0EB7748C7442428000000004C637C24584983C7FC4C' &  '3B7C24287C4F4C8B7C24604C037C24284C897C2430488B6C2430807D00007405' &  '4831C0EB0748C7C0010000004821C0741C4C8B7C24684C037C24284983C7034C' &  '897C2430488B6C2430C64500FF48834424280471A148C7C0010000004863C0EB' &  '034831C04883C438415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050837C241C00740431C0EB05B80100000021C07516837C24200074' &  '0431C0EB05B80100000021C07502EB07B801000000EB0231C021C0740431C0EB' &  '5AC70424000000008B5C241883C3FC3B1C247C3E8B5C241C031C24895C24048B' &  '6C2404807D0000740431C0EB05B80100000021C074168B5C2420031C2483C303' &  '895C24048B6C2404C64500FF8304240471B6B801000000EB0231C083C4085B5D' &  'C21000'))
EndIf
EndIf
Return $pProc
EndFunc
#EndRegion Embedded DLL Functions
#Region Internal Functions
Func __Init($dData)
Local $iLength = BinaryLen($dData)
Local $aCall = DllCall('kernel32.dll', 'ptr', 'VirtualAlloc', 'ptr', 0, 'ulong_ptr', $iLength, 'dword', 0x00001000, 'dword', 0x00000040)
If @error Or Not $aCall[0] Then __FatalExit(1, 'Error allocating memory.')
Local $tData = DllStructCreate('byte[' & $iLength & "]", $aCall[0])
DllStructSetData($tData, 1, $dData)
Return $aCall[0]
EndFunc
#EndRegion Internal Functions
#Region Global Variables and Constants
Global Const $DI_MASK = 0x0001
Global Const $DI_IMAGE = 0x0002
Global Const $DI_NORMAL = 0x0003
Global Const $DI_COMPAT = 0x0004
Global Const $DI_DEFAULTSIZE = 0x0008
Global Const $DI_NOMIRROR = 0x0010
Global Const $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001
Global Const $DISPLAY_DEVICE_MULTI_DRIVER = 0x00000002
Global Const $DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004
Global Const $DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008
Global Const $DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010
Global Const $DISPLAY_DEVICE_REMOVABLE = 0x00000020
Global Const $DISPLAY_DEVICE_DISCONNECT = 0x02000000
Global Const $DISPLAY_DEVICE_REMOTE = 0x04000000
Global Const $DISPLAY_DEVICE_MODESPRUNED = 0x08000000
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CreateCompatibleDC($hDC)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteDC($hDC)
Local $aCall = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawEdge($hDC, $tRECT, $iEdgeType, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "DrawEdge", "handle", $hDC, "struct*", $tRECT, "uint", $iEdgeType,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawFrameControl($hDC, $tRECT, $iType, $iState)
Local $aCall = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $hDC, "struct*", $tRECT, "uint", $iType,  "uint", $iState)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawIcon($hDC, $iX, $iY, $hIcon)
Local $aCall = DllCall("user32.dll", "bool", "DrawIcon", "handle", $hDC, "int", $iX, "int", $iY, "handle", $hIcon)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawIconEx($hDC, $iX, $iY, $hIcon, $iWidth = 0, $iHeight = 0, $iStep = 0, $hBrush = 0, $iFlags = 3)
Local $iOptions
Switch $iFlags
Case 1
$iOptions = $DI_MASK
Case 2
$iOptions = $DI_IMAGE
Case 3
$iOptions = $DI_NORMAL
Case 4
$iOptions = $DI_COMPAT
Case 5
$iOptions = $DI_DEFAULTSIZE
Case Else
$iOptions = $DI_NOMIRROR
EndSwitch
Local $aCall = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $hDC, "int", $iX, "int", $iY, "handle", $hIcon,  "int", $iWidth, "int", $iHeight, "uint", $iStep, "handle", $hBrush, "uint", $iOptions)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawText($hDC, $sText, ByRef $tRECT, $iFlags)
Local $aCall = DllCall("user32.dll", "int", "DrawTextW", "handle", $hDC, "wstr", $sText, "int", -1, "struct*", $tRECT,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumDisplayDevices($sDevice, $iDevNum)
Local $tName = 0, $iFlags = 0, $aDevice[5]
If $sDevice <> "" Then
$tName = DllStructCreate("wchar Text[" & StringLen($sDevice) + 1 & "]")
DllStructSetData($tName, "Text", $sDevice)
EndIf
Local Const $tagDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Local $tDevice = DllStructCreate($tagDISPLAY_DEVICE)
Local $iDevice = DllStructGetSize($tDevice)
DllStructSetData($tDevice, "Size", $iDevice)
Local $aCall = DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "struct*", $tName, "dword", $iDevNum, "struct*", $tDevice, "dword", 1)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $iN = DllStructGetData($tDevice, "Flags")
If BitAND($iN, $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP) <> 0 Then $iFlags = BitOR($iFlags, 1)
If BitAND($iN, $DISPLAY_DEVICE_PRIMARY_DEVICE) <> 0 Then $iFlags = BitOR($iFlags, 2)
If BitAND($iN, $DISPLAY_DEVICE_MIRRORING_DRIVER) <> 0 Then $iFlags = BitOR($iFlags, 4)
If BitAND($iN, $DISPLAY_DEVICE_VGA_COMPATIBLE) <> 0 Then $iFlags = BitOR($iFlags, 8)
If BitAND($iN, $DISPLAY_DEVICE_REMOVABLE) <> 0 Then $iFlags = BitOR($iFlags, 16)
If BitAND($iN, $DISPLAY_DEVICE_MODESPRUNED) <> 0 Then $iFlags = BitOR($iFlags, 32)
$aDevice[0] = True
$aDevice[1] = DllStructGetData($tDevice, "Name")
$aDevice[2] = DllStructGetData($tDevice, "String")
$aDevice[3] = $iFlags
$aDevice[4] = DllStructGetData($tDevice, "ID")
Return $aDevice
EndFunc
Func _WinAPI_FillRect($hDC, $tRECT, $hBrush)
Local $aCall
If IsPtr($hBrush) Then
$aCall = DllCall("user32.dll", "int", "FillRect", "handle", $hDC, "struct*", $tRECT, "handle", $hBrush)
Else
$aCall = DllCall("user32.dll", "int", "FillRect", "handle", $hDC, "struct*", $tRECT, "dword_ptr", $hBrush)
EndIf
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FrameRect($hDC, $tRECT, $hBrush)
Local $aCall = DllCall("user32.dll", "int", "FrameRect", "handle", $hDC, "struct*", $tRECT, "handle", $hBrush)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBkMode($hDC)
Local $aCall = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDCEx($hWnd, $hRgn, $iFlags)
Local $aCall = DllCall('user32.dll', 'handle', 'GetDCEx', 'hwnd', $hWnd, 'handle', $hRgn, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDeviceCaps($hDC, $iIndex)
Local $aCall = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hDC, "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextColor($hDC)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetTextColor', 'handle', $hDC)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetWindowDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PrintWindow($hWnd, $hDC, $bClient = False)
Local $aCall = DllCall('user32.dll', 'bool', 'PrintWindow', 'hwnd', $hWnd, 'handle', $hDC, 'uint', $bClient)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ReleaseDC($hWnd, $hDC)
Local $aCall = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RestoreDC($hDC, $iID)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RestoreDC', 'handle', $hDC, 'int', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SaveDC($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'SaveDC', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBkColor($hDC, $iColor)
Local $aCall = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $hDC, "INT", $iColor)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBkMode($hDC, $iBkMode)
Local $aCall = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $hDC, "int", $iBkMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextColor($hDC, $iColor)
Local $aCall = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $hDC, "INT", $iColor)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_TwipsPerPixelX()
Local $hDC, $iTwipsPerPixelX
$hDC = _WinAPI_GetDC(0)
Local Const $__WINAPICONSTANT_LOGPIXELSX = 88
$iTwipsPerPixelX = 1440 / _WinAPI_GetDeviceCaps($hDC, $__WINAPICONSTANT_LOGPIXELSX)
_WinAPI_ReleaseDC(0, $hDC)
Return $iTwipsPerPixelX
EndFunc
Func _WinAPI_TwipsPerPixelY()
Local $hDC, $iTwipsPerPixelY
$hDC = _WinAPI_GetDC(0)
Local Const $__WINAPICONSTANT_LOGPIXELSY = 90
$iTwipsPerPixelY = 1440 / _WinAPI_GetDeviceCaps($hDC, $__WINAPICONSTANT_LOGPIXELSY)
_WinAPI_ReleaseDC(0, $hDC)
Return $iTwipsPerPixelY
EndFunc
#EndRegion Public Functions
#Region Internal Functions
#EndRegion Internal Functions
#Region Global Variables and Constants
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 32650
Global Const $IDC_ARROW = 32512
Global Const $IDC_CROSS = 32515
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 32651
Global Const $IDC_IBEAM = 32513
Global Const $IDC_NO = 32648
Global Const $IDC_SIZEALL = 32646
Global Const $IDC_SIZENESW = 32643
Global Const $IDC_SIZENS = 32645
Global Const $IDC_SIZENWSE = 32642
Global Const $IDC_SIZEWE = 32644
Global Const $IDC_UPARROW = 32516
Global Const $IDC_WAIT = 32514
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Global Const $tagICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Func _WinAPI_AddIconTransparency($hIcon, $iPercent = 50, $bDelete = False)
Local $tBITMAP, $hDib = 0, $hResult = 0
Local $ahBitmap[2]
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
For $i = 0 To 1
$ahBitmap[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
Local $iError = 0
Do
$hDib = _WinAPI_CopyBitmap($ahBitmap[1])
If Not $hDib Then
$iError = 20
ExitLoop
EndIf
$tBITMAP = DllStructCreate($tagBITMAP)
If (Not _WinAPI_GetObject($hDib, DllStructGetSize($tBITMAP), $tBITMAP)) Or (DllStructGetData($tBITMAP, 'bmBitsPixel') <> 32) Then
$iError = 21
ExitLoop
EndIf
$aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'PTR', __TransparencyProc(), 'hwnd', 0,  'uint', $iPercent, 'wparam', DllStructGetPtr($tBITMAP), 'lparam', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 30
ExitLoop
EndIf
If $aCall[0] = -1 Then
$hResult = _WinAPI_CreateEmptyIcon(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'))
Else
$hResult = _WinAPI_CreateIconIndirect($hDib, $ahBitmap[0])
EndIf
If Not $hResult Then $iError = 22
Until 1
If $hDib Then
_WinAPI_DeleteObject($hDib)
EndIf
For $i = 0 To 1
If $ahBitmap[$i] Then
_WinAPI_DeleteObject($ahBitmap[$i])
EndIf
Next
If $iError Then Return SetError($iError, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hResult
EndFunc
Func _WinAPI_CopyIcon($hIcon)
Local $aCall = DllCall("user32.dll", "handle", "CopyIcon", "handle", $hIcon)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_Create32BitHICON($hIcon, $bDelete = False)
Local $ahBitmap[2], $hResult = 0
Local $aDIB[2][2] = [[0, 0], [0, 0]]
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
For $i = 0 To 1
$ahBitmap[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
If _WinAPI_IsAlphaBitmap($ahBitmap[1]) Then
$aDIB[0][0] = _WinAPI_CreateANDBitmap($ahBitmap[1])
If Not @error Then
$hResult = _WinAPI_CreateIconIndirect($ahBitmap[1], $aDIB[0][0])
EndIf
Else
Local $tSIZE = _WinAPI_GetBitmapDimension($ahBitmap[1])
Local $aSize[2]
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tSIZE, $i + 1)
Next
Local $hSrcDC = _WinAPI_CreateCompatibleDC(0)
Local $hDstDC = _WinAPI_CreateCompatibleDC(0)
Local $hSrcSv, $hDstSv
For $i = 0 To 1
$aDIB[$i][0] = _WinAPI_CreateDIB($aSize[0], $aSize[1])
$aDIB[$i][1] = $__g_vExt
$hSrcSv = _WinAPI_SelectObject($hSrcDC, $ahBitmap[$i])
$hDstSv = _WinAPI_SelectObject($hDstDC, $aDIB[$i][0])
_WinAPI_BitBlt($hDstDC, 0, 0, $aSize[0], $aSize[1], $hSrcDC, 0, 0, 0x00C000CA)
_WinAPI_SelectObject($hSrcDC, $hSrcSv)
_WinAPI_SelectObject($hDstDC, $hDstSv)
Next
_WinAPI_DeleteDC($hSrcDC)
_WinAPI_DeleteDC($hDstDC)
$aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'ptr', __XORProc(), 'ptr', 0,  'uint', $aSize[0] * $aSize[1] * 4, 'wparam', $aDIB[0][1], 'lparam', $aDIB[1][1])
If Not @error And $aCall[0] Then
$hResult = _WinAPI_CreateIconIndirect($aDIB[1][0], $ahBitmap[0])
EndIf
EndIf
For $i = 0 To 1
_WinAPI_DeleteObject($ahBitmap[$i])
If $aDIB[$i][0] Then
_WinAPI_DeleteObject($aDIB[$i][0])
EndIf
Next
If Not $hResult Then Return SetError(11, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hResult
EndFunc
Func _WinAPI_CreateEmptyIcon($iWidth, $iHeight, $iBitsPerPel = 32)
Local $hXOR = _WinAPI_CreateDIB($iWidth, $iHeight, $iBitsPerPel)
Local $hAND = _WinAPI_CreateDIB($iWidth, $iHeight, 1)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hAND)
Local $hBrush = _WinAPI_CreateSolidBrush(0xFFFFFF)
Local $tRECT = _WinAPI_CreateRect(0, 0, $iWidth, $iHeight)
_WinAPI_FillRect($hDC, $tRECT, $hBrush)
_WinAPI_DeleteObject($hBrush)
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Local $hIcon = _WinAPI_CreateIconIndirect($hXOR, $hAND)
Local $iError = @error
If $hXOR Then
_WinAPI_DeleteObject($hXOR)
EndIf
If $hAND Then
_WinAPI_DeleteObject($hAND)
EndIf
If Not $hIcon Then Return SetError($iError + 10, 0, 0)
Return $hIcon
EndFunc
Func _WinAPI_CreateIcon($hInstance, $iWidth, $iHeight, $iPlanes, $iBitsPixel, $pANDBits, $pXORBits)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIcon', 'handle', $hInstance, 'int', $iWidth, 'int', $iHeight,  'byte', $iPlanes, 'byte', $iBitsPixel, 'struct*', $pANDBits, 'struct*', $pXORBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateIconFromResourceEx($pData, $iSize, $bIcon = True, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIconFromResourceEx', 'ptr', $pData, 'dword', $iSize, 'bool', $bIcon,  'dword', 0x00030000, 'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateIconIndirect($hBitmap, $hMask, $iXHotspot = 0, $iYHotspot = 0, $bIcon = True)
Local $tICONINFO = DllStructCreate($tagICONINFO)
DllStructSetData($tICONINFO, 1, $bIcon)
DllStructSetData($tICONINFO, 2, $iXHotspot)
DllStructSetData($tICONINFO, 3, $iYHotspot)
DllStructSetData($tICONINFO, 4, $hMask)
DllStructSetData($tICONINFO, 5, $hBitmap)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIconIndirect', 'struct*', $tICONINFO)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyIcon($hIcon)
Local $aCall = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $hIcon)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtractIcon($sIcon, $iIndex, $bSmall = False)
Local $pLarge, $pSmall, $tPtr = DllStructCreate('ptr')
If $bSmall Then
$pLarge = 0
$pSmall = DllStructGetPtr($tPtr)
Else
$pLarge = DllStructGetPtr($tPtr)
$pSmall = 0
EndIf
DllCall('shell32.dll', 'uint', 'ExtractIconExW', 'wstr', $sIcon, 'int', $iIndex, 'ptr', $pLarge, 'ptr', $pSmall, 'uint', 1)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPtr, 1)
EndFunc
Func _WinAPI_ExtractIconEx($sFilePath, $iIndex, $paLarge, $paSmall, $iIcons)
Local $aCall = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $sFilePath, "int", $iIndex, "struct*", $paLarge,  "struct*", $paSmall, "uint", $iIcons)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FileIconInit($bRestore = True)
Local $aCall = DllCall('shell32.dll', 'int', 660, 'int', $bRestore)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return 1
EndFunc
Func _WinAPI_GetIconDimension($hIcon)
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $tSIZE = _WinAPI_GetBitmapDimension(DllStructGetData($tICONINFO, 5))
For $i = 4 To 5
_WinAPI_DeleteObject(DllStructGetData($tICONINFO, $i))
Next
If Not IsDllStruct($tSIZE) Then Return SetError(20, 0, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetIconInfo($hIcon)
Local $tInfo = DllStructCreate($tagICONINFO)
Local $aCall = DllCall("user32.dll", "bool", "GetIconInfo", "handle", $hIcon, "struct*", $tInfo)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aIcon[6]
$aIcon[0] = True
$aIcon[1] = DllStructGetData($tInfo, "Icon") <> 0
$aIcon[2] = DllStructGetData($tInfo, "XHotSpot")
$aIcon[3] = DllStructGetData($tInfo, "YHotSpot")
$aIcon[4] = DllStructGetData($tInfo, "hMask")
$aIcon[5] = DllStructGetData($tInfo, "hColor")
Return $aIcon
EndFunc
Func _WinAPI_GetIconInfoEx($hIcon)
Local $tIIEX = DllStructCreate('dword;int;dword;dword;ptr;ptr;ushort;wchar[260];wchar[260]')
DllStructSetData($tIIEX, 1, DllStructGetSize($tIIEX))
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfoExW', 'handle', $hIcon, 'struct*', $tIIEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[8]
For $i = 0 To 7
$aRet[$i] = DllStructGetData($tIIEX, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_LoadIcon($hInstance, $sName)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'LoadIconW', 'handle', $hInstance, $sTypeOfName, $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadIconMetric($hInstance, $sName, $iMetric)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('comctl32.dll', 'long', 'LoadIconMetric', 'handle', $hInstance, $sTypeOfName, $sName, 'int', $iMetric, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _WinAPI_LoadIconWithScaleDown($hInstance, $sName, $iWidth, $iHeight)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('comctl32.dll', 'long', 'LoadIconWithScaleDown', 'handle', $hInstance, $sTypeOfName, $sName,  'int', $iWidth, 'int', $iHeight, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[5]
EndFunc
Func _WinAPI_LoadShell32Icon($iIconID)
Local $tIcons = DllStructCreate("ptr Data")
Local $iIcons = _WinAPI_ExtractIconEx("shell32.dll", $iIconID, 0, $tIcons, 1)
If @error Then Return SetError(@error, @extended, 0)
If $iIcons <= 0 Then Return SetError(10, 0, 0)
Return DllStructGetData($tIcons, "Data")
EndFunc
Func _WinAPI_LookupIconIdFromDirectoryEx($pData, $bIcon = True, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'int', 'LookupIconIdFromDirectoryEx', 'ptr', $pData, 'bool', $bIcon,  'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MirrorIcon($hIcon, $bDelete = False)
If Not $bDelete Then
$hIcon = _WinAPI_CopyIcon($hIcon)
EndIf
Local $aCall = DllCall('comctl32.dll', 'int', 414, 'ptr', 0, 'ptr*', $hIcon)
If @error Or Not $aCall[0] Then
Local $iError = @error + 10
If $hIcon And Not $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return SetError($iError, 0, 0)
EndIf
Return $aCall[2]
EndFunc
#EndRegion Public Functions
#Region Embedded DLL Functions
Func __TransparencyProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C0505050505050' &  '4883EC284883BC24800000000074054831C0EB0748C7C0010000004821C07522' &  '488BAC248000000048837D180074054831C0EB0748C7C0010000004821C07502' &  'EB0948C7C001000000EB034831C04821C0740B4831C04863C0E93C0100004C63' &  '7C24784983FF647E0F48C7C0010000004863C0E9220100004C637C24784D21FF' &  '7D08C74424780000000048C74424280100000048C74424300000000048C74424' &  '3800000000488BAC24800000004C637D04488BAC2480000000486345084C0FAF' &  'F849C1E7024983C7FC4C3B7C24380F8C88000000488BAC24800000004C8B7D18' &  '4C037C24384983C7034C897C2440488B6C2440480FB64500505888442448807C' &  '244800744B4C0FB67C244848634424784C0FAFF84C89F848C7C1640000004899' &  '48F7F94989C74C89F850488B6C244858884500488B6C2440807D0000740948C7' &  '4424280000000048C7442430010000004883442438040F8149FFFFFF48837C24' &  '3000741148837C242800740948C7C001000000EB034831C04821C0740E48C7C0' &  'FFFFFFFF4863C0EB11EB0C48C7C0010000004863C0EB034831C04883C458415F' &  '5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050505050837C242800740431C0EB05B80100000021C075198B6C24' &  '28837D1400740431C0EB05B80100000021C07502EB07B801000000EB0231C021' &  'C0740731C0E9E50000008B5C242483FB647E0AB801000000E9D20000008B5C24' &  '2421DB7D08C744242400000000C7042401000000C744240400000000C7442408' &  '000000008B6C24288B5D048B6C24280FAF5D08C1E30283C3FC3B5C24087C648B' &  '6C24288B5D14035C240883C303895C240C8B6C240C0FB6450088442410807C24' &  '100074380FB65C24100FAF5C242489D8B96400000099F7F989C3538B6C241058' &  '8845008B6C240C807D00007407C7042400000000C74424040100000083442408' &  '047181837C240400740D833C24007407B801000000EB0231C021C07409B8FFFF' &  'FFFFEB0BEB07B801000000EB0231C083C4145B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
#EndRegion Embedded DLL Functions
#Region Global Variables and Constants
Global Const $tagBITMAPV4HEADER = 'struct;dword bV4Size;long bV4Width;long bV4Height;ushort bV4Planes;ushort bV4BitCount;dword bV4Compression;dword bV4SizeImage;long bV4XPelsPerMeter;long bV4YPelsPerMeter;dword bV4ClrUsed;dword bV4ClrImportant;dword bV4RedMask;dword bV4GreenMask;dword bV4BlueMask;dword bV4AlphaMask;dword bV4CSType;int bV4Endpoints[9];dword bV4GammaRed;dword bV4GammaGreen;dword bV4GammaBlue;endstruct'
Global Const $tagCOLORADJUSTMENT = 'ushort Size;ushort Flags;ushort IlluminantIndex;ushort RedGamma;ushort GreenGamma;ushort BlueGamma;ushort ReferenceBlack;ushort ReferenceWhite;short Contrast;short Brightness;short Colorfulness;short RedGreenTint'
Global Const $tagDEVMODE = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;short Orientation;short PaperSize;short PaperLength;short PaperWidth;short Scale;short Copies;short DefaultSource;short PrintQuality;short Color;short Duplex;short YResolution;short TTOption;short Collate;wchar FormName[32];ushort Unused1;dword Unused2[3];dword Nup;dword Unused3;dword ICMMethod;dword ICMIntent;dword MediaType;dword DitherType;dword Reserved1;dword Reserved2;dword PanningWidth;dword PanningHeight'
Global Const $tagDEVMODE_DISPLAY = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;' & $tagPOINT & ';dword DisplayOrientation;dword DisplayFixedOutput;short Unused1[5];wchar Unused2[32];ushort LogPixels;dword BitsPerPel;dword PelsWidth;dword PelsHeight;dword DisplayFlags;dword DisplayFrequency'
Global Const $tagDWM_COLORIZATION_PARAMETERS = 'dword Color;dword AfterGlow;uint ColorBalance;uint AfterGlowBalance;uint BlurBalance;uint GlassReflectionIntensity; uint OpaqueBlend'
Global Const $tagENHMETAHEADER = 'struct;dword Type;dword Size;long rcBounds[4];long rcFrame[4];dword Signature;dword Version;dword Bytes;dword Records;ushort Handles;ushort Reserved;dword Description;dword OffDescription;dword PalEntries;long Device[2];long Millimeters[2];dword PixelFormat;dword OffPixelFormat;dword OpenGL;long Micrometers[2];endstruct'
Global Const $tagEXTLOGPEN = 'dword PenStyle;dword Width;uint BrushStyle;dword Color;ulong_ptr Hatch;dword NumEntries'
Global Const $tagFONTSIGNATURE = 'dword fsUsb[4];dword fsCsb[2]'
Global Const $tagGLYPHMETRICS = 'uint BlackBoxX;uint BlackBoxY;' & $tagPOINT & ';short CellIncX;short CellIncY'
Global Const $tagLOGBRUSH = 'uint Style;dword Color;ulong_ptr Hatch'
Global Const $tagLOGPEN = 'uint Style;dword Width;dword Color'
Global Const $tagMAT2 = 'short eM11[2];short eM12[2];short eM21[2];short eM22[2]'
Global Const $tagNEWTEXTMETRIC = $tagTEXTMETRIC & ';dword ntmFlags;uint ntmSizeEM;uint ntmCellHeight;uint ntmAvgWidth'
Global Const $tagNEWTEXTMETRICEX = $tagNEWTEXTMETRIC & ';' & $tagFONTSIGNATURE
Global Const $tagPANOSE = 'struct;byte bFamilyType;byte bSerifStyle;byte bWeight;byte bProportion;byte bContrast;byte bStrokeVariation;byte bArmStyle;byte bLetterform;byte bMidline;byte bXHeight;endstruct'
Global Const $tagOUTLINETEXTMETRIC = 'struct;uint otmSize;' & $tagTEXTMETRIC & ';byte otmFiller;' & $tagPANOSE & ';byte bugFiller[3];uint otmSelection;uint otmType;int otmCharSlopeRise;int otmCharSlopeRun;int otmItalicAngle;uint otmEMSquare;int otmAscent;int otmDescent;uint otmLineGap;uint otmCapEmHeight;uint otmXHeight;long otmFontBox[4];int otmMacAscent;int otmMacDescent;uint otmMacLineGap;uint otmMinimumPPEM;long otmSubscriptSize[2];long otmSubscriptOffset[2];long otmSuperscriptSize[2];long otmSuperscriptOffse[2];uint otmStrikeoutSize;int otmStrikeoutPosition;int otmUnderscoreSize;int otmUnderscorePosition;uint_ptr otmFamilyName;uint_ptr otmFaceName;uint_ptr otmStyleName;uint_ptr otmFullName;endstruct'
Global Const $tagPAINTSTRUCT = 'hwnd hDC;int fErase;dword rPaint[4];int fRestore;int fIncUpdate;byte rgbReserved[32]'
Global Const $tagRGNDATAHEADER = 'struct;dword Size;dword Type;dword Count;dword RgnSize;' & $tagRECT & ';endstruct'
Global Const $tagXFORM = 'float eM11;float eM12;float eM21;float eM22;float eDx;float eDy'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_AbortPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'AbortPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AddFontMemResourceEx($pData, $iSize)
Local $aCall = DllCall('gdi32.dll', 'handle', 'AddFontMemResourceEx', 'ptr', $pData, 'dword', $iSize, 'ptr', 0, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[4], $aCall[0])
EndFunc
Func _WinAPI_AddFontResourceEx($sFont, $iFlag = 0, $bNotify = False)
Local $aCall = DllCall('gdi32.dll', 'int', 'AddFontResourceExW', 'wstr', $sFont, 'dword', $iFlag, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If $bNotify Then
Local Const $WM_FONTCHANGE = 0x001D
Local Const $HWND_BROADCAST = 0xFFFF
DllCall('user32.dll', 'lresult', 'SendMessage', 'hwnd', $HWND_BROADCAST, 'uint', $WM_FONTCHANGE, 'wparam', 0,  'lparam', 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_AddIconOverlay($hIcon, $hOverlay)
Local $aCall, $hResult = 0, $iError = 0
Local $ahDev[2] = [0, 0]
Local $tSIZE = _WinAPI_GetIconDimension($hIcon)
Local $hIL = DllCall('comctl32.dll', 'handle', 'ImageList_Create', 'int', DllStructGetData($tSIZE, 1),  'int', DllStructGetData($tSIZE, 2), 'uint', 0x0021, 'int', 2, 'int', 2)
If @error Or Not $hIL[0] Then Return SetError(@error + 10, @extended, 0)
Do
$ahDev[0] = _WinAPI_Create32BitHICON($hIcon)
If @error Then
$iError = @error + 100
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'ImageList_ReplaceIcon', 'handle', $hIL[0], 'int', -1, 'handle', $ahDev[0])
If @error Or ($aCall[0] = -1) Then
$iError = @error + 200
ExitLoop
EndIf
$ahDev[1] = _WinAPI_Create32BitHICON($hOverlay)
If @error Then
$iError = @error + 300
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'ImageList_ReplaceIcon', 'handle', $hIL[0], 'int', -1, 'handle', $ahDev[1])
If @error Or ($aCall[0] = -1) Then
$iError = @error + 400
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'bool', 'ImageList_SetOverlayImage', 'handle', $hIL[0], 'int', 1, 'int', 1)
If @error Or Not $aCall[0] Then
$iError = @error + 500
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'handle', 'ImageList_GetIcon', 'handle', $hIL[0], 'int', 0, 'uint', 0x00000100)
If @error Or Not $aCall[0] Then
$iError = @error + 600
ExitLoop
EndIf
$hResult = $aCall[0]
Until 1
DllCall('comctl32.dll', 'bool', 'ImageList_Destroy', 'handle', $hIL[0])
For $i = 0 To 1
If $ahDev[$i] Then
_WinAPI_DestroyIcon($ahDev[$i])
EndIf
Next
If Not $hResult Then Return SetError($iError, 0, 0)
Return $hResult
EndFunc
Func _WinAPI_AdjustBitmap($hBitmap, $iWidth, $iHeight, $iMode = 3, $tAdjustment = 0)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If $iWidth = -1 Then
$iWidth = DllStructGetData($tObj, 'bmWidth')
EndIf
If $iHeight = -1 Then
$iHeight = DllStructGetData($tObj, 'bmHeight')
EndIf
$aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', 0)
Local $hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleBitmap', 'handle', $hDC, 'int', $iWidth, 'int', $iHeight)
Local $hBmp = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBmp)
Local $hDestSv = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hSrcDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hBitmap)
Local $hSrcSv = $aCall[0]
If _WinAPI_SetStretchBltMode($hDestDC, $iMode) Then
Switch $iMode
Case 4
If IsDllStruct($tAdjustment) Then
If Not _WinAPI_SetColorAdjustment($hDestDC, $tAdjustment) Then
EndIf
EndIf
Case Else
EndSwitch
EndIf
$aCall = _WinAPI_StretchBlt($hDestDC, 0, 0, $iWidth, $iHeight, $hSrcDC, 0, 0, DllStructGetData($tObj, 'bmWidth'), DllStructGetData($tObj, 'bmHeight'), 0x00CC0020)
DllCall('user32.dll', 'int', 'ReleaseDC', 'hwnd', 0, 'handle', $hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hSrcSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hSrcDC)
If Not $aCall Then Return SetError(10, 0, 0)
Return $hBmp
EndFunc
Func _WinAPI_AlphaBlend($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iAlpha, $bAlpha = False)
Local $iBlend = BitOR(BitShift(Not ($bAlpha = False), -24), BitShift(BitAND($iAlpha, 0xFF), -16))
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiAlphaBlend', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'handle', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', $iBlend)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AngleArc($hDC, $iX, $iY, $iRadius, $nStartAngle, $nSweepAngle)
Local $aCall = DllCall('gdi32.dll', 'bool', 'AngleArc', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', $iRadius,  'float', $nStartAngle, 'float', $nSweepAngle)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Arc($hDC, $tRECT, $iXStartArc, $iYStartArc, $iXEndArc, $iYEndArc)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Arc', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4),  'int', $iXStartArc, 'int', $iYStartArc, 'int', $iXEndArc, 'int', $iYEndArc)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ArcTo($hDC, $tRECT, $iXRadial1, $iYRadial1, $iXRadial2, $iYRadial2)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ArcTo', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4),  'int', $iXRadial1, 'int', $iYRadial1, 'int', $iXRadial2, 'int', $iYRadial2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginPaint($hWnd, ByRef $tPAINTSTRUCT)
$tPAINTSTRUCT = DllStructCreate($tagPAINTSTRUCT)
Local $aCall = DllCall('user32.dll', 'handle', 'BeginPaint', 'hwnd', $hWnd, 'struct*', $tPAINTSTRUCT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'BeginPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseEnhMetaFile($hDC)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CloseEnhMetaFile', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseFigure($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'CloseFigure', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ColorAdjustLuma($iRGB, $iPercent, $bScale = True)
If $iRGB = -1 Then Return SetError(10, 0, -1)
If $bScale Then
$iPercent = Floor($iPercent * 10)
EndIf
Local $aCall = DllCall('shlwapi.dll', 'dword', 'ColorAdjustLuma', 'dword', __RGB($iRGB), 'int', $iPercent, 'bool', $bScale)
If @error Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_ColorHLSToRGB($iHue, $iLuminance, $iSaturation)
If Not $iSaturation Then $iHue = 160
Local $aCall = DllCall('shlwapi.dll', 'dword', 'ColorHLSToRGB', 'word', $iHue, 'word', $iLuminance, 'word', $iSaturation)
If @error Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_ColorRGBToHLS($iRGB, ByRef $iHue, ByRef $iLuminance, ByRef $iSaturation)
Local $aCall = DllCall('shlwapi.dll', 'none', 'ColorRGBToHLS', 'dword', __RGB($iRGB), 'word*', 0, 'word*', 0, 'word*', 0)
If @error Then Return SetError(@error, @extended, 0)
$iHue = $aCall[2]
$iLuminance = $aCall[3]
$iSaturation = $aCall[4]
Return 1
EndFunc
Func _WinAPI_CombineTransform($tXFORM1, $tXFORM2)
Local $tXFORM = DllStructCreate($tagXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'CombineTransform', 'struct*', $tXFORM, 'struct*', $tXFORM1, 'struct*', $tXFORM2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tXFORM
EndFunc
Func _WinAPI_CompressBitmapBits($hBitmap, ByRef $pBuffer, $iCompression = 0, $iQuality = 100)
If Not __DLL('gdiplus.dll') Then Return SetError(103, 0, 0)
Local $aSize[2], $iCount, $iFormat, $iLength, $sMime, $aCall, $hDC, $hSv, $hMem, $tBits, $tData, $pData, $iError = 1
Local $hSource = 0, $hImage = 0, $hToken = 0, $pStream = 0, $tParam = 0
Local $tDIB = DllStructCreate($tagDIBSECTION)
Do
Switch $iCompression
Case 0
$sMime = 'image/png'
Case 1
$sMime = 'image/jpeg'
Case Else
$iError = 10
ExitLoop
EndSwitch
While $hBitmap
If Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB) Then
$iError = 11
ExitLoop 2
EndIf
If (DllStructGetData($tDIB, 'bmBitsPixel') = 32) And (Not DllStructGetData($tDIB, 'biCompression')) Then
$iError = 12
ExitLoop
EndIf
If $hSource Then
$iError = 13
ExitLoop 2
EndIf
$hSource = _WinAPI_CreateDIB(DllStructGetData($tDIB, 'bmWidth'), DllStructGetData($tDIB, 'bmHeight'))
If Not $hSource Then
$iError = @error + 100
ExitLoop 2
EndIf
$hDC = _WinAPI_CreateCompatibleDC(0)
$hSv = _WinAPI_SelectObject($hDC, $hSource)
If _WinAPI_DrawBitmap($hDC, 0, 0, $hBitmap) Then
$hBitmap = $hSource
Else
$iError = @error + 200
$hBitmap = 0
EndIf
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
WEnd
If Not $hBitmap Then
ExitLoop
EndIf
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tDIB, $i + 2)
Next
$tBits = DllStructCreate('byte[' & ($aSize[0] * $aSize[1] * 4) & ']')
If Not _WinAPI_GetBitmapBits($hBitmap, DllStructGetSize($tBits), $tBits) Then
$iError = @error + 300
ExitLoop
EndIf
$tData = DllStructCreate($tagGDIPSTARTUPINPUT)
DllStructSetData($tData, "Version", 1)
$aCall = DllCall('gdiplus.dll', 'int', 'GdiplusStartup', 'ulong_ptr*', 0, 'struct*', $tData, 'ptr', 0)
If @error Or $aCall[0] Then
$iError = @error + 400
ExitLoop
EndIf
If _WinAPI_IsAlphaBitmap($hBitmap) Then
$iFormat = 0x0026200A
Else
$iFormat = 0x00022009
EndIf
$hToken = $aCall[1]
$aCall = DllCall('gdiplus.dll', 'int', 'GdipCreateBitmapFromScan0', 'int', $aSize[0], 'int', $aSize[1],  'uint', $aSize[0] * 4, 'int', $iFormat, 'struct*', $tBits, 'ptr*', 0)
If @error Or $aCall[0] Then
$iError = @error + 500
ExitLoop
EndIf
$hImage = $aCall[6]
$aCall = DllCall('gdiplus.dll', 'int', 'GdipGetImageEncodersSize', 'uint*', 0, 'uint*', 0)
If @error Or $aCall[0] Then
$iError = @error + 600
ExitLoop
EndIf
$iCount = $aCall[1]
$tData = DllStructCreate('byte[' & $aCall[2] & ']')
If @error Then
$iError = @error + 700
ExitLoop
EndIf
$pData = DllStructGetPtr($tData)
$aCall = DllCall('gdiplus.dll', 'int', 'GdipGetImageEncoders', 'uint', $iCount, 'uint', $aCall[2], 'struct*', $tData)
If @error Or $aCall[0] Then
$iError = @error + 800
ExitLoop
EndIf
Local $tCodec, $pEncoder = 0
For $i = 1 To $iCount
$tCodec = DllStructCreate($tagGDIPIMAGECODECINFO, $pData)
If Not StringInStr(_WinAPI_GetString(DllStructGetData($tCodec, 'MimeType')), $sMime) Then
$pData += DllStructGetSize($tagGDIPIMAGECODECINFO)
Else
$pEncoder = $pData
$iError = 0
ExitLoop
EndIf
Next
If Not $pEncoder Then
$iError = 15
ExitLoop
EndIf
Switch $iCompression
Case 0
Case 1
Local Const $tagENCODERPARAMETER = 'byte[16] GUID;ulong NumberOfValues;dword Type;ptr pValue'
$tParam = DllStructCreate('dword Count;' & $tagENCODERPARAMETER & ';ulong Quality')
DllStructSetData($tParam, 'Count', 1)
DllStructSetData($tParam, 'NumberOfValues', 1)
DllStructSetData($tParam, 'Type', 4)
DllStructSetData($tParam, 'pValue', DllStructGetPtr($tParam, 'Quality'))
DllStructSetData($tParam, 'Quality', $iQuality)
$aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', '{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}',  'ptr', DllStructGetPtr($tParam, 2))
If @error Or $aCall[0] Then
$tParam = 0
EndIf
EndSwitch
$pStream = _WinAPI_CreateStreamOnHGlobal()
$aCall = DllCall('gdiplus.dll', 'int', 'GdipSaveImageToStream', 'handle', $hImage, 'ptr', $pStream,  'ptr', $pEncoder, 'struct*', $tParam)
If @error Or $aCall[0] Then
$iError = @error + 900
ExitLoop
EndIf
$hMem = _WinAPI_GetHGlobalFromStream($pStream)
$aCall = DllCall('kernel32.dll', 'ulong_ptr', 'GlobalSize', 'handle', $hMem)
If @error Or Not $aCall[0] Then
$iError = @error + 1000
ExitLoop
EndIf
$iLength = $aCall[0]
$aCall = DllCall('kernel32.dll', 'ptr', 'GlobalLock', 'handle', $hMem)
If @error Or Not $aCall[0] Then
$iError = @error + 1100
ExitLoop
EndIf
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 1)
If Not @error Then
_WinAPI_MoveMemory($pBuffer, $aCall[0], $iLength)
Else
$iError = @error + 1300
EndIf
Until 1
If $pStream Then
_WinAPI_ReleaseStream($pStream)
EndIf
If $hImage Then
DllCall('gdiplus.dll', 'int', 'GdipDisposeImage', 'handle', $hImage)
EndIf
If $hToken Then
DllCall('gdiplus.dll', 'none', 'GdiplusShutdown', 'ulong_ptr', $hToken)
EndIf
If $hSource Then
_WinAPI_DeleteObject($hSource)
EndIf
If $iError Then Return SetError($iError, 0, 0)
Return $iLength
EndFunc
Func _WinAPI_CopyEnhMetaFile($hEmf, $sFilePath = '')
If Not StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sFilePath = Null
Local $aCall = DllCall('gdi32.dll', 'handle', 'CopyEnhMetaFileW', 'handle', $hEmf, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyRect($tRECT)
Local $tData = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'CopyRect', 'struct*', $tData, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then SetError(@error + 10, @extended, 0)
Return $tData
EndFunc
Func _WinAPI_Create32BitHBITMAP($hIcon, $bDib = False, $bDelete = False)
Local $hBitmap = 0
Local $aDIB[2] = [0, 0]
Local $hTemp = _WinAPI_Create32BitHICON($hIcon)
If @error Then Return SetError(@error, @extended, 0)
Local $iError = 0
Do
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hTemp, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then
$iError = @error + 10
ExitLoop
EndIf
For $i = 0 To 1
$aDIB[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
Local $tBITMAP = DllStructCreate($tagBITMAP)
If Not _WinAPI_GetObject($aDIB[0], DllStructGetSize($tBITMAP), $tBITMAP) Then
$iError = @error + 20
ExitLoop
EndIf
If $bDib Then
$hBitmap = _WinAPI_CreateDIB(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'))
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
_WinAPI_DrawIconEx($hDC, 0, 0, $hTemp)
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Else
$hBitmap = $aDIB[1]
$aDIB[1] = 0
EndIf
Until 1
For $i = 0 To 1
If $aDIB[$i] Then
_WinAPI_DeleteObject($aDIB[$i])
EndIf
Next
_WinAPI_DestroyIcon($hTemp)
If $iError Then Return SetError($iError, 0, 0)
If Not $hBitmap Then Return SetError(12, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hBitmap
EndFunc
Func _WinAPI_CreateBitmapIndirect(ByRef $tBITMAP)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateBitmapIndirect', 'struct*', $tBITMAP)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateBrushIndirect($iStyle, $iRGB, $iHatch = 0)
Local $tLOGBRUSH = DllStructCreate($tagLOGBRUSH)
DllStructSetData($tLOGBRUSH, 1, $iStyle)
DllStructSetData($tLOGBRUSH, 2, __RGB($iRGB))
DllStructSetData($tLOGBRUSH, 3, $iHatch)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateBrushIndirect', 'struct*', $tLOGBRUSH)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateColorAdjustment($iFlags = 0, $iIlluminant = 0, $iGammaR = 10000, $iGammaG = 10000, $iGammaB = 10000, $iBlack = 0, $iWhite = 10000, $iContrast = 0, $iBrightness = 0, $iColorfulness = 0, $iTint = 0)
Local $tCA = DllStructCreate($tagCOLORADJUSTMENT)
DllStructSetData($tCA, 1, DllStructGetSize($tCA))
DllStructSetData($tCA, 2, $iFlags)
DllStructSetData($tCA, 3, $iIlluminant)
DllStructSetData($tCA, 4, $iGammaR)
DllStructSetData($tCA, 5, $iGammaG)
DllStructSetData($tCA, 6, $iGammaB)
DllStructSetData($tCA, 7, $iBlack)
DllStructSetData($tCA, 8, $iWhite)
DllStructSetData($tCA, 9, $iContrast)
DllStructSetData($tCA, 10, $iBrightness)
DllStructSetData($tCA, 11, $iColorfulness)
DllStructSetData($tCA, 12, $iTint)
Return $tCA
EndFunc
Func _WinAPI_CreateCompatibleBitmapEx($hDC, $iWidth, $iHeight, $iRGB)
Local $hBrush = _WinAPI_CreateBrushIndirect(0, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleBitmap', 'handle', $hDC, 'int', $iWidth, 'int', $iHeight)
Local $hBmp = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBmp)
Local $hDestSv = $aCall[0]
Local $tRECT = _WinAPI_CreateRectEx(0, 0, $iWidth, $iHeight)
Local $iError = 0
$aCall = DllCall('user32.dll', 'int', 'FillRect', 'handle', $hDestDC, 'struct*', $tRECT, 'handle', $hBrush)
If @error Or Not $aCall[0] Then
$iError = @error + 10
_WinAPI_DeleteObject($hBmp)
EndIf
_WinAPI_DeleteObject($hBrush)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
If $iError Then Return SetError($iError, 0, 0)
Return $hBmp
EndFunc
Func _WinAPI_CreateDIBitmap($hDC, ByRef $tBITMAPINFO, $iUsage, $pBits = 0)
Local $iInit = 0
If $pBits Then
$iInit = 0x04
EndIf
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateDIBitmap', 'handle', $hDC, 'struct*', $tBITMAPINFO, 'dword', $iInit, 'struct*', $pBits,  'struct*', $tBITMAPINFO, 'uint', $iUsage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateEllipticRgn($tRECT)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateEllipticRgnIndirect', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateEnhMetaFile($hDC = 0, $tRECT = 0, $bPixels = False, $sFilePath = '', $sDescription = '')
If Not StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sFilePath = Null
Local $tData = 0, $aData = StringSplit($sDescription, '|', $STR_NOCOUNT)
If UBound($aData) < 2 Then
ReDim $aData[2]
$aData[1] = ''
EndIf
For $i = 0 To 1
$aData[$i] = StringStripWS($aData[$i], $STR_STRIPLEADING + $STR_STRIPTRAILING)
Next
If ($aData[0]) Or ($aData[1]) Then
$tData = _WinAPI_ArrayToStruct($aData)
EndIf
Local $iXp, $iYp, $iXm, $iYm, $hRef = 0
If $bPixels And (IsDllStruct($tRECT)) Then
If Not $hDC Then
$hRef = _WinAPI_GetDC(0)
EndIf
$iXp = _WinAPI_GetDeviceCaps($hRef, 8)
$iYp = _WinAPI_GetDeviceCaps($hRef, 10)
$iXm = _WinAPI_GetDeviceCaps($hRef, 4)
$iYm = _WinAPI_GetDeviceCaps($hRef, 6)
If $hRef Then
_WinAPI_ReleaseDC(0, $hRef)
EndIf
For $i = 1 To 3 Step 2
DllStructSetData($tRECT, $i, Round(DllStructGetData($tRECT, $i) * $iXm / $iXp * 100))
Next
For $i = 2 To 4 Step 2
DllStructSetData($tRECT, $i, Round(DllStructGetData($tRECT, $i) * $iYm / $iYp * 100))
Next
EndIf
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateEnhMetaFileW', 'handle', $hDC, 'wstr', $sFilePath, 'struct*', $tRECT,  'struct*', $tData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFontEx($iHeight, $iWidth = 0, $iEscapement = 0, $iOrientation = 0, $iWeight = 400, $bItalic = False, $bUnderline = False, $bStrikeOut = False, $iCharSet = 1, $iOutPrecision = 0, $iClipPrecision = 0, $iQuality = 0, $iPitchAndFamily = 0, $sFaceName = '', $iStyle = 0)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateFontW', 'int', $iHeight, 'int', $iWidth, 'int', $iEscapement,  'int', $iOrientation, 'int', $iWeight, 'dword', $bItalic, 'dword', $bUnderline, 'dword', $bStrikeOut,  'dword', $iCharSet, 'dword', $iOutPrecision, 'dword', $iClipPrecision, 'dword', $iQuality,  'dword', $iPitchAndFamily, 'wstr', _WinAPI_GetFontName($sFaceName, $iStyle, $iCharSet))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateNullRgn()
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateRectRgn', 'int', 0, 'int', 0, 'int', 0, 'int', 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreatePen($iPenStyle, $iWidth, $iColor)
Local $aCall = DllCall("gdi32.dll", "handle", "CreatePen", "int", $iPenStyle, "int", $iWidth, "INT", $iColor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreatePolygonRgn(Const ByRef $aPoint, $iStart = 0, $iEnd = -1, $iMode = 1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, 0)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'int[2];'
Next
Local $tData = DllStructCreate($tagStruct)
Local $iCount = 1
For $i = $iStart To $iEnd
For $j = 0 To 1
DllStructSetData($tData, $iCount, $aPoint[$i][$j], $j + 1)
Next
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreatePolygonRgn', 'struct*', $tData, 'int', $iCount - 1, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRectRgnIndirect($tRECT)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateRectRgnIndirect', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateSolidBitmap($hWnd, $iColor, $iWidth, $iHeight, $bRGB = 1)
Local $hDC = _WinAPI_GetDC($hWnd)
Local $hDestDC = _WinAPI_CreateCompatibleDC($hDC)
Local $hBitmap = _WinAPI_CreateCompatibleBitmap($hDC, $iWidth, $iHeight)
Local $hOld = _WinAPI_SelectObject($hDestDC, $hBitmap)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, 0)
DllStructSetData($tRECT, 2, 0)
DllStructSetData($tRECT, 3, $iWidth)
DllStructSetData($tRECT, 4, $iHeight)
If $bRGB Then
$iColor = BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndIf
Local $hBrush = _WinAPI_CreateSolidBrush($iColor)
If Not _WinAPI_FillRect($hDestDC, $tRECT, $hBrush) Then
_WinAPI_DeleteObject($hBitmap)
$hBitmap = 0
EndIf
_WinAPI_DeleteObject($hBrush)
_WinAPI_ReleaseDC($hWnd, $hDC)
_WinAPI_SelectObject($hDestDC, $hOld)
_WinAPI_DeleteDC($hDestDC)
If Not $hBitmap Then Return SetError(1, 0, 0)
Return $hBitmap
EndFunc
Func _WinAPI_CreateTransform($nM11 = 1, $nM12 = 0, $nM21 = 0, $nM22 = 1, $nDX = 0, $nDY = 0)
Local $tXFORM = DllStructCreate($tagXFORM)
DllStructSetData($tXFORM, 1, $nM11)
DllStructSetData($tXFORM, 2, $nM12)
DllStructSetData($tXFORM, 3, $nM21)
DllStructSetData($tXFORM, 4, $nM22)
DllStructSetData($tXFORM, 5, $nDX)
DllStructSetData($tXFORM, 6, $nDY)
Return $tXFORM
EndFunc
Func _WinAPI_DeleteEnhMetaFile($hEmf)
Local $aCall = DllCall('gdi32.dll', 'bool', 'DeleteEnhMetaFile', 'handle', $hEmf)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DPtoLP($hDC, ByRef $tPOINT, $iCount = 1)
Local $aCall = DllCall('gdi32.dll', 'bool', 'DPtoLP', 'handle', $hDC, 'struct*', $tPOINT, 'int', $iCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawAnimatedRects($hWnd, $tRectFrom, $tRectTo)
Local $aCall = DllCall('user32.dll', 'bool', 'DrawAnimatedRects', 'hwnd', $hWnd, 'int', 3, 'struct*', $tRectFrom,  'struct*', $tRectTo)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawBitmap($hDC, $iX, $iY, $hBitmap, $iRop = 0x00CC0020)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', 0)
Local $_hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $_hDC)
Local $hSrcDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hBitmap)
Local $hSrcSv = $aCall[0]
Local $iError = 0
$aCall = DllCall('gdi32.dll', 'int', 'BitBlt', 'hwnd', $hDC, 'int', $iX, 'int', $iY, 'int', DllStructGetData($tObj, 'bmWidth'), 'int', DllStructGetData($tObj, 'bmHeight'), 'hwnd', $hSrcDC, 'int', 0, 'int', 0, 'int', $iRop)
If @error Or Not $aCall[0] Then
$iError = @error + 1
EndIf
DllCall('user32.dll', 'int', 'ReleaseDC', 'hwnd', 0, 'handle', $_hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hSrcSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hSrcDC)
If $iError Then Return SetError(10, 0, 0)
Return 1
EndFunc
Func _WinAPI_DrawFocusRect($hDC, $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'DrawFocusRect', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawLine($hDC, $iX1, $iY1, $iX2, $iY2)
_WinAPI_MoveTo($hDC, $iX1, $iY1)
If @error Then Return SetError(@error, @extended, False)
_WinAPI_LineTo($hDC, $iX2, $iY2)
If @error Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _WinAPI_DrawShadowText($hDC, $sText, $iRGBText, $iRGBShadow, $iXOffset = 0, $iYOffset = 0, $tRECT = 0, $iFlags = 0)
Local $aCall
If Not IsDllStruct($tRECT) Then
$tRECT = DllStructCreate($tagRECT)
$aCall = DllCall('user32.dll', 'bool', 'GetClientRect', 'hwnd', _WinAPI_WindowFromDC($hDC), 'struct*', $tRECT)
If @error Then Return SetError(@error + 10, @extended, 0)
If Not $aCall[0] Then Return SetError(10, 0, 0)
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'DrawShadowText', 'handle', $hDC, 'wstr', $sText, 'uint', -1, 'struct*', $tRECT,  'dword', $iFlags, 'int', __RGB($iRGBText), 'int', __RGB($iRGBShadow), 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DwmDefWindowProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('dwmapi.dll', 'bool', 'DwmDefWindowProc', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam, 'lparam', $lParam, 'lresult*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[5]
EndFunc
Func _WinAPI_DwmEnableBlurBehindWindow($hWnd, $bEnable = True, $bTransition = False, $hRgn = 0)
Local $tBLURBEHIND = DllStructCreate('dword;bool;handle;bool')
Local $iFlags = 0
If $hRgn Then
$iFlags += 2
DllStructSetData($tBLURBEHIND, 3, $hRgn)
EndIf
DllStructSetData($tBLURBEHIND, 1, BitOR($iFlags, 0x05))
DllStructSetData($tBLURBEHIND, 2, $bEnable)
DllStructSetData($tBLURBEHIND, 4, $bTransition)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmEnableBlurBehindWindow', 'hwnd', $hWnd, 'struct*', $tBLURBEHIND)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmEnableComposition($bEnable)
If $bEnable Then $bEnable = 1
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmEnableComposition', 'uint', $bEnable)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmExtendFrameIntoClientArea($hWnd, $tMARGINS = 0)
If Not IsDllStruct($tMARGINS) Then
$tMARGINS = _WinAPI_CreateMargins(-1, -1, -1, -1)
EndIf
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmExtendFrameIntoClientArea', 'hwnd', $hWnd, 'struct*', $tMARGINS)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmGetColorizationColor()
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmGetColorizationColor', 'dword*', 0, 'bool*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return SetExtended($aCall[2], $aCall[1])
EndFunc
Func _WinAPI_DwmGetColorizationParameters()
Local $tDWMCP = DllStructCreate($tagDWM_COLORIZATION_PARAMETERS)
Local $aCall = DllCall('dwmapi.dll', 'uint', 127, 'struct*', $tDWMCP)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tDWMCP
EndFunc
Func _WinAPI_DwmGetWindowAttribute($hWnd, $iAttribute)
Local $tagStruct
Switch $iAttribute
Case 5, 9
$tagStruct = $tagRECT
Case 1
$tagStruct = 'uint'
Case Else
Return SetError(11, 0, 0)
EndSwitch
Local $tData = DllStructCreate($tagStruct)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmGetWindowAttribute', 'hwnd', $hWnd, 'dword', $iAttribute,  'struct*', $tData, 'dword', DllStructGetSize($tData))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Switch $iAttribute
Case 1
Return DllStructGetData($tData, 1)
Case Else
Return $tData
EndSwitch
EndFunc
Func _WinAPI_DwmInvalidateIconicBitmaps($hWnd)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmInvalidateIconicBitmaps', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmIsCompositionEnabled()
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmIsCompositionEnabled', 'bool*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _WinAPI_DwmQueryThumbnailSourceSize($hThumbnail)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmQueryThumbnailSourceSize', 'handle', $hThumbnail, 'struct*', $tSIZE)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSIZE
EndFunc
Func _WinAPI_DwmRegisterThumbnail($hDestination, $hSource)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmRegisterThumbnail', 'hwnd', $hDestination, 'hwnd', $hSource, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_DwmSetColorizationParameters($tDWMCP)
Local $aCall = DllCall('dwmapi.dll', 'uint', 131, 'struct*', $tDWMCP, 'uint', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetIconicLivePreviewBitmap($hWnd, $hBitmap, $bFrame = False, $tClient = 0)
Local $iFlags
If $bFrame Then
$iFlags = 0x00000001
Else
$iFlags = 0
EndIf
Local $aCall = DllCall('dwmapi.dll', 'uint', 'DwmSetIconicLivePreviewBitmap', 'hwnd', $hWnd, 'handle', $hBitmap,  'struct*', $tClient, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetIconicThumbnail($hWnd, $hBitmap, $bFrame = False)
Local $iFlags
If $bFrame Then
$iFlags = 0x00000001
Else
$iFlags = 0
EndIf
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmSetIconicThumbnail', 'hwnd', $hWnd, 'handle', $hBitmap, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetWindowAttribute($hWnd, $iAttribute, $iData)
Switch $iAttribute
Case 2, 3, 4, 6, 7, 8, 10, 11, 12
Case Else
Return SetError(1, 0, 0)
EndSwitch
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmSetWindowAttribute', 'hwnd', $hWnd, 'dword', $iAttribute,  'dword*', $iData, 'dword', 4)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmUnregisterThumbnail($hThumbnail)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmUnregisterThumbnail', 'handle', $hThumbnail)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmUpdateThumbnailProperties($hThumbnail, $bVisible = True, $bClientAreaOnly = False, $iOpacity = 255, $tRectDest = 0, $tRectSrc = 0)
Local Const $tagDWM_THUMBNAIL_PROPERTIES = 'struct;dword dwFlags;int rcDestination[4];int rcSource[4];byte opacity;bool opacity;bool fSourceClientAreaOnly;endstruct'
Local $tTHUMBNAILPROPERTIES = DllStructCreate($tagDWM_THUMBNAIL_PROPERTIES)
Local $tSIZE, $iFlags = 0
If Not IsDllStruct($tRectDest) Then
$tSIZE = _WinAPI_DwmQueryThumbnailSourceSize($hThumbnail)
If @error Then
Return SetError(@error + 10, @extended, 0)
EndIf
$tRectDest = _WinAPI_CreateRectEx(0, 0, DllStructGetData($tSIZE, 1), DllStructGetData($tSIZE, 2))
EndIf
For $i = 1 To 4
DllStructSetData($tTHUMBNAILPROPERTIES, 2, DllStructGetData($tRectDest, $i), $i)
Next
If IsDllStruct($tRectSrc) Then
$iFlags += 2
For $i = 1 To 4
DllStructSetData($tTHUMBNAILPROPERTIES, 3, DllStructGetData($tRectSrc, $i), $i)
Next
EndIf
DllStructSetData($tTHUMBNAILPROPERTIES, 1, BitOR($iFlags, 0x1D))
DllStructSetData($tTHUMBNAILPROPERTIES, 4, $iOpacity)
DllStructSetData($tTHUMBNAILPROPERTIES, 5, $bVisible)
DllStructSetData($tTHUMBNAILPROPERTIES, 6, $bClientAreaOnly)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmUpdateThumbnailProperties', 'handle', $hThumbnail,  'struct*', $tTHUMBNAILPROPERTIES)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_Ellipse($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Ellipse', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EndPaint($hWnd, ByRef $tPAINTSTRUCT)
Local $aCall = DllCall('user32.dll', 'bool', 'EndPaint', 'hwnd', $hWnd, 'struct*', $tPAINTSTRUCT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EndPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'EndPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumDisplayMonitors($hDC = 0, $tRECT = 0)
Local $hEnumProc = DllCallbackRegister('__EnumDisplayMonitorsProc', 'bool', 'handle;handle;ptr;lparam')
Dim $__g_vEnum[101][2] = [[0]]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDisplayMonitors', 'handle', $hDC, 'struct*', $tRECT,  'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumDisplaySettings($sDevice, $iMode)
If Not StringStripWS($sDevice, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDevice = Null
Local $tDEVMODE = DllStructCreate($tagDEVMODE_DISPLAY)
DllStructSetData($tDEVMODE, 'Size', DllStructGetSize($tDEVMODE))
DllStructSetData($tDEVMODE, 'DriverExtra', 0)
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDisplaySettingsW', 'wstr', $sDevice, 'dword', $iMode,  'struct*', $tDEVMODE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
$aRet[0] = DllStructGetData($tDEVMODE, 'PelsWidth')
$aRet[1] = DllStructGetData($tDEVMODE, 'PelsHeight')
$aRet[2] = DllStructGetData($tDEVMODE, 'BitsPerPel')
$aRet[3] = DllStructGetData($tDEVMODE, 'DisplayFrequency')
$aRet[4] = DllStructGetData($tDEVMODE, 'DisplayFlags')
Return $aRet
EndFunc
Func _WinAPI_EnumFontFamilies($hDC = 0, $sFaceName = '', $iCharSet = 1, $iFontType = 0x07, $sPattern = '', $bExclude = False)
Local $tLOGFONT = DllStructCreate($tagLOGFONT)
Local $tPattern = DllStructCreate('uint;uint;ptr;wchar[' & (StringLen($sPattern) + 1) & ']')
DllStructSetData($tPattern, 1, $iFontType)
If Not $sPattern Then
DllStructSetData($tPattern, 2, 0)
DllStructSetData($tPattern, 3, 0)
Else
DllStructSetData($tPattern, 2, $bExclude)
DllStructSetData($tPattern, 3, DllStructGetPtr($tPattern, 4))
DllStructSetData($tPattern, 4, $sPattern)
EndIf
DllStructSetData($tLOGFONT, 9, $iCharSet)
DllStructSetData($tLOGFONT, 13, 0)
DllStructSetData($tLOGFONT, 14, StringLeft($sFaceName, 31))
Local $hCDC
If Not $hDC Then
$hCDC = _WinAPI_CreateCompatibleDC(0)
Else
$hCDC = $hDC
EndIf
Dim $__g_vEnum[101][8] = [[0]]
Local $hEnumProc = DllCallbackRegister('__EnumFontFamiliesProc', 'int', 'ptr;ptr;dword;PTR')
Local $aCall = DllCall('gdi32.dll', 'int', 'EnumFontFamiliesExW', 'handle', $hCDC, 'struct*', $tLOGFONT,  'ptr', DllCallbackGetPtr($hEnumProc), 'struct*', $tPattern, 'dword', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If Not $hDC Then
_WinAPI_DeleteDC($hCDC)
EndIf
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EqualRect($tRECT1, $tRECT2)
Local $aCall = DllCall('user32.dll', 'bool', 'EqualRect', 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EqualRgn($hRgn1, $hRgn2)
Local $aCall = DllCall('gdi32.dll', 'bool', 'EqualRgn', 'handle', $hRgn1, 'handle', $hRgn2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExcludeClipRect($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'ExcludeClipRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtCreatePen($iPenStyle, $iWidth, $iBrushStyle, $iRGB, $iHatch = 0, $aUserStyle = 0, $iStart = 0, $iEnd = -1)
Local $iCount = 0, $tStyle = 0
If BitAND($iPenStyle, 0xFF) = 7 Then
If __CheckErrorArrayBounds($aUserStyle, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$tStyle = DllStructCreate('dword[' & ($iEnd - $iStart + 1) & ']')
For $i = $iStart To $iEnd
DllStructSetData($tStyle, 1, $aUserStyle[$i], $iCount + 1)
$iCount += 1
Next
EndIf
Local $tLOGBRUSH = DllStructCreate($tagLOGBRUSH)
DllStructSetData($tLOGBRUSH, 1, $iBrushStyle)
DllStructSetData($tLOGBRUSH, 2, __RGB($iRGB))
DllStructSetData($tLOGBRUSH, 3, $iHatch)
Local $aCall = DllCall('gdi32.dll', 'handle', 'ExtCreatePen', 'dword', $iPenStyle, 'dword', $iWidth, 'struct*', $tLOGBRUSH,  'dword', $iCount, 'struct*', $tStyle)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtCreateRegion($tRGNDATA, $tXFORM = 0)
Local $aCall = DllCall('gdi32.dll', 'handle', 'ExtCreateRegion', 'struct*', $tXFORM, 'dword', DllStructGetSize($tRGNDATA),  'struct*', $tRGNDATA)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtFloodFill($hDC, $iX, $iY, $iRGB, $iType = 0)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ExtFloodFill', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', __RGB($iRGB),  'uint', $iType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtSelectClipRgn($hDC, $hRgn, $iMode = 5)
Local $aCall = DllCall('gdi32.dll', 'int', 'ExtSelectClipRgn', 'handle', $hDC, 'handle', $hRgn, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FillPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FillPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FillRgn($hDC, $hRgn, $hBrush)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FillRgn', 'handle', $hDC, 'handle', $hRgn, 'handle', $hBrush)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FlattenPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FlattenPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FrameRgn($hDC, $hRgn, $hBrush, $iWidth, $iHeight)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FrameRgn', 'handle', $hDC, 'handle', $hRgn, 'handle', $hBrush, 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GdiComment($hDC, $pBuffer, $iSize)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiComment', 'handle', $hDC, 'uint', $iSize, 'struct*', $pBuffer)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetArcDirection($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetArcDirection', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
If ($aCall[0] < 1) Or ($aCall[0] > 2) Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapBits($hBitmap, $iSize, $pBits)
Local $aCall = DllCall('gdi32.dll', 'long', 'GetBitmapBits', 'handle', $hBitmap, 'long', $iSize, 'struct*', $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapDimensionEx($hBitmap)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetBitmapDimensionEx', 'handle', $hBitmap, 'struct*', $tSIZE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetBkColor($hDC)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetBkColor', 'handle', $hDC)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetBoundsRect($hDC, $iFlags = 0)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetBoundsRect', 'handle', $hDC, 'struct*', $tRECT, 'uint', $iFlags)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended($aCall[0], $tRECT)
EndFunc
Func _WinAPI_GetBrushOrg($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetBrushOrgEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetBValue($iRGB)
Return BitShift(BitAND(__RGB($iRGB), 0xFF0000), 16)
EndFunc
Func _WinAPI_GetClipBox($hDC, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetClipBox', 'handle', $hDC, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then
$tRECT = 0
Return SetError(@error, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetClipRgn($hDC)
Local $hRgn = _WinAPI_CreateRectRgn(0, 0, 0, 0)
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'int', 'GetClipRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Or ($aCall[0] = -1) Then $iError = @error + 10
If $iError Or Not $aCall[0] Then
_WinAPI_DeleteObject($hRgn)
$hRgn = 0
EndIf
Return SetError($iError, 0, $hRgn)
EndFunc
Func _WinAPI_GetColorAdjustment($hDC)
Local $tAdjustment = DllStructCreate($tagCOLORADJUSTMENT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetColorAdjustment', 'handle', $hDC, 'struct*', $tAdjustment)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tAdjustment
EndFunc
Func _WinAPI_GetCurrentPosition($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetCurrentPositionEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetDeviceGammaRamp($hDC, ByRef $aRamp)
$aRamp = 0
Local $tData = DllStructCreate('word[256];word[256];word[256]')
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetDeviceGammaRamp', 'handle', $hDC, 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Dim $aRamp[256][3]
For $i = 0 To 2
For $j = 0 To 255
$aRamp[$j][$i] = DllStructGetData($tData, $i + 1, $j + 1)
Next
Next
Return 1
EndFunc
Func _WinAPI_GetDIBColorTable($hBitmap)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
Local $tPeak = DllStructCreate('dword[256]')
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetDIBColorTable', 'handle', $hDC, 'uint', 0, 'uint', 256, 'struct*', $tPeak)
If @error Or Not $aCall[0] Then $iError = @error + 10
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
If $iError Then Return SetError($iError, 0, 0)
Local $tData = DllStructCreate('dword[' & $aCall[0] & ']')
If @error Then Return SetError(@error + 20, @extended, 0)
_WinAPI_MoveMemory($tData, $aCall[4], 4 * $aCall[0])
Return SetExtended($aCall[0], $tData)
EndFunc
Func _WinAPI_GetDIBits($hDC, $hBitmap, $iStartScan, $iScanLines, $pBits, $tBI, $iUsage)
Local $aCall = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $hDC, "handle", $hBitmap, "uint", $iStartScan,  "uint", $iScanLines, "struct*", $pBits, "struct*", $tBI, "uint", $iUsage)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetEnhMetaFile($sFilePath)
Local $aCall = DllCall('gdi32.dll', 'handle', 'GetEnhMetaFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetEnhMetaFileBits($hEmf, ByRef $pBuffer)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileBits', 'handle', $hEmf, 'uint', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 50, @extended, 0)
$pBuffer = __HeapReAlloc($pBuffer, $aCall[0], 1)
If @error Then Return SetError(@error, @extended, 0)
$aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileBits', 'handle', $hEmf, 'uint', $aCall[0], 'ptr', $pBuffer)
If Not $aCall[0] Then Return SetError(60, 0, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetEnhMetaFileDescription($hEmf)
Local $tData = DllStructCreate('wchar[4096]')
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileDescriptionW', 'handle', $hEmf, 'uint', 4096, 'struct*', $tData)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error + 20, $aCall[0], 0)
If Not $aCall[0] Then Return 0
Local $aData = _WinAPI_StructToArray($tData)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[2]
For $i = 0 To 1
If $aData[0] > $i Then
$aRet[$i] = $aData[$i + 1]
Else
$aRet[$i] = ''
EndIf
Next
Return $aRet
EndFunc
Func _WinAPI_GetEnhMetaFileDimension($hEmf)
Local $tENHMETAHEADER = _WinAPI_GetEnhMetaFileHeader($hEmf)
If @error Then Return SetError(@error, @extended, 0)
Local $tSIZE = DllStructCreate($tagSIZE)
DllStructSetData($tSIZE, 1, Round((DllStructGetData($tENHMETAHEADER, 'rcFrame', 3) - DllStructGetData($tENHMETAHEADER, 'rcFrame', 1)) * DllStructGetData($tENHMETAHEADER, 'Device', 1) / DllStructGetData($tENHMETAHEADER, 'Millimeters', 1) / 100))
DllStructSetData($tSIZE, 2, Round((DllStructGetData($tENHMETAHEADER, 'rcFrame', 4) - DllStructGetData($tENHMETAHEADER, 'rcFrame', 2)) * DllStructGetData($tENHMETAHEADER, 'Device', 2) / DllStructGetData($tENHMETAHEADER, 'Millimeters', 2) / 100))
Return $tSIZE
EndFunc
Func _WinAPI_GetEnhMetaFileHeader($hEmf)
Local $tENHMETAHEADER = DllStructCreate($tagENHMETAHEADER)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileHeader', 'handle', $hEmf,  'uint', DllStructGetSize($tENHMETAHEADER), 'struct*', $tENHMETAHEADER)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended($aCall[0], $tENHMETAHEADER)
EndFunc
Func _WinAPI_GetFontName($sFaceName, $iStyle = 0, $iCharSet = 1)
If Not $sFaceName Then Return SetError(1, 0, '')
Local $iFlags = 0
If BitAND($iStyle, 0x01) Then
$iFlags += 0x00000020
EndIf
If BitAND($iStyle, 0x02) Then
$iFlags += 0x00000001
EndIf
If Not $iFlags Then
$iFlags = 0x00000040
EndIf
Local $tLOGFONT = DllStructCreate($tagLOGFONT)
DllStructSetData($tLOGFONT, 9, $iCharSet)
DllStructSetData($tLOGFONT, 13, 0)
DllStructSetData($tLOGFONT, 14, StringLeft($sFaceName, 31))
Local $tFN = DllStructCreate('dword;wchar[64]')
DllStructSetData($tFN, 1, $iFlags)
DllStructSetData($tFN, 2, '')
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hEnumProc = DllCallbackRegister('__EnumFontStylesProc', 'int', 'ptr;ptr;dword;lparam')
Local $sRet = ''
Local $aCall = DllCall('gdi32.dll', 'int', 'EnumFontFamiliesExW', 'handle', $hDC, 'struct*', $tLOGFONT,  'ptr', DllCallbackGetPtr($hEnumProc), 'struct*', $tFN, 'dword', 0)
If Not @error And Not $aCall[0] Then $sRet = DllStructGetData($tFN, 2)
DllCallbackFree($hEnumProc)
_WinAPI_DeleteDC($hDC)
If Not $sRet Then Return SetError(2, 0, '')
Return $sRet
EndFunc
Func _WinAPI_GetFontResourceInfo($sFont, $bForce = False, $iFlag = Default)
If $iFlag = Default Then
If $bForce Then
If Not _WinAPI_AddFontResourceEx($sFont, $FR_NOT_ENUM) Then Return SetError(@error + 20, @extended, '')
EndIf
Local $iError = 0
Local $aRet = DllCall('gdi32.dll', 'bool', 'GetFontResourceInfoW', 'wstr', $sFont, 'dword*', 4096, 'wstr', '', 'dword', 0x01)
If @error Or Not $aRet[0] Then $iError = @error + 10
If $bForce Then
_WinAPI_RemoveFontResourceEx($sFont, $FR_NOT_ENUM)
EndIf
If $iError Then Return SetError($iError, 0, '')
Return $aRet[3]
Else
If Not FileExists($sFont) Then
$sFont = RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders", "Fonts") & "\" & $sFont
If Not FileExists($sFont) Then Return SetError(31, 0, "")
EndIf
Local Const $hFile = _WinAPI_CreateFile($sFont, 2, 2, 2)
If Not $hFile Then Return SetError(32, _WinAPI_GetLastError(), "")
Local Const $iFile = FileGetSize($sFont)
Local Const $tBuffer = DllStructCreate("byte[" & $iFile + 1 & "]")
Local Const $pFile = DllStructGetPtr($tBuffer)
Local $iRead
_WinAPI_ReadFile($hFile, $pFile, $iFile, $iRead)
_WinAPI_CloseHandle($hFile)
Local $sTTFName = _WinAPI_GetFontMemoryResourceInfo($pFile, $iFlag)
If @error Then
If @error = 1 Then
$sTTFName = _WinAPI_GetFontResourceInfo($sFont, True)
Return SetError(@error, @extended, $sTTFName)
EndIf
Return SetError(33, @error, "")
EndIf
Return $sTTFName
EndIf
EndFunc
Func _WinAPI_GetFontMemoryResourceInfo($pMemory, $iFlag = 1)
Local Const $tagTT_OFFSET_TABLE = "USHORT uMajorVersion;USHORT uMinorVersion;USHORT uNumOfTables;USHORT uSearchRange;USHORT uEntrySelector;USHORT uRangeShift"
Local Const $tagTT_TABLE_DIRECTORY = "char szTag[4];ULONG uCheckSum;ULONG uOffset;ULONG uLength"
Local Const $tagTT_NAME_TABLE_HEADER = "USHORT uFSelector;USHORT uNRCount;USHORT uStorageOffset"
Local Const $tagTT_NAME_RECORD = "USHORT uPlatformID;USHORT uEncodingID;USHORT uLanguageID;USHORT uNameID;USHORT uStringLength;USHORT uStringOffset"
Local $tTTOffsetTable = DllStructCreate($tagTT_OFFSET_TABLE, $pMemory)
Local $iNumOfTables = _WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uNumOfTables"))
If Not (_WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uMajorVersion")) = 1 And  _WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uMinorVersion")) = 0) Then Return SetError(1, 0, "")
Local $iTblDirSize = DllStructGetSize(DllStructCreate($tagTT_TABLE_DIRECTORY))
Local $bFound = False, $iOffset, $tTblDir
For $i = 0 To $iNumOfTables - 1
$tTblDir = DllStructCreate($tagTT_TABLE_DIRECTORY, $pMemory + DllStructGetSize($tTTOffsetTable) + $i * $iTblDirSize)
If StringLeft(DllStructGetData($tTblDir, "szTag"), 4) = "name" Then
$bFound = True
$iOffset = _WinAPI_SwapDWord(DllStructGetData($tTblDir, "uOffset"))
ExitLoop
EndIf
Next
If Not $bFound Then Return SetError(2, 0, "")
Local $tNTHeader = DllStructCreate($tagTT_NAME_TABLE_HEADER, $pMemory + $iOffset)
Local $iNTHeaderSize = DllStructGetSize($tNTHeader)
Local $iNRCount = _WinAPI_SwapWord(DllStructGetData($tNTHeader, "uNRCount"))
Local $iStorageOffset = _WinAPI_SwapWord(DllStructGetData($tNTHeader, "uStorageOffset"))
Local $iTTRecordSize = DllStructGetSize(DllStructCreate($tagTT_NAME_RECORD))
Local $tResult, $sResult, $iStringLength = 0, $iStringOffset, $iEncodingID, $tTTRecord
For $i = 0 To $iNRCount - 1
$tTTRecord = DllStructCreate($tagTT_NAME_RECORD, $pMemory + $iOffset + $iNTHeaderSize + $i * $iTTRecordSize)
If @error Then ContinueLoop
If _WinAPI_SwapWord($tTTRecord.uNameID) = $iFlag Then
$iStringLength = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uStringLength"))
$iStringOffset = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uStringOffset"))
$iEncodingID = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uEncodingID"))
Local $sWchar = "char"
If $iEncodingID = 1 Then
$sWchar = "word"
$iStringLength /= 2
EndIf
If Not $iStringLength Then
$sResult = ""
ContinueLoop
EndIf
$tResult = DllStructCreate($sWchar & " szTTFName[" & $iStringLength & "]", $pMemory + $iOffset + $iStringOffset + $iStorageOffset)
If $iEncodingID = 1 Then
$sResult = ""
For $j = 1 To $iStringLength
$sResult &= ChrW(_WinAPI_SwapWord(DllStructGetData($tResult, 1, $j)))
Next
Else
$sResult = $tResult.szTTFName
EndIf
If StringLen($sResult) > 0 Then ExitLoop
EndIf
Next
Return $sResult
EndFunc
Func _WinAPI_GetGlyphOutline($hDC, $sChar, $iFormat, ByRef $pBuffer, $tMAT2 = 0)
Local $tGM = DllStructCreate($tagGLYPHMETRICS)
Local $aCall, $iLength = 0
If Not IsDllStruct($tMAT2) Then
$tMAT2 = DllStructCreate('short[8]')
DllStructSetData($tMAT2, 1, 1, 2)
DllStructSetData($tMAT2, 1, 1, 8)
EndIf
If $iFormat Then
$aCall = DllCall('gdi32.dll', 'dword', 'GetGlyphOutlineW', 'handle', $hDC, 'uint', AscW($sChar), 'uint', $iFormat,  'struct*', $tGM, 'dword', 0, 'ptr', 0, 'struct*', $tMAT2)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error + 10, @extended, 0)
$iLength = $aCall[0]
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 1)
If @error Then Return SetError(@error + 20, @extended, 0)
EndIf
$aCall = DllCall('gdi32.dll', 'dword', 'GetGlyphOutlineW', 'handle', $hDC, 'uint', AscW($sChar), 'uint', $iFormat,  'struct*', $tGM, 'dword', $iLength, 'ptr', $pBuffer, 'struct*', $tMAT2)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return SetExtended($iLength, $tGM)
EndFunc
Func _WinAPI_GetGraphicsMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetGraphicsMode', 'handle', $hDC)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetGValue($iRGB)
Return BitShift(BitAND(__RGB($iRGB), 0x00FF00), 8)
EndFunc
Func _WinAPI_GetMapMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetMapMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetMonitorInfo($hMonitor)
Local $tMIEX = DllStructCreate('dword;long[4];long[4];dword;wchar[32]')
DllStructSetData($tMIEX, 1, DllStructGetSize($tMIEX))
Local $aCall = DllCall('user32.dll', 'bool', 'GetMonitorInfoW', 'handle', $hMonitor, 'struct*', $tMIEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[4]
For $i = 0 To 1
$aRet[$i] = DllStructCreate($tagRECT)
_WinAPI_MoveMemory($aRet[$i], DllStructGetPtr($tMIEX, $i + 2), 16)
Next
$aRet[3] = DllStructGetData($tMIEX, 5)
Switch DllStructGetData($tMIEX, 4)
Case 1
$aRet[2] = 1
Case Else
$aRet[2] = 0
EndSwitch
Return $aRet
EndFunc
Func _WinAPI_GetOutlineTextMetrics($hDC)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetOutlineTextMetricsW', 'handle', $hDC, 'uint', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $tData = DllStructCreate('byte[' & $aCall[0] & ']')
Local $tOLTM = DllStructCreate($tagOUTLINETEXTMETRIC, DllStructGetPtr($tData))
$aCall = DllCall('gdi32.dll', 'uint', 'GetOutlineTextMetricsW', 'handle', $hDC, 'uint', $aCall[0], 'struct*', $tData)
If Not $aCall[0] Then Return SetError(20, 0, 0)
Return $tOLTM
EndFunc
Func _WinAPI_GetPixel($hDC, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetPixel', 'handle', $hDC, 'int', $iX, 'int', $iY)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetPolyFillMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetPolyFillMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPosFromRect($tRECT)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tRECT, $i + 1)
If @error Then Return SetError(@error, @extended, 0)
Next
For $i = 2 To 3
$aRet[$i] -= $aRet[$i - 2]
Next
Return $aRet
EndFunc
Func _WinAPI_GetRegionData($hRgn, ByRef $tRGNDATA)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetRegionData', 'handle', $hRgn, 'dword', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then
$tRGNDATA = 0
Return SetError(@error, @extended, False)
EndIf
$tRGNDATA = DllStructCreate($tagRGNDATAHEADER)
Local $iRectSize = $aCall[0] - DllStructGetSize($tRGNDATA)
If $iRectSize > 0 Then $tRGNDATA = DllStructCreate($tagRGNDATAHEADER & ';byte[' & $iRectSize & ']')
$aCall = DllCall('gdi32.dll', 'dword', 'GetRegionData', 'handle', $hRgn, 'dword', $aCall[0], 'struct*', $tRGNDATA)
If Not $aCall[0] Then $tRGNDATA = 0
Return $aCall[0]
EndFunc
Func _WinAPI_GetRgnBox($hRgn, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetRgnBox', 'handle', $hRgn, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then
$tRECT = 0
Return SetError(@error, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetROP2($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetROP2', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetRValue($iRGB)
Return BitAND(__RGB($iRGB), 0x0000FF)
EndFunc
Func _WinAPI_GetStretchBltMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetStretchBltMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTabbedTextExtent($hDC, $sText, $aTab = 0, $iStart = 0, $iEnd = -1)
Local $iTab, $iCount
If Not IsArray($aTab) Then
If $aTab Then
$iTab = $aTab
Dim $aTab[1] = [$iTab]
$iStart = 0
$iEnd = 0
$iCount = 1
Else
$iCount = 0
EndIf
Else
$iCount = 1
EndIf
Local $tTab = 0
If $iCount Then
If __CheckErrorArrayBounds($aTab, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
$tTab = DllStructCreate('uint[' & $iCount & ']')
$iTab = 1
For $i = $iStart To $iEnd
DllStructSetData($tTab, 1, $aTab[$i], $iTab)
$iTab += 1
Next
EndIf
Local $aCall = DllCall('user32.dll', 'dword', 'GetTabbedTextExtentW', 'handle', $hDC, 'wstr', $sText, 'int', StringLen($sText), 'int', $iCount, 'struct*', $tTab)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
Return _WinAPI_CreateSize(_WinAPI_LoWord($aCall[0]), _WinAPI_HiWord($aCall[0]))
EndFunc
Func _WinAPI_GetTextAlign($hDC)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetTextAlign', 'handle', $hDC)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextCharacterExtra($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetTextCharacterExtra', 'handle', $hDC)
If @error Or ($aCall[0] = 0x8000000) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextFace($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetTextFaceW', 'handle', $hDC, 'int', 2048, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[3]
EndFunc
Func _WinAPI_GetUDFColorMode()
Return Number($__g_iRGBMode)
EndFunc
Func _WinAPI_GetUpdateRect($hWnd, $bErase = True)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetUpdateRect', 'hwnd', $hWnd, 'struct*', $tRECT, 'bool', $bErase)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetUpdateRgn($hWnd, $hRgn, $bErase = True)
Local $aCall = DllCall('user32.dll', 'int', 'GetUpdateRgn', 'hwnd', $hWnd, 'handle', $hRgn, 'bool', $bErase)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowExt($hDC)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWindowExtEx', 'handle', $hDC, 'struct*', $tSIZE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetWindowOrg($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWindowOrgEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetWindowRgnBox($hWnd, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetWindowRgnBox', 'hwnd', $hWnd, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWorldTransform($hDC)
Local $tXFORM = DllStructCreate($tagXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWorldTransform', 'handle', $hDC, 'struct*', $tXFORM)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tXFORM
EndFunc
Func _WinAPI_GradientFill($hDC, Const ByRef $aVertex, $iStart = 0, $iEnd = -1, $bRotate = False)
If __CheckErrorArrayBounds($aVertex, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aVertex, $UBOUND_COLUMNS) < 3 Then Return SetError(13, 0, 0)
Local $iPoint = $iEnd - $iStart + 1
If $iPoint > 3 Then
$iEnd = $iStart + 2
$iPoint = 3
EndIf
Local $iMode
Switch $iPoint
Case 2
$iMode = Number(Not $bRotate)
Case 3
$iMode = 2
Case Else
Return SetError(15, 0, 0)
EndSwitch
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'ushort[8];'
Next
Local $tVertex = DllStructCreate($tagStruct)
Local $iCount = 1
Local $tGradient = DllStructCreate('ulong[' & $iPoint & ']')
For $i = $iStart To $iEnd
DllStructSetData($tGradient, 1, $iCount - 1, $iCount)
DllStructSetData($tVertex, $iCount, _WinAPI_LoWord($aVertex[$i][0]), 1)
DllStructSetData($tVertex, $iCount, _WinAPI_HiWord($aVertex[$i][0]), 2)
DllStructSetData($tVertex, $iCount, _WinAPI_LoWord($aVertex[$i][1]), 3)
DllStructSetData($tVertex, $iCount, _WinAPI_HiWord($aVertex[$i][1]), 4)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetRValue($aVertex[$i][2]), -8), 5)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetGValue($aVertex[$i][2]), -8), 6)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetBValue($aVertex[$i][2]), -8), 7)
DllStructSetData($tVertex, $iCount, 0, 8)
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiGradientFill', 'handle', $hDC, 'struct*', $tVertex, 'ulong', $iPoint,  'struct*', $tGradient, 'ulong', 1, 'ulong', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_InflateRect(ByRef $tRECT, $iDX, $iDY)
Local $aCall = DllCall('user32.dll', 'bool', 'InflateRect', 'struct*', $tRECT, 'int', $iDX, 'int', $iDY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IntersectClipRect($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'IntersectClipRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3),  'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IntersectRect($tRECT1, $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'IntersectRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_InvalidateRgn($hWnd, $hRgn = 0, $bErase = True)
Local $aCall = DllCall('user32.dll', 'bool', 'InvalidateRgn', 'hwnd', $hWnd, 'handle', $hRgn, 'bool', $bErase)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_InvertANDBitmap($hBitmap, $bDelete = False)
Local $tBITMAP = DllStructCreate($tagBITMAP)
If Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tBITMAP), $tBITMAP) Or (DllStructGetData($tBITMAP, 'bmBitsPixel') <> 1) Then
Return SetError(@error + 10, @extended, 0)
EndIf
Local $hResult = _WinAPI_CreateDIB(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'), 1)
If Not $hResult Then Return SetError(@error, @extended, 0)
Local $hSrcDC = _WinAPI_CreateCompatibleDC(0)
Local $hSrcSv = _WinAPI_SelectObject($hSrcDC, $hBitmap)
Local $hDstDC = _WinAPI_CreateCompatibleDC(0)
Local $hDstSv = _WinAPI_SelectObject($hDstDC, $hResult)
_WinAPI_BitBlt($hDstDC, 0, 0, DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'), $hSrcDC, 0, 0, 0x00330008)
_WinAPI_SelectObject($hSrcDC, $hSrcSv)
_WinAPI_DeleteDC($hSrcDC)
_WinAPI_SelectObject($hDstDC, $hDstSv)
_WinAPI_DeleteDC($hDstDC)
If $bDelete Then
_WinAPI_DeleteObject($hBitmap)
EndIf
Return $hResult
EndFunc
Func _WinAPI_InvertColor($iColor)
If $iColor = -1 Then Return 0
Return 0xFFFFFF - BitAND($iColor, 0xFFFFFF)
EndFunc
Func _WinAPI_InvertRect($hDC, ByRef $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'InvertRect', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_InvertRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'bool', 'InvertRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsRectEmpty(ByRef $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'IsRectEmpty', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LineDDA($iX1, $iY1, $iX2, $iY2, $pLineProc, $pData = 0)
Local $aCall = DllCall('gdi32.dll', 'bool', 'LineDDA', 'int', $iX1, 'int', $iY1, 'int', $iX2, 'int', $iY2, 'ptr', $pLineProc,  'lparam', $pData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LineTo($hDC, $iX, $iY)
Local $aCall = DllCall("gdi32.dll", "bool", "LineTo", "handle", $hDC, "int", $iX, "int", $iY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LockWindowUpdate($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'LockWindowUpdate', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LPtoDP($hDC, ByRef $tPOINT, $iCount = 1)
Local $aCall = DllCall('gdi32.dll', 'bool', 'LPtoDP', 'handle', $hDC, 'struct*', $tPOINT, 'int', $iCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MaskBlt($hDestDC, $iXDest, $iYDest, $iWidth, $iHeight, $hSrcDC, $iXSrc, $iYSrc, $hMask, $iXMask, $iYMask, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'MaskBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidth, 'int', $iHeight, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc, 'handle', $hMask,  'int', $iXMask, 'int', $iYMask, 'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ModifyWorldTransform($hDC, ByRef $tXFORM, $iMode)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ModifyWorldTransform', 'handle', $hDC, 'struct*', $tXFORM, 'dword', $iMode)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromPoint(ByRef $tPOINT, $iFlag = 1)
If DllStructGetSize($tPOINT) <> 8 Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall('user32.dll', 'handle', 'MonitorFromPoint', 'struct', $tPOINT, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromRect(ByRef $tRECT, $iFlag = 1)
Local $aCall = DllCall('user32.dll', 'ptr', 'MonitorFromRect', 'struct*', $tRECT, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromWindow($hWnd, $iFlag = 1)
Local $aCall = DllCall('user32.dll', 'handle', 'MonitorFromWindow', 'hwnd', $hWnd, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveTo($hDC, $iX, $iY)
Local $aCall = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $hDC, "int", $iX, "int", $iY, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveToEx($hDC, $iX, $iY)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'MoveToEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_OffsetClipRgn($hDC, $iXOffset, $iYOffset)
Local $aCall = DllCall('gdi32.dll', 'int', 'OffsetClipRgn', 'handle', $hDC, 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetPoints(ByRef $aPoint, $iXOffset, $iYOffset, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 2 Then Return SetError(13, 0, 0)
For $i = $iStart To $iEnd
$aPoint[$i][0] += $iXOffset
$aPoint[$i][1] += $iYOffset
Next
Return 1
EndFunc
Func _WinAPI_OffsetRect(ByRef $tRECT, $iDX, $iDY)
Local $aCall = DllCall('user32.dll', 'bool', 'OffsetRect', 'struct*', $tRECT, 'int', $iDX, 'int', $iDY)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetRgn($hRgn, $iXOffset, $iYOffset)
Local $aCall = DllCall('gdi32.dll', 'int', 'OffsetRgn', 'handle', $hRgn, 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetWindowOrg($hDC, $iXOffset, $iYOffset)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'OffsetWindowOrgEx', 'handle', $hDC, 'int', $iXOffset, 'int', $iYOffset,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PaintDesktop($hDC)
Local $aCall = DllCall('user32.dll', 'bool', 'PaintDesktop', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PaintRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PaintRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PatBlt($hDC, $iX, $iY, $iWidth, $iHeight, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PatBlt', 'handle', $hDC, 'int', $iX, 'int', $iY, 'int', $iWidth, 'int', $iHeight,  'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathToRegion($hDC)
Local $aCall = DllCall('gdi32.dll', 'handle', 'PathToRegion', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PlayEnhMetaFile($hDC, $hEmf, ByRef $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PlayEnhMetaFile', 'handle', $hDC, 'handle', $hEmf, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PlgBlt($hDestDC, Const ByRef $aPoint, $hSrcDC, $iXSrc, $iYSrc, $iWidth, $iHeight, $hMask = 0, $iXMask = 0, $iYMask = 0)
If (UBound($aPoint) < 3) Or (UBound($aPoint, $UBOUND_COLUMNS) < 2) Then Return SetError(12, 0, False)
Local $tPoints = DllStructCreate('long[2];long[2];long[2]')
For $i = 0 To 2
For $j = 0 To 1
DllStructSetData($tPoints, $i + 1, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PlgBlt', 'handle', $hDestDC, 'struct*', $tPoints, 'handle', $hSrcDC,  'int', $iXSrc, 'int', $iYSrc, 'int', $iWidth, 'int', $iHeight, 'handle', $hMask,  'int', $iXMask, 'int', $iYMask)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyBezier($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $iPoint = 1 + 3 * Floor(($iEnd - $iStart) / 3)
If $iPoint < 1 Then Return SetError(15, 0, False)
$iEnd = $iStart + $iPoint - 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyBezier', 'handle', $hDC, 'struct*', $tPOINT, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyBezierTo($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $iPoint = 3 * Floor(($iEnd - $iStart + 1) / 3)
If $iPoint < 3 Then Return SetError(15, 0, False)
$iEnd = $iStart + $iPoint - 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyBezierTo', 'handle', $hDC, 'struct*', $tPOINT, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyDraw($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 3 Then Return SetError(13, 0, False)
Local $iPoint = $iEnd - $iStart + 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $tTypes = DllStructCreate('byte[' & $iPoint & ']')
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
DllStructSetData($tTypes, 1, $aPoint[$i][2], $iCount)
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyDraw', 'handle', $hDC, 'struct*', $tPOINT, 'struct*', $tTypes, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Polygon($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'int[2];'
Next
Local $tData = DllStructCreate($tagStruct)
Local $iCount = 1
For $i = $iStart To $iEnd
For $j = 0 To 1
DllStructSetData($tData, $iCount, $aPoint[$i][$j], $j + 1)
Next
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'Polygon', 'handle', $hDC, 'struct*', $tData, 'int', $iCount - 1)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRectEx($iX, $iY, $iLeft, $iTop, $iRight, $iBottom)
Local $tRECT = _WinAPI_CreateRect($iLeft, $iTop, $iRight, $iBottom)
Local $tPOINT = _WinAPI_CreatePoint($iX, $iY)
Local $aCall = DllCall('user32.dll', 'bool', 'PtInRect', 'struct*', $tRECT, 'struct', $tPOINT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRegion($hRgn, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PtInRegion', 'handle', $hRgn, 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtVisible($hDC, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PtVisible', 'handle', $hDC, 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] = -1 Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RadialGradientFill($hDC, $iX, $iY, $iRadius, $iRGB1, $iRGB2, $fAngleStart = 0, $fAngleEnd = 360, $fStep = 5)
If Abs($fAngleStart) > 360 Then
$fAngleStart = Mod($fAngleStart, 360)
EndIf
If Abs($fAngleEnd) > 360 Then
$fAngleEnd = Mod($fAngleEnd, 360)
EndIf
If ($fAngleStart < 0) Or ($fAngleEnd < 0) Then
$fAngleStart += 360
$fAngleEnd += 360
EndIf
If $fAngleStart > $fAngleEnd Then
Local $fVal = $fAngleStart
$fAngleStart = $fAngleEnd
$fAngleEnd = $fVal
EndIf
If $fStep < 1 Then
$fStep = 1
EndIf
Local $fKi = ATan(1) / 45
Local $iXp = Round($iX + $iRadius * Cos($fKi * $fAngleStart))
Local $iYp = Round($iY + $iRadius * Sin($fKi * $fAngleStart))
Local $iXn, $iYn, $fAn = $fAngleStart
Local $aVertex[3][3]
While $fAn < $fAngleEnd
$fAn += $fStep
If $fAn > $fAngleEnd Then
$fAn = $fAngleEnd
EndIf
$iXn = Round($iX + $iRadius * Cos($fKi * $fAn))
$iYn = Round($iY + $iRadius * Sin($fKi * $fAn))
$aVertex[0][0] = $iX
$aVertex[0][1] = $iY
$aVertex[0][2] = $iRGB1
$aVertex[1][0] = $iXp
$aVertex[1][1] = $iYp
$aVertex[1][2] = $iRGB2
$aVertex[2][0] = $iXn
$aVertex[2][1] = $iYn
$aVertex[2][2] = $iRGB2
If Not _WinAPI_GradientFill($hDC, $aVertex, 0, 2) Then
Return SetError(@error, @extended, 0)
EndIf
$iXp = $iXn
$iYp = $iYn
WEnd
Return 1
EndFunc
Func _WinAPI_Rectangle($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Rectangle', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RectInRegion($hRgn, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RectInRegion', 'handle', $hRgn, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RectIsEmpty(ByRef $tRECT)
Return (DllStructGetData($tRECT, "Left") = 0) And (DllStructGetData($tRECT, "Top") = 0) And  (DllStructGetData($tRECT, "Right") = 0) And (DllStructGetData($tRECT, "Bottom") = 0)
EndFunc
Func _WinAPI_RectVisible($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RectVisible', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Switch $aCall[0]
Case 0, 1, 2
Case Else
Return SetError(10, $aCall[0], 0)
EndSwitch
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveFontMemResourceEx($hFont)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RemoveFontMemResourceEx', 'handle', $hFont)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveFontResourceEx($sFont, $iFlag = 0, $bNotify = False)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RemoveFontResourceExW', 'wstr', $sFont, 'dword', $iFlag, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
If $bNotify Then
Local Const $WM_FONTCHANGE = 0x001D
Local Const $HWND_BROADCAST = 0xFFFF
DllCall('user32.dll', 'none', 'SendMessage', 'hwnd', $HWND_BROADCAST, 'uint', $WM_FONTCHANGE, 'wparam', 0, 'lparam', 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_RGB($iRed, $iGreen, $iBlue)
Return __RGB(BitOR(BitShift($iBlue, -16), BitShift($iGreen, -8), $iRed))
EndFunc
Func _WinAPI_RotatePoints(ByRef $aPoint, $iXC, $iYC, $fAngle, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 2 Then Return SetError(13, 0, 0)
Local $fCos = Cos(ATan(1) / 45 * $fAngle)
Local $fSin = Sin(ATan(1) / 45 * $fAngle)
Local $iXn, $iYn
For $i = $iStart To $iEnd
$iXn = $aPoint[$i][0] - $iXC
$iYn = $aPoint[$i][1] - $iYC
$aPoint[$i][0] = $iXC + Round($iXn * $fCos - $iYn * $fSin)
$aPoint[$i][1] = $iYC + Round($iXn * $fSin + $iYn * $fCos)
Next
Return 1
EndFunc
Func _WinAPI_RoundRect($hDC, $tRECT, $iWidth, $iHeight)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RoundRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3),  'int', DllStructGetData($tRECT, 4), 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SaveHBITMAPToFile($sFilePath, $hBitmap, $iXPelsPerMeter = Default, $iYPelsPerMeter = Default)
Local $tBMP = DllStructCreate('align 1;ushort bfType;dword bfSize;ushort bfReserved1;ushort bfReserved2;dword bfOffset')
Local $tDIB = DllStructCreate($tagDIBSECTION)
Local $hDC, $hSv, $hSource = 0
While $hBitmap
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB)) Or (DllStructGetData($tDIB, 'biCompression')) Then
$hBitmap = 0
Else
Switch DllStructGetData($tDIB, 'bmBitsPixel')
Case 32
If Not _WinAPI_IsAlphaBitmap($hBitmap) Then
If Not $hSource Then
$hSource = _WinAPI_CreateDIB(DllStructGetData($tDIB, 'bmWidth'), DllStructGetData($tDIB, 'bmHeight'), 24)
If Not $hSource Then
$hBitmap = 0
EndIf
$hDC = _WinAPI_CreateCompatibleDC(0)
$hSv = _WinAPI_SelectObject($hDC, $hSource)
If _WinAPI_DrawBitmap($hDC, 0, 0, $hBitmap) Then
$hBitmap = $hSource
Else
$hBitmap = 0
EndIf
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Else
$hBitmap = 0
EndIf
ContinueLoop
EndIf
Case Else
EndSwitch
If (Not DllStructGetData($tDIB, 'bmBits')) Or (Not DllStructGetData($tDIB, 'biSizeImage')) Then
If Not $hSource Then
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
$hSource = $hBitmap
Else
$hBitmap = 0
EndIf
Else
ExitLoop
EndIf
EndIf
WEnd
Local $hFile = 0, $iError = 0, $iResult = 0
Do
If Not $hBitmap Then
$iError = 1
ExitLoop
EndIf
Local $aData[4][2]
$aData[0][0] = DllStructGetPtr($tBMP)
$aData[0][1] = DllStructGetSize($tBMP)
$aData[1][0] = DllStructGetPtr($tDIB, 'biSize')
$aData[1][1] = 40
$aData[2][1] = DllStructGetData($tDIB, 'biClrUsed') * 4
Local $tTable = 0
If $aData[2][1] Then
$tTable = _WinAPI_GetDIBColorTable($hBitmap)
If @error Or (@extended <> $aData[2][1] / 4) Then
$iError = @error + 10
ExitLoop
EndIf
EndIf
$aData[2][0] = DllStructGetPtr($tTable)
$aData[3][0] = DllStructGetData($tDIB, 'bmBits')
$aData[3][1] = DllStructGetData($tDIB, 'biSizeImage')
DllStructSetData($tBMP, 'bfType', 0x4D42)
DllStructSetData($tBMP, 'bfSize', $aData[0][1] + $aData[1][1] + $aData[2][1] + $aData[3][1])
DllStructSetData($tBMP, 'bfReserved1', 0)
DllStructSetData($tBMP, 'bfReserved2', 0)
DllStructSetData($tBMP, 'bfOffset', $aData[0][1] + $aData[1][1] + $aData[2][1])
$hDC = _WinAPI_GetDC(0)
If $iXPelsPerMeter = Default Then
If Not DllStructGetData($tDIB, 'biXPelsPerMeter') Then
DllStructSetData($tDIB, 'biXPelsPerMeter', _WinAPI_GetDeviceCaps($hDC, 8) / _WinAPI_GetDeviceCaps($hDC, 4) * 1000)
EndIf
Else
DllStructSetData($tDIB, 'biXPelsPerMeter', $iXPelsPerMeter)
EndIf
If $iYPelsPerMeter = Default Then
If Not DllStructGetData($tDIB, 'biYPelsPerMeter') Then
DllStructSetData($tDIB, 'biYPelsPerMeter', _WinAPI_GetDeviceCaps($hDC, 10) / _WinAPI_GetDeviceCaps($hDC, 6) * 1000)
EndIf
Else
DllStructSetData($tDIB, 'biYPelsPerMeter', $iYPelsPerMeter)
EndIf
_WinAPI_ReleaseDC(0, $hDC)
$hFile = _WinAPI_CreateFile($sFilePath, 1, 4)
If @error Then
$iError = @error + 20
ExitLoop
EndIf
Local $iBytes
For $i = 0 To 3
If $aData[$i][1] Then
If Not _WinAPI_WriteFile($hFile, $aData[$i][0], $aData[$i][1], $iBytes) Then
$iError = @error + 30
ExitLoop 2
EndIf
EndIf
Next
$iResult = 1
Until 1
If $hSource Then
_WinAPI_DeleteObject($hSource)
EndIf
_WinAPI_CloseHandle($hFile)
If Not $iResult Then
FileDelete($sFilePath)
EndIf
Return SetError($iError, 0, $iResult)
EndFunc
Func _WinAPI_SaveHICONToFile($sFilePath, Const ByRef $vIcon, $bCompress = 0, $iStart = 0, $iEnd = -1)
Local $aIcon, $aTemp, $iCount = 1
If Not IsArray($vIcon) Then
Dim $aIcon[1] = [$vIcon]
Dim $aTemp[1] = [0]
Else
If __CheckErrorArrayBounds($vIcon, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
If $iCount Then
Dim $aIcon[$iCount]
Dim $aTemp[$iCount]
For $i = 0 To $iCount - 1
$aIcon[$i] = $vIcon[$iStart + $i]
$aTemp[$i] = 0
Next
EndIf
EndIf
Local $hFile = _WinAPI_CreateFile($sFilePath, 1, 4)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tIco = DllStructCreate('align 1;ushort Reserved;ushort Type;ushort Count;byte Data[' & (16 * $iCount) & ']')
Local $iLength = DllStructGetSize($tIco)
Local $tBI = DllStructCreate($tagBITMAPINFOHEADER)
Local $tII = DllStructCreate($tagICONINFO)
Local $tDIB = DllStructCreate($tagDIBSECTION)
Local $iDIB = DllStructGetSize($tDIB)
Local $pDIB = DllStructGetPtr($tDIB)
Local $iOffset = $iLength
DllStructSetData($tBI, 'biSize', 40)
DllStructSetData($tBI, 'biPlanes', 1)
DllStructSetData($tBI, 'biXPelsPerMeter', 0)
DllStructSetData($tBI, 'biYPelsPerMeter', 0)
DllStructSetData($tBI, 'biClrUsed', 0)
DllStructSetData($tBI, 'biClrImportant', 0)
DllStructSetData($tIco, 'Reserved', 0)
DllStructSetData($tIco, 'Type', 1)
DllStructSetData($tIco, 'Count', $iCount)
Local $iResult = 0, $iError = 0, $iBytes
Local $aInfo[8], $aCall, $pData = 0, $iIndex = 0
Local $aSize[2], $tData = 0
Do
If Not _WinAPI_WriteFile($hFile, $tIco, $iLength, $iBytes) Then
$iError = @error + 30
ExitLoop
EndIf
While $iCount > $iIndex
$aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $aIcon[$iIndex], 'struct*', $tII)
If @error Or Not $aCall[0] Then
$iError = @error + 40
ExitLoop 2
EndIf
For $i = 4 To 5
$aInfo[$i] = _WinAPI_CopyImage(DllStructGetData($tII, $i), 0, 0, 0, 0x2008)
If _WinAPI_GetObject($aInfo[$i], $iDIB, $pDIB) Then
$aInfo[$i - 4] = DllStructGetData($tDIB, 'biSizeImage')
$aInfo[$i - 2] = DllStructGetData($tDIB, 'bmBits')
Else
$iError = @error + 50
EndIf
Next
$aInfo[6] = 40
$aInfo[7] = DllStructGetData($tDIB, 'bmBitsPixel')
Switch $aInfo[7]
Case 16, 24
Case 32
If Not _WinAPI_IsAlphaBitmap($aInfo[5]) Then
If Not $aTemp[$iIndex] Then
$aIcon[$iIndex] = _WinAPI_Create32BitHICON($aIcon[$iIndex])
$aTemp[$iIndex] = $aIcon[$iIndex]
If Not @error Then
ContinueLoop
Else
ContinueCase
EndIf
EndIf
Else
If ($aInfo[1] >= 256 * 256 * 4) And ($bCompress) Then
$iBytes = _WinAPI_CompressBitmapBits($aInfo[5], $pData)
If Not @error Then
$aInfo[0] = 0
$aInfo[1] = $iBytes
$aInfo[2] = 0
$aInfo[3] = $pData
$aInfo[6] = 0
EndIf
EndIf
EndIf
Case Else
$iError = 60
EndSwitch
If Not $iError Then
$tData = DllStructCreate('byte Width;byte Height;byte ColorCount;byte Reserved;ushort Planes;ushort BitCount;long Size;long Offset', DllStructGetPtr($tIco) + 6 + 16 * $iIndex)
DllStructSetData($tData, 'ColorCount', 0)
DllStructSetData($tData, 'Reserved', 0)
DllStructSetData($tData, 'Planes', 1)
DllStructSetData($tData, 'BitCount', $aInfo[7])
DllStructSetData($tData, 'Size', $aInfo[0] + $aInfo[1] + $aInfo[6])
DllStructSetData($tData, 'Offset', $iOffset)
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tDIB, $i + 2)
If $aSize[$i] < 256 Then
DllStructSetData($tData, $i + 1, $aSize[$i])
Else
DllStructSetData($tData, $i + 1, 0)
EndIf
Next
DllStructSetData($tBI, 'biWidth', $aSize[0])
DllStructSetData($tBI, 'biHeight', 2 * $aSize[1])
DllStructSetData($tBI, 'biBitCount', $aInfo[7])
DllStructSetData($tBI, 'biCompression', 0)
DllStructSetData($tBI, 'biSizeImage', $aInfo[0] + $aInfo[1])
$iOffset += $aInfo[0] + $aInfo[1] + $aInfo[6]
Do
If $aInfo[6] Then
If Not _WinAPI_WriteFile($hFile, $tBI, $aInfo[6], $iBytes) Then
$iError = @error + 70
ExitLoop
EndIf
For $i = 1 To 0 Step -1
If Not _WinAPI_WriteFile($hFile, $aInfo[$i + 2], $aInfo[$i], $iBytes) Then
$iError = @error + 80
ExitLoop 2
EndIf
Next
Else
If Not _WinAPI_WriteFile($hFile, $aInfo[3], $aInfo[1], $iBytes) Then
$iError = @error + 90
ExitLoop
EndIf
EndIf
Until 1
EndIf
For $i = 4 To 5
_WinAPI_DeleteObject($aInfo[$i])
Next
If $iError Then
ExitLoop 2
EndIf
$iIndex += 1
WEnd
$aCall = DllCall('kernel32.dll', 'bool', 'SetFilePointerEx', 'handle', $hFile, 'int64', 0, 'int64*', 0, 'dword', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 100
ExitLoop
EndIf
If Not _WinAPI_WriteFile($hFile, $tIco, $iLength, $iBytes) Then
$iError = @error + 110
ExitLoop
EndIf
$iResult = 1
Until 1
For $i = 0 To $iCount - 1
If $aTemp[$i] Then
_WinAPI_DestroyIcon($aTemp[$i])
EndIf
Next
If $pData Then
__HeapFree($pData)
EndIf
_WinAPI_CloseHandle($hFile)
If Not $iResult Then
FileDelete($sFilePath)
EndIf
Return SetError($iError, 0, $iResult)
EndFunc
Func _WinAPI_ScaleWindowExt($hDC, $iXNum, $iXDenom, $iYNum, $iYDenom)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ScaleWindowExtEx', 'handle', $hDC, 'int', $iXNum, 'int', $iXDenom, 'int', $iYNum,  'int', $iYDenom, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectClipPath($hDC, $iMode = 5)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SelectClipPath', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectClipRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'int', 'SelectClipRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetArcDirection($hDC, $iDirection)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetArcDirection', 'handle', $hDC, 'int', $iDirection)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBitmapBits($hBitmap, $iSize, $pBits)
Local $aCall = DllCall('gdi32.dll', 'long', 'SetBitmapBits', 'handle', $hBitmap, 'dword', $iSize, 'struct*', $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBitmapDimensionEx($hBitmap, $iWidth, $iHeight)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetBitmapDimensionEx', 'handle', $hBitmap, 'int', $iWidth, 'int', $iHeight,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBoundsRect($hDC, $iFlags, $tRECT = 0)
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetBoundsRect', 'handle', $hDC, 'struct*', $tRECT, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBrushOrg($hDC, $iX, $iY)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetBrushOrgEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetColorAdjustment($hDC, $tAdjustment)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetColorAdjustment', 'handle', $hDC, 'struct*', $tAdjustment)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDCBrushColor($hDC, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'dword', 'SetDCBrushColor', 'handle', $hDC, 'dword', __RGB($iRGB))
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_SetDCPenColor($hDC, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'dword', 'SetDCPenColor', 'handle', $hDC, 'dword', __RGB($iRGB))
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_SetDeviceGammaRamp($hDC, Const ByRef $aRamp)
If (UBound($aRamp, $UBOUND_DIMENSIONS) <> 2) Or (UBound($aRamp, $UBOUND_ROWS) <> 256) Or (UBound($aRamp, $UBOUND_COLUMNS) <> 3) Then
Return SetError(12, 0, 0)
EndIf
Local $tData = DllStructCreate('ushort[256];ushort[256];ushort[256]')
For $i = 0 To 2
For $j = 0 To 255
DllStructSetData($tData, $i + 1, $aRamp[$j][$i], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetDeviceGammaRamp', 'handle', $hDC, 'struct*', $tData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBColorTable($hBitmap, $tColorTable, $iColorCount)
If $iColorCount > DllStructGetSize($tColorTable) / 4 Then Return SetError(1, 0, 0)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetDIBColorTable', 'handle', $hDC, 'uint', 0, 'uint', $iColorCount, 'struct*', $tColorTable)
If @error Then $iError = @error
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBits($hDC, $hBitmap, $iStartScan, $iScanLines, $pBits, $tBMI, $iColorUse = 0)
Local $aCall = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $hDC, "handle", $hBitmap, "uint", $iStartScan,  "uint", $iScanLines, "struct*", $pBits, "struct*", $tBMI, "INT", $iColorUse)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBitsToDevice($hDC, $iXDest, $iYDest, $iWidth, $iHeight, $iXSrc, $iYSrc, $iStartScan, $iScanLines, $tBITMAPINFO, $iUsage, $pBits)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetDIBitsToDevice', 'handle', $hDC, 'int', $iXDest, 'int', $iYDest,  'dword', $iWidth, 'dword', $iHeight, 'int', $iXSrc, 'int', $iYSrc, 'uint', $iStartScan,  'uint', $iScanLines, 'struct*', $pBits, 'struct*', $tBITMAPINFO, 'uint', $iUsage)
If @error Or ($aCall[0] = -1) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetEnhMetaFileBits($pData, $iLength)
Local $aCall = DllCall('gdi32.dll', 'handle', 'SetEnhMetaFileBits', 'uint', $iLength, 'struct*', $pData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetGraphicsMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetGraphicsMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetMapMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetMapMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetPixel($hDC, $iX, $iY, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetPixelV', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', __RGB($iRGB))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetPolyFillMode($hDC, $iMode = 1)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetPolyFillMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetRectRgn($hRgn, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetRectRgn', 'handle', $hRgn, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetROP2($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetROP2', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetStretchBltMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetStretchBltMode', 'handle', $hDC, 'int', $iMode)
If @error Or Not $aCall[0] Or ($aCall[0] = 87) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextAlign($hDC, $iMode = 0)
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetTextAlign', 'handle', $hDC, 'uint', $iMode)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextCharacterExtra($hDC, $iCharExtra)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetTextCharacterExtra', 'handle', $hDC, 'int', $iCharExtra)
If @error Or ($aCall[0] = 0x80000000) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextJustification($hDC, $iBreakExtra, $iBreakCount)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetTextJustification', 'handle', $hDC, 'int', $iBreakExtra, 'int', $iBreakCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetUDFColorMode($iMode)
$__g_iRGBMode = Not ($iMode = 0)
EndFunc
Func _WinAPI_SetWindowExt($hDC, $iXExtent, $iYExtent)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWindowExtEx', 'handle', $hDC, 'int', $iXExtent, 'int', $iYExtent,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowOrg($hDC, $iX, $iY)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWindowOrgEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWorldTransform($hDC, ByRef $tXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWorldTransform', 'handle', $hDC, 'struct*', $tXFORM)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StretchBlt($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StretchBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest, 'int', $iWidthDest,  'int', $iHeightDest, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StretchDIBits($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $tBITMAPINFO, $iUsage, $pBits, $iRop)
Local $aCall = DllCall('gdi32.dll', 'int', 'StretchDIBits', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'struct*', $pBits, 'struct*', $tBITMAPINFO, 'uint', $iUsage,  'dword', $iRop)
If @error Or ($aCall[0] = -1) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StrokeAndFillPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StrokeAndFillPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StrokePath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StrokePath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SubtractRect(ByRef $tRECT1, ByRef $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'SubtractRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_TabbedTextOut($hDC, $iX, $iY, $sText, $aTab = 0, $iStart = 0, $iEnd = -1, $iOrigin = 0)
Local $iTab, $iCount
If Not IsArray($aTab) Then
If $aTab Then
$iTab = $aTab
Dim $aTab[1] = [$iTab]
$iStart = 0
$iEnd = 0
$iCount = 1
Else
$iCount = 0
EndIf
Else
$iCount = 1
EndIf
Local $tTab = 0
If $iCount Then
If __CheckErrorArrayBounds($aTab, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
$tTab = DllStructCreate('uint[' & $iCount & ']')
$iTab = 1
For $i = $iStart To $iEnd
DllStructSetData($tTab, 1, $aTab[$i], $iTab)
$iTab += 1
Next
EndIf
Local $aCall = DllCall('user32.dll', 'long', 'TabbedTextOutW', 'handle', $hDC, 'int', $iX, 'int', $iY, 'wstr', $sText,  'int', StringLen($sText), 'int', $iCount, 'struct*', $tTab, 'int', $iOrigin)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$__g_vExt = _WinAPI_CreateSize(_WinAPI_LoWord($aCall[0]), _WinAPI_HiWord($aCall[0]))
Return 1
EndFunc
Func _WinAPI_TextOut($hDC, $iX, $iY, $sText)
Local $aCall = DllCall('gdi32.dll', 'bool', 'TextOutW', 'handle', $hDC, 'int', $iX, 'int', $iY, 'wstr', $sText,  'int', StringLen($sText))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_TransparentBlt($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiTransparentBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', __RGB($iRGB))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnionRect(ByRef $tRECT1, ByRef $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'UnionRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, 0, 0)
Return $tRECT
EndFunc
Func _WinAPI_ValidateRect($hWnd, $tRECT = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'ValidateRect', 'hwnd', $hWnd, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ValidateRgn($hWnd, $hRgn = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'ValidateRgn', 'hwnd', $hWnd, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_WidenPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'WidenPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_WindowFromDC($hDC)
Local $aCall = DllCall('user32.dll', 'hwnd', 'WindowFromDC', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __EnumDisplayMonitorsProc($hMonitor, $hDC, $pRECT, $lParam)
#forceref $hDC, $lParam
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = $hMonitor
If Not $pRECT Then
$__g_vEnum[$__g_vEnum[0][0]][1] = 0
Else
$__g_vEnum[$__g_vEnum[0][0]][1] = DllStructCreate($tagRECT)
If Not _WinAPI_MoveMemory(DllStructGetPtr($__g_vEnum[$__g_vEnum[0][0]][1]), $pRECT, 16) Then Return 0
EndIf
Return 1
EndFunc
Func __EnumFontFamiliesProc($pELFEX, $pNTMEX, $iFontType, $pPattern)
Local $tELFEX = DllStructCreate($tagLOGFONT & ';wchar FullName[64];wchar Style[32];wchar Script[32]', $pELFEX)
Local $tNTMEX = DllStructCreate($tagNEWTEXTMETRICEX, $pNTMEX)
Local $tPattern = DllStructCreate('uint;uint;ptr', $pPattern)
If $iFontType And Not BitAND($iFontType, DllStructGetData($tPattern, 1)) Then
Return 1
EndIf
If DllStructGetData($tPattern, 3) Then
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMatchSpecW', 'ptr', DllStructGetPtr($tELFEX, 14), 'ptr', DllStructGetData($tPattern, 3))
If Not @error Then
If DllStructGetData($tPattern, 2) Then
If $aCall[0] Then
Return 1
Else
EndIf
Else
If $aCall[0] Then
Else
Return 1
EndIf
EndIf
EndIf
EndIf
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData($tELFEX, 14)
$__g_vEnum[$__g_vEnum[0][0]][1] = DllStructGetData($tELFEX, 16)
$__g_vEnum[$__g_vEnum[0][0]][2] = DllStructGetData($tELFEX, 15)
$__g_vEnum[$__g_vEnum[0][0]][3] = DllStructGetData($tELFEX, 17)
$__g_vEnum[$__g_vEnum[0][0]][4] = $iFontType
$__g_vEnum[$__g_vEnum[0][0]][5] = DllStructGetData($tNTMEX, 19)
$__g_vEnum[$__g_vEnum[0][0]][6] = DllStructGetData($tNTMEX, 20)
$__g_vEnum[$__g_vEnum[0][0]][7] = DllStructGetData($tNTMEX, 21)
Return 1
EndFunc
Func __EnumFontStylesProc($pELFEX, $pNTMEX, $iFontType, $pFN)
#forceref $iFontType
Local $tELFEX = DllStructCreate($tagLOGFONT & ';wchar FullName[64];wchar Style[32];wchar Script[32]', $pELFEX)
Local $tNTMEX = DllStructCreate($tagNEWTEXTMETRICEX, $pNTMEX)
Local $tFN = DllStructCreate('dword;wchar[64]', $pFN)
If BitAND(DllStructGetData($tNTMEX, 'ntmFlags'), 0x0061) = DllStructGetData($tFN, 1) Then
DllStructSetData($tFN, 2, DllStructGetData($tELFEX, 'FullName'))
Return 0
Else
Return 1
EndIf
EndFunc
#EndRegion Internal Functions
Global Const $CREATE_BREAKAWAY_FROM_JOB = 0x01000000
Global Const $CREATE_DEFAULT_ERROR_MODE = 0x04000000
Global Const $CREATE_NEW_CONSOLE = 0x00000010
Global Const $CREATE_NEW_PROCESS_GROUP = 0x00000200
Global Const $CREATE_NO_WINDOW = 0x08000000
Global Const $CREATE_PROTECTED_PROCESS = 0x00040000
Global Const $CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 0x02000000
Global Const $CREATE_SEPARATE_WOW_VDM = 0x00000800
Global Const $CREATE_SHARED_WOW_VDM = 0x00001000
Global Const $CREATE_SUSPENDED = 0x00000004
Global Const $CREATE_UNICODE_ENVIRONMENT = 0x00000400
Global Const $LIST_MODULES_32BIT = 1
Global Const $LIST_MODULES_64BIT = 2
Global Const $LIST_MODULES_ALL = 3
Global Const $LIST_MODULES_DEFAULT = 0
Global Const $ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000
Global Const $BELOW_NORMAL_PRIORITY_CLASS = 0x00004000
Global Const $HIGH_PRIORITY_CLASS = 0x00000080
Global Const $IDLE_PRIORITY_CLASS = 0x00000040
Global Const $NORMAL_PRIORITY_CLASS = 0x00000020
Global Const $REALTIME_PRIORITY_CLASS = 0x00000100
Global Const $PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000
Global Const $PROCESS_MODE_BACKGROUND_END = 0x00200000
Global Const $MUTEX_MODIFY_STATE = 0x0001
Global Const $MUTEX_ALL_ACCESS = 0x001F0001
Global Const $JOB_OBJECT_ASSIGN_PROCESS = 0x0001
Global Const $JOB_OBJECT_QUERY = 0x0004
Global Const $JOB_OBJECT_SET_ATTRIBUTES = 0x0002
Global Const $JOB_OBJECT_SET_SECURITY_ATTRIBUTES = 0x0010
Global Const $JOB_OBJECT_TERMINATE = 0x0008
Global Const $JOB_OBJECT_ALL_ACCESS = 0x001F001F
Global Const $JOB_OBJECT_LIMIT_ACTIVE_PROCESS = 0x00000008
Global Const $JOB_OBJECT_LIMIT_AFFINITY = 0x00000010
Global Const $JOB_OBJECT_LIMIT_BREAKAWAY_OK = 0x00000800
Global Const $JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 0x00000400
Global Const $JOB_OBJECT_LIMIT_JOB_MEMORY = 0x00000200
Global Const $JOB_OBJECT_LIMIT_JOB_TIME = 0x00000004
Global Const $JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = 0x00002000
Global Const $JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = 0x00000040
Global Const $JOB_OBJECT_LIMIT_PRIORITY_CLASS = 0x00000020
Global Const $JOB_OBJECT_LIMIT_PROCESS_MEMORY = 0x00000100
Global Const $JOB_OBJECT_LIMIT_PROCESS_TIME = 0x00000002
Global Const $JOB_OBJECT_LIMIT_SCHEDULING_CLASS = 0x00000080
Global Const $JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = 0x00001000
Global Const $JOB_OBJECT_LIMIT_WORKINGSET = 0x00000001
Global Const $JOB_OBJECT_UILIMIT_DESKTOP = 0x00000040
Global Const $JOB_OBJECT_UILIMIT_DISPLAYSETTINGS = 0x00000010
Global Const $JOB_OBJECT_UILIMIT_EXITWINDOWS = 0x00000080
Global Const $JOB_OBJECT_UILIMIT_GLOBALATOMS = 0x00000020
Global Const $JOB_OBJECT_UILIMIT_HANDLES = 0x00000001
Global Const $JOB_OBJECT_UILIMIT_READCLIPBOARD = 0x00000002
Global Const $JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = 0x00000008
Global Const $JOB_OBJECT_UILIMIT_WRITECLIPBOARD = 0x00000004
Global Const $JOB_OBJECT_SECURITY_FILTER_TOKENS = 0x00000008
Global Const $JOB_OBJECT_SECURITY_NO_ADMIN = 0x00000001
Global Const $JOB_OBJECT_SECURITY_ONLY_TOKEN = 0x00000004
Global Const $JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = 0x00000002
Global Const $JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0
Global Const $JOB_OBJECT_POST_AT_END_OF_JOB = 1
Global Const $SEMAPHORE_MODIFY_STATE = 0x0002
Global Const $SEMAPHORE_QUERY_STATE = 0x0001
Global Const $SEMAPHORE_ALL_ACCESS = 0x001F0003
Global Const $ES_AWAYMODE_REQUIRED = 0x00000040
Global Const $ES_CONTINUOUS = 0x80000000
Global Const $ES_DISPLAY_REQUIRED = 0x00000002
Global Const $ES_SYSTEM_REQUIRED = 0x00000001
Global Const $ES_USER_PRESENT = 0x00000004
#Region Global Variables and Constants
Global Const $tagIO_COUNTERS = 'struct;uint64 ReadOperationCount;uint64 WriteOperationCount;uint64 OtherOperationCount;uint64 ReadTransferCount;uint64 WriteTransferCount;uint64 OtherTransferCount;endstruct'
Global Const $tagJOBOBJECT_ASSOCIATE_COMPLETION_PORT = 'ulong_ptr CompletionKey;ptr CompletionPort'
Global Const $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION = 'struct;int64 TotalUserTime;int64 TotalKernelTime;int64 ThisPeriodTotalUserTime;int64 ThisPeriodTotalKernelTime;dword TotalPageFaultCount;dword TotalProcesses;dword ActiveProcesses;dword TotalTerminatedProcesses;endstruct'
Global Const $tagJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION & ';' & $tagIO_COUNTERS
Global Const $tagJOBOBJECT_BASIC_LIMIT_INFORMATION = 'struct;int64 PerProcessUserTimeLimit;int64 PerJobUserTimeLimit;dword LimitFlags;ulong_ptr MinimumWorkingSetSize;ulong_ptr MaximumWorkingSetSize;dword ActiveProcessLimit;ulong_ptr Affinity;dword PriorityClass;dword SchedulingClass;endstruct'
Global Const $tagJOBOBJECT_BASIC_PROCESS_ID_LIST = 'dword NumberOfAssignedProcesses;dword NumberOfProcessIdsInList'
Global Const $tagJOBOBJECT_BASIC_UI_RESTRICTIONS = 'dword UIRestrictionsClass'
Global Const $tagJOBOBJECT_END_OF_JOB_TIME_INFORMATION = 'dword EndOfJobTimeAction'
Global Const $tagJOBOBJECT_EXTENDED_LIMIT_INFORMATION = $tagJOBOBJECT_BASIC_LIMIT_INFORMATION & ';' & $tagIO_COUNTERS & ';ulong_ptr ProcessMemoryLimit;ulong_ptr JobMemoryLimit;ulong_ptr PeakProcessMemoryUsed;ulong_ptr PeakJobMemoryUsed'
Global Const $tagJOBOBJECT_GROUP_INFORMATION = ''
Global Const $tagJOBOBJECT_SECURITY_LIMIT_INFORMATION = 'dword SecurityLimitFlags;ptr JobToken;ptr SidsToDisable;ptr PrivilegesToDelete;ptr RestrictedSids'
Global Const $tagMODULEINFO = 'ptr BaseOfDll;dword SizeOfImage;ptr EntryPoint'
Global Const $tagPROCESSENTRY32 = 'dword Size;dword Usage;dword ProcessID;ulong_ptr DefaultHeapID;dword ModuleID;dword Threads;dword ParentProcessID;long PriClassBase;dword Flags;wchar ExeFile[260]'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_AdjustTokenPrivileges($hToken, $aPrivileges, $iAttributes, ByRef $aAdjust)
$aAdjust = 0
If Not $aPrivileges And IsNumber($aPrivileges) Then Return 0
Local $tTP1 = 0, $tTP2, $iCount, $aCall, $bDisable = False
If $aPrivileges = -1 Then
$tTP2 = DllStructCreate('dword')
$aCall = DllCall('advapi32.dll', 'bool', 'AdjustTokenPrivileges', 'handle', $hToken, 'bool', 1, 'ptr', 0,  'dword', 0, 'struct*', $tTP2, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
Local $iLastError = _WinAPI_GetLastError()
Switch $iLastError
Case 122
$tTP2 = DllStructCreate('dword;dword[' & ($aCall[6] / 4 - 1) & ']')
If @error Then
ContinueCase
EndIf
Case Else
Return SetError(10, $iLastError, 0)
EndSwitch
$bDisable = True
Else
Local $aPrev = 0
If Not IsArray($aPrivileges) Then
Dim $aPrev[1][2]
$aPrev[0][0] = $aPrivileges
$aPrev[0][1] = $iAttributes
Else
If Not UBound($aPrivileges, $UBOUND_COLUMNS) Then
$iCount = UBound($aPrivileges)
Dim $aPrev[$iCount][2]
For $i = 0 To $iCount - 1
$aPrev[$i][0] = $aPrivileges[$i]
$aPrev[$i][1] = $iAttributes
Next
EndIf
EndIf
If IsArray($aPrev) Then
$aPrivileges = $aPrev
EndIf
Local $tagStruct = 'dword;dword[' & (3 * UBound($aPrivileges)) & ']'
$tTP1 = DllStructCreate($tagStruct)
$tTP2 = DllStructCreate($tagStruct)
If @error Then Return SetError(@error + 20, 0, 0)
DllStructSetData($tTP1, 1, UBound($aPrivileges))
For $i = 0 To UBound($aPrivileges) - 1
DllStructSetData($tTP1, 2, $aPrivileges[$i][1], 3 * $i + 3)
$aCall = DllCall('advapi32.dll', 'bool', 'LookupPrivilegeValueW', 'ptr', 0, 'wstr', $aPrivileges[$i][0],  'ptr', DllStructGetPtr($tTP1, 2) + 12 * $i)
If @error Or Not $aCall[0] Then Return SetError(@error + 100, @extended, 0)
Next
EndIf
$aCall = DllCall('advapi32.dll', 'bool', 'AdjustTokenPrivileges', 'handle', $hToken, 'bool', $bDisable,  'struct*', $tTP1, 'dword', DllStructGetSize($tTP2), 'struct*', $tTP2, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 200, @extended, 0)
Local $iResult
Switch _WinAPI_GetLastError()
Case 1300
$iResult = 1
Case Else
$iResult = 0
EndSwitch
$iCount = DllStructGetData($tTP2, 1)
If $iCount Then
Local $tData = DllStructCreate('wchar[128]')
Dim $aPrivileges[$iCount][2]
For $i = 0 To $iCount - 1
$aCall = DllCall('advapi32.dll', 'bool', 'LookupPrivilegeNameW', 'ptr', 0,  'ptr', DllStructGetPtr($tTP2, 2) + 12 * $i, 'struct*', $tData, 'dword*', 128)
If @error Or Not $aCall[0] Then Return SetError(@error + 300, @extended, 0)
$aPrivileges[$i][1] = DllStructGetData($tTP2, 2, 3 * $i + 3)
$aPrivileges[$i][0] = DllStructGetData($tData, 1)
Next
$aAdjust = $aPrivileges
EndIf
Return SetExtended($iResult, 1)
EndFunc
Func _WinAPI_AssignProcessToJobObject($hJob, $hProcess)
Local $aCall = DllCall('kernel32.dll', 'bool', 'AssignProcessToJobObject', 'handle', $hJob, 'handle', $hProcess)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AttachConsole($iPID = -1)
Local $aCall = DllCall("kernel32.dll", "bool", "AttachConsole", "dword", $iPID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AttachThreadInput($iAttach, $iAttachTo, $bAttach)
Local $aCall = DllCall("user32.dll", "bool", "AttachThreadInput", "dword", $iAttach, "dword", $iAttachTo, "bool", $bAttach)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateEvent($tAttributes = 0, $bManualReset = True, $bInitialState = True, $sName = "")
If $sName = "" Then $sName = Null
Local $aCall = DllCall("kernel32.dll", "handle", "CreateEventW", "struct*", $tAttributes, "bool", $bManualReset,  "bool", $bInitialState, "wstr", $sName)
If @error Then Return SetError(@error, @extended, 0)
Local $iLastError = _WinAPI_GetLastError()
If $iLastError Then Return SetExtended($iLastError, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateJobObject($sName = '', $tSecurity = 0)
If Not StringStripWS($sName, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sName = Null
Local $aCall = DllCall('kernel32.dll', 'handle', 'CreateJobObjectW', 'struct*', $tSecurity, 'wstr', $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateMutex($sMutex, $bInitial = True, $tSecurity = 0)
Local $aCall = DllCall('kernel32.dll', 'handle', 'CreateMutexW', 'struct*', $tSecurity, 'bool', $bInitial, 'wstr', $sMutex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateProcess($sAppName, $sCommand, $tSecurity, $tThread, $bInherit, $iFlags, $pEnviron, $sDir, $tStartupInfo, $tProcess)
Local $tCommand = 0
If $sAppName = "" Then $sAppName = Null
If $sCommand <> "" Then
$tCommand = DllStructCreate("wchar Text[" & 260 + 1 & "]")
DllStructSetData($tCommand, "Text", $sCommand)
EndIf
If $sDir = "" Then $sDir = Null
Local $aCall = DllCall("kernel32.dll", "bool", "CreateProcessW", "wstr", $sAppName, "struct*", $tCommand,  "struct*", $tSecurity, "struct*", $tThread, "bool", $bInherit, "dword", $iFlags, "struct*", $pEnviron, "wstr", $sDir,  "struct*", $tStartupInfo, "struct*", $tProcess)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateProcessWithToken($sApp, $sCmd, $iFlags, $tStartupInfo, $tProcessInfo, $hToken, $iLogon = 0, $pEnvironment = 0, $sDir = '')
If Not StringStripWS($sApp, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sApp = Null
If Not StringStripWS($sCmd, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sCmd = Null
If Not StringStripWS($sDir, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDir = Null
Local $aCall = DllCall('advapi32.dll', 'bool', 'CreateProcessWithTokenW', 'handle', $hToken, 'dword', $iLogon,  'wstr', $sApp, 'wstr', $sCmd, 'dword', $iFlags, 'struct*', $pEnvironment,  'wstr', $sDir, 'struct*', $tStartupInfo, 'struct*', $tProcessInfo)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateSemaphore($sSemaphore, $iInitial, $iMaximum, $tSecurity = 0)
Local $aCall = DllCall('kernel32.dll', 'handle', 'CreateSemaphoreW', 'struct*', $tSecurity, 'long', $iInitial,  'long', $iMaximum, 'wstr', $sSemaphore)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DuplicateTokenEx($hToken, $iAccess, $iLevel, $iType = 1, $tSecurity = 0)
Local $aCall = DllCall('advapi32.dll', 'bool', 'DuplicateTokenEx', 'handle', $hToken, 'dword', $iAccess,  'struct*', $tSecurity, 'int', $iLevel, 'int', $iType, 'handle*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[6]
EndFunc
Func _WinAPI_EmptyWorkingSet($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000500 : 0x00001100),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EmptyWorkingSet', 'handle', $hProcess[0])
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_EnumChildProcess($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
If @error Or ($hSnapshot[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0)
Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
Local $aRet[101][2] = [[0]]
$hSnapshot = $hSnapshot[0]
DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
Local $aCall = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
Local $iError = @error
While (Not @error) And ($aCall[0])
If DllStructGetData($tPROCESSENTRY32, 'ParentProcessID') = $iPID Then
__Inc($aRet)
$aRet[$aRet[0][0]][0] = DllStructGetData($tPROCESSENTRY32, 'ProcessID')
$aRet[$aRet[0][0]][1] = DllStructGetData($tPROCESSENTRY32, 'ExeFile')
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
$iError = @error
WEnd
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
If Not $aRet[0][0] Then Return SetError($iError + 20, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_EnumDeviceDrivers()
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumDeviceDrivers', 'ptr', 0, 'dword', 0, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $iSize
If @AutoItX64 Then
$iSize = $aCall[3] / 8
Else
$iSize = $aCall[3] / 4
EndIf
Local $tData = DllStructCreate('ptr[' & $iSize & ']')
$aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumDeviceDrivers', 'struct*', $tData,  'dword', DllStructGetSize($tData), 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
Local $aRet[$iSize + 1] = [$iSize]
For $i = 1 To $iSize
$aRet[$i] = DllStructGetData($tData, 1, $i)
Next
Return $aRet
EndFunc
Func _WinAPI_EnumProcessHandles($iPID = 0, $iType = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $aRet[101][4] = [[0]]
Local $tagSYSTEM_HANDLE_TABLE_ENTRY_INFO = 'ulong ProcessId;byte ObjectTypeNumber;byte Flags;ushort Handle;ptr Object;ulong GrantedAccess'
Local $tHandle = DllStructCreate($tagSYSTEM_HANDLE_TABLE_ENTRY_INFO)
Local $iEntrySize = DllStructGetSize($tHandle)
Local $iMaxEntries = 262143
Local $tSHI = DllStructCreate('ulong_ptr NumberOfHandles;byte Data[' & ($iMaxEntries + 1) * $iEntrySize & ']')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQuerySystemInformation', 'uint', 16,  'struct*', $tSHI, 'ulong', DllStructGetSize($tSHI), 'ulong*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $pData = DllStructGetPtr($tSHI, 'Data')
Local $i, $iNumberOfHandles = DllStructGetData($tSHI, 'NumberOfHandles')
For $i = 1 To $iNumberOfHandles
If $i > $iMaxEntries Then ExitLoop
$tHandle = DllStructCreate($tagSYSTEM_HANDLE_TABLE_ENTRY_INFO, $pData + ($i - 1) * $iEntrySize)
If (DllStructGetData($tHandle, 'ProcessId') = $iPID) And ((Not $iType) Or ($iType = DllStructGetData($tHandle, 'ObjectTypeNumber'))) Then
__Inc($aRet)
$aRet[$aRet[0][0]][0] = Ptr(DllStructGetData($tHandle, 'Handle'))
$aRet[$aRet[0][0]][1] = DllStructGetData($tHandle, 'ObjectTypeNumber')
$aRet[$aRet[0][0]][2] = DllStructGetData($tHandle, 'Flags')
$aRet[$aRet[0][0]][3] = DllStructGetData($tHandle, 'GrantedAccess')
EndIf
Next
If Not $aRet[0][0] Then Return SetError(11, 0, 0)
__Inc($aRet, -1)
If $i < $iNumberOfHandles Then Return SetExtended($iNumberOfHandles, $aRet)
Return $aRet
EndFunc
Func _WinAPI_EnumProcessModules($iPID = 0, $iFlag = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000410 : 0x00001010),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $iCount, $aCall, $iError = 0
Do
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModulesEx', 'handle', $hProcess[0], 'ptr', 0,  'dword', 0, 'dword*', 0, 'dword', $iFlag)
Else
$aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModules', 'handle', $hProcess[0], 'ptr', 0,  'dword', 0, 'dword*', 0)
EndIf
If @error Or Not $aCall[0] Then
$iError = @error + 10
ExitLoop
EndIf
If @AutoItX64 Then
$iCount = $aCall[4] / 8
Else
$iCount = $aCall[4] / 4
EndIf
Local $tPtr = DllStructCreate('ptr[' & $iCount & ']')
If @error Then
$iError = @error + 30
ExitLoop
EndIf
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModulesEx', 'handle', $hProcess[0], 'struct*', $tPtr,  'dword', DllStructGetSize($tPtr), 'dword*', 0, 'dword', $iFlag)
Else
$aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModules', 'handle', $hProcess[0], 'struct*', $tPtr,  'dword', DllStructGetSize($tPtr), 'dword*', 0)
EndIf
If @error Or Not $aCall[0] Then
$iError = @error + 40
ExitLoop
EndIf
Local $aRet[$iCount + 1][2] = [[$iCount]]
For $i = 1 To $iCount
$aRet[$i][0] = DllStructGetData($tPtr, 1, $i)
$aRet[$i][1] = _WinAPI_GetModuleFileNameEx($hProcess[0], $aRet[$i][0])
Next
Until 1
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
If $iError Then Return SetError($iError, 0, 0)
Return $aRet
EndFunc
Func _WinAPI_EnumProcessThreads($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000004, 'dword', 0)
If @error Or Not $hSnapshot[0] Then Return SetError(@error + 10, @extended, 0)
Local Const $tagTHREADENTRY32 = 'dword Size;dword Usage;dword ThreadID;dword OwnerProcessID;long BasePri;long DeltaPri;dword Flags'
Local $tTHREADENTRY32 = DllStructCreate($tagTHREADENTRY32)
Local $aRet[101] = [0]
$hSnapshot = $hSnapshot[0]
DllStructSetData($tTHREADENTRY32, 'Size', DllStructGetSize($tTHREADENTRY32))
Local $aCall = DllCall('kernel32.dll', 'bool', 'Thread32First', 'handle', $hSnapshot, 'struct*', $tTHREADENTRY32)
While Not @error And $aCall[0]
If DllStructGetData($tTHREADENTRY32, 'OwnerProcessID') = $iPID Then
__Inc($aRet)
$aRet[$aRet[0]] = DllStructGetData($tTHREADENTRY32, 'ThreadID')
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'Thread32Next', 'handle', $hSnapshot, 'struct*', $tTHREADENTRY32)
WEnd
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
If Not $aRet[0] Then Return SetError(1, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_EnumProcessWindows($iPID = 0, $bVisible = True)
Local $aThreads = _WinAPI_EnumProcessThreads($iPID)
If @error Then Return SetError(@error, @extended, 0)
Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')
Dim $__g_vEnum[101][2] = [[0]]
For $i = 1 To $aThreads[0]
DllCall('user32.dll', 'bool', 'EnumThreadWindows', 'dword', $aThreads[$i], 'ptr', DllCallbackGetPtr($hEnumProc),  'lparam', $bVisible)
If @error Then
ExitLoop
EndIf
Next
DllCallbackFree($hEnumProc)
If Not $__g_vEnum[0][0] Then Return SetError(11, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_FatalAppExit($sMessage)
DllCall("kernel32.dll", "none", "FatalAppExitW", "uint", 0, "wstr", $sMessage)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _WinAPI_GetCurrentProcessExplicitAppUserModelID()
Local $aCall = DllCall('shell32.dll', 'long', 'GetCurrentProcessExplicitAppUserModelID', 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $sID = _WinAPI_GetString($aCall[1])
_WinAPI_CoTaskMemFree($aCall[1])
Return $sID
EndFunc
Func _WinAPI_GetCurrentProcessID()
Local $aCall = DllCall("kernel32.dll", "dword", "GetCurrentProcessId")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentThread()
Local $aCall = DllCall("kernel32.dll", "handle", "GetCurrentThread")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentThreadId()
Local $aCall = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDeviceDriverBaseName($pDriver)
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetDeviceDriverBaseNameW', 'ptr', $pDriver, 'wstr', '',  'dword', 4096)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetDeviceDriverFileName($pDriver)
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetDeviceDriverFileNameW', 'ptr', $pDriver, 'wstr', '',  'dword', 4096)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetExitCodeProcess($hProcess)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetExitCodeProcess', 'handle', $hProcess, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetGuiResources($iFlag = 0, $hProcess = -1)
If $hProcess = -1 Then $hProcess = _WinAPI_GetCurrentProcess()
Local $aCall = DllCall("user32.dll", "dword", "GetGuiResources", "handle", $hProcess, "dword", $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetModuleFileNameEx($hProcess, $hModule = 0)
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetModuleFileNameExW', 'handle', $hProcess, 'handle', $hModule,  'wstr', '', 'int', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[3]
EndFunc
Func _WinAPI_GetModuleInformation($hProcess, $hModule = 0)
Local $tMODULEINFO = DllStructCreate($tagMODULEINFO)
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetModuleInformation', 'handle', $hProcess, 'handle', $hModule,  'struct*', $tMODULEINFO, 'dword', DllStructGetSize($tMODULEINFO))
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tMODULEINFO
EndFunc
Func _WinAPI_GetParentProcess($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
If @error Or Not $hSnapshot[0] Then Return SetError(@error + 10, @extended, 0)
Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
Local $iResult = 0
$hSnapshot = $hSnapshot[0]
DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
Local $aCall = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
Local $iError = @error
While (Not @error) And ($aCall[0])
If DllStructGetData($tPROCESSENTRY32, 'ProcessID') = $iPID Then
$iResult = DllStructGetData($tPROCESSENTRY32, 'ParentProcessID')
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
$iError = @error
WEnd
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
If Not $iResult Then Return SetError($iError, 0, 0)
Return $iResult
EndFunc
Func _WinAPI_GetPriorityClass($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000400 : 0x00001000), 'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $iError = 0
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetPriorityClass', 'handle', $hProcess[0])
If @error Then $iError = @error
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetProcessAffinityMask($hProcess)
Local $aCall = DllCall("kernel32.dll", "bool", "GetProcessAffinityMask", "handle", $hProcess, "dword_ptr*", 0, "dword_ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aMask[3]
$aMask[0] = True
$aMask[1] = $aCall[2]
$aMask[2] = $aCall[3]
Return $aMask
EndFunc
Func _WinAPI_GetProcessCommandLine($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000410 : 0x00001010),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')
$hProcess = $hProcess[0]
Local $tPBI = DllStructCreate('ulong_ptr ExitStatus;ptr PebBaseAddress;ulong_ptr AffinityMask;ulong_ptr BasePriority;ulong_ptr UniqueProcessId;ulong_ptr InheritedFromUniqueProcessId')
Local $tPEB = DllStructCreate('byte InheritedAddressSpace;byte ReadImageFileExecOptions;byte BeingDebugged;byte Spare;ptr Mutant;ptr ImageBaseAddress;ptr LoaderData;ptr ProcessParameters;ptr SubSystemData;ptr ProcessHeap;ptr FastPebLock;ptr FastPebLockRoutine;ptr FastPebUnlockRoutine;ulong EnvironmentUpdateCount;ptr KernelCallbackTable;ptr EventLogSection;ptr EventLog;ptr FreeList;ulong TlsExpansionCounter;ptr TlsBitmap;ulong TlsBitmapBits[2];ptr ReadOnlySharedMemoryBase;ptr ReadOnlySharedMemoryHeap;ptr ReadOnlyStaticServerData;ptr AnsiCodePageData;ptr OemCodePageData;ptr UnicodeCaseTableData;ulong NumberOfProcessors;ulong NtGlobalFlag;byte Spare2[4];int64 CriticalSectionTimeout;ulong HeapSegmentReserve;ulong HeapSegmentCommit;ulong HeapDeCommitTotalFreeThreshold;ulong HeapDeCommitFreeBlockThreshold;ulong NumberOfHeaps;ulong MaximumNumberOfHeaps;ptr ProcessHeaps;ptr GdiSharedHandleTable;ptr ProcessStarterHelper;ptr GdiDCAttributeList;ptr LoaderLock;ulong OSMajorVersion;ulong OSMinorVersion;ulong OSBuildNumber;ulong OSPlatformId;ulong ImageSubSystem;ulong ImageSubSystemMajorVersion;ulong ImageSubSystemMinorVersion;ulong GdiHandleBuffer[34];ulong PostProcessInitRoutine;ulong TlsExpansionBitmap;byte TlsExpansionBitmapBits[128];ulong SessionId')
Local $tUPP = DllStructCreate('ulong AllocationSize;ulong ActualSize;ulong Flags;ulong Unknown1;ushort LengthUnknown2;ushort MaxLengthUnknown2;ptr Unknown2;ptr InputHandle;ptr OutputHandle;ptr ErrorHandle;ushort LengthCurrentDirectory;ushort MaxLengthCurrentDirectory;ptr CurrentDirectory;ptr CurrentDirectoryHandle;ushort LengthSearchPaths;ushort MaxLengthSearchPaths;ptr SearchPaths;ushort LengthApplicationName;ushort MaxLengthApplicationName;ptr ApplicationName;ushort LengthCommandLine;ushort MaxLengthCommandLine;ptr CommandLine;ptr EnvironmentBlock;ulong Unknown[9];ushort LengthUnknown3;ushort MaxLengthUnknown3;ptr Unknown3;ushort LengthUnknown4;ushort MaxLengthUnknown4;ptr Unknown4;ushort LengthUnknown5;ushort MaxLengthUnknown5;ptr Unknown5')
Local $tCMD
Local $aCall, $iError = 0
Do
$aCall = DllCall('ntdll.dll', 'long', 'NtQueryInformationProcess', 'handle', $hProcess, 'ulong', 0, 'struct*', $tPBI,  'ulong', DllStructGetSize($tPBI), 'ulong*', 0)
If @error Or $aCall[0] Then
$iError = @error + 30
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tPBI, 'PebBaseAddress'), 'struct*', $tPEB,  'ulong_ptr', DllStructGetSize($tPEB), 'ulong_ptr*', 0)
If @error Or Not $aCall[0] Or (Not $aCall[5]) Then
$iError = @error + 40
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tPEB, 'ProcessParameters'), 'struct*', $tUPP,  'ulong_ptr', DllStructGetSize($tUPP), 'ulong_ptr*', 0)
If @error Or Not $aCall[0] Or (Not $aCall[5]) Then
$iError = @error + 50
ExitLoop
EndIf
$tCMD = DllStructCreate('byte[' & DllStructGetData($tUPP, 'MaxLengthCommandLine') & ']')
If @error Then
$iError = @error + 60
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tUPP, 'CommandLine'), 'struct*', $tCMD,  'ulong_ptr', DllStructGetSize($tCMD), 'ulong_ptr*', 0)
If @error Or Not $aCall[0] Or (Not $aCall[5]) Then
$iError = @error + 70
ExitLoop
EndIf
Until 1
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
If $iError Then Return SetError($iError, 0, '')
Return StringStripWS(_WinAPI_PathGetArgs(_WinAPI_GetString(DllStructGetPtr($tCMD, 1))), $STR_STRIPLEADING + $STR_STRIPTRAILING)
EndFunc
Func _WinAPI_GetProcessFileName($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000410 : 0x00001010),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')
Local $sPath = _WinAPI_GetModuleFileNameEx($hProcess[0])
Local $iError = @error
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
If $iError Then Return SetError(@error, 0, '')
Return $sPath
EndFunc
Func _WinAPI_GetProcessHandleCount($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetProcessHandleCount', 'handle', $hProcess[0], 'dword*', 0)
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetProcessID($hProcess)
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetProcessId', 'handle', $hProcess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetProcessIoCounters($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $tIO_COUNTERS = DllStructCreate('uint64[6]')
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetProcessIoCounters', 'handle', $hProcess[0], 'struct*', $tIO_COUNTERS)
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, 0)
Local $aRet[6]
For $i = 0 To 5
$aRet[$i] = DllStructGetData($tIO_COUNTERS, 1, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetProcessMemoryInfo($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000410 : 0x00001010),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $tPMC_EX = DllStructCreate('dword;dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr')
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetProcessMemoryInfo', 'handle', $hProcess[0], 'struct*', $tPMC_EX,  'int', DllStructGetSize($tPMC_EX))
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, 0)
Local $aRet[10]
For $i = 0 To 9
$aRet[$i] = DllStructGetData($tPMC_EX, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_GetProcessName($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
If @error Or Not $hSnapshot[0] Then Return SetError(@error + 20, @extended, '')
$hSnapshot = $hSnapshot[0]
Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
Local $aCall = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
Local $iError = @error
While (Not @error) And ($aCall[0])
If DllStructGetData($tPROCESSENTRY32, 'ProcessID') = $iPID Then
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
$iError = @error
WEnd
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
If $iError Then Return SetError($iError, 0, '')
If Not $aCall[0] Then SetError(10, 0, '')
Return DllStructGetData($tPROCESSENTRY32, 'ExeFile')
EndFunc
Func _WinAPI_GetProcessTimes($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Local $tFILETIME = DllStructCreate($tagFILETIME)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetProcessTimes', 'handle', $hProcess[0], 'struct*', $tFILETIME, 'uint64*', 0,  'uint64*', 0, 'uint64*', 0)
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, 0)
Local $aRet[3]
$aRet[0] = $tFILETIME
$aRet[1] = $aCall[4]
$aRet[2] = $aCall[5]
Return $aRet
EndFunc
Func _WinAPI_GetProcessUser($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $tSID, $hToken, $aCall
Local $iError = 0
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
Do
$hToken = _WinAPI_OpenProcessToken(0x00000008, $hProcess[0])
If Not $hToken Then
$iError = @error + 10
ExitLoop
EndIf
$tSID = DllStructCreate('ptr;byte[1024]')
$aCall = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 1, 'struct*', $tSID,  'dword', DllStructGetSize($tSID), 'dword*', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 30
ExitLoop
EndIf
$aCall = DllCall('advapi32.dll', 'bool', 'LookupAccountSidW', 'ptr', 0, 'ptr', DllStructGetData($tSID, 1), 'wstr', '',  'dword*', 2048, 'wstr', '', 'dword*', 2048, 'uint*', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 40
ExitLoop
EndIf
Until 1
If $hToken Then
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
If $iError Then Return SetError($iError, 0, 0)
Local $aRet[2]
$aRet[0] = $aCall[3]
$aRet[1] = $aCall[5]
Return $aRet
EndFunc
Func _WinAPI_GetProcessWorkingDirectory($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $aCall, $iError = 0
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000410 : 0x00001010), 'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')
$hProcess = $hProcess[0]
Local $tPBI = DllStructCreate('ulong_ptr ExitStatus;ptr PebBaseAddress;ulong_ptr AffinityMask;ulong_ptr BasePriority;ulong_ptr UniqueProcessId;ulong_ptr InheritedFromUniqueProcessId')
Local $tPEB = DllStructCreate('byte InheritedAddressSpace;byte ReadImageFileExecOptions;byte BeingDebugged;byte Spare;ptr Mutant;ptr ImageBaseAddress;ptr LoaderData;ptr ProcessParameters;ptr SubSystemData;ptr ProcessHeap;ptr FastPebLock;ptr FastPebLockRoutine;ptr FastPebUnlockRoutine;ulong EnvironmentUpdateCount;ptr KernelCallbackTable;ptr EventLogSection;ptr EventLog;ptr FreeList;ulong TlsExpansionCounter;ptr TlsBitmap;ulong TlsBitmapBits[2];ptr ReadOnlySharedMemoryBase;ptr ReadOnlySharedMemoryHeap;ptr ReadOnlyStaticServerData;ptr AnsiCodePageData;ptr OemCodePageData;ptr UnicodeCaseTableData;ulong NumberOfProcessors;ulong NtGlobalFlag;byte Spare2[4];int64 CriticalSectionTimeout;ulong HeapSegmentReserve;ulong HeapSegmentCommit;ulong HeapDeCommitTotalFreeThreshold;ulong HeapDeCommitFreeBlockThreshold;ulong NumberOfHeaps;ulong MaximumNumberOfHeaps;ptr ProcessHeaps;ptr GdiSharedHandleTable;ptr ProcessStarterHelper;ptr GdiDCAttributeList;ptr LoaderLock;ulong OSMajorVersion;ulong OSMinorVersion;ulong OSBuildNumber;ulong OSPlatformId;ulong ImageSubSystem;ulong ImageSubSystemMajorVersion;ulong ImageSubSystemMinorVersion;ulong GdiHandleBuffer[34];ulong PostProcessInitRoutine;ulong TlsExpansionBitmap;byte TlsExpansionBitmapBits[128];ulong SessionId')
Local $tUPP = DllStructCreate('ulong AllocationSize;ulong ActualSize;ulong Flags;ulong Unknown1;ushort LengthUnknown2;ushort MaxLengthUnknown2;ptr Unknown2;ptr InputHandle;ptr OutputHandle;ptr ErrorHandle;ushort LengthCurrentDirectory;ushort MaxLengthCurrentDirectory;ptr CurrentDirectory;ptr CurrentDirectoryHandle;ushort LengthSearchPaths;ushort MaxLengthSearchPaths;ptr SearchPaths;ushort LengthApplicationName;ushort MaxLengthApplicationName;ptr ApplicationName;ushort LengthCommandLine;ushort MaxLengthCommandLine;ptr CommandLine;ptr EnvironmentBlock;ulong Unknown[9];ushort LengthUnknown3;ushort MaxLengthUnknown3;ptr Unknown3;ushort LengthUnknown4;ushort MaxLengthUnknown4;ptr Unknown4;ushort LengthUnknown5;ushort MaxLengthUnknown5;ptr Unknown5')
Local $tDIR
Do
$aCall = DllCall('ntdll.dll', 'long', 'NtQueryInformationProcess', 'handle', $hProcess, 'ulong', 0, 'struct*', $tPBI,  'ulong', DllStructGetSize($tPBI), 'ulong*', 0)
If @error Or ($aCall[0]) Then
$iError = @error + 10
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tPBI, 'PebBaseAddress'), 'struct*', $tPEB,  'ulong_ptr', DllStructGetSize($tPEB), 'ulong_ptr*', 0)
If @error Or (Not $aCall[0]) Or (Not $aCall[5]) Then
$iError = @error + 30
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tPEB, 'ProcessParameters'), 'struct*', $tUPP,  'ulong_ptr', DllStructGetSize($tUPP), 'ulong_ptr*', 0)
If @error Or (Not $aCall[0]) Or (Not $aCall[5]) Then
$iError = @error + 40
ExitLoop
EndIf
$tDIR = DllStructCreate('byte[' & DllStructGetData($tUPP, 'MaxLengthCurrentDirectory') & ']')
If @error Then
$iError = @error + 50
ExitLoop
EndIf
$aCall = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess,  'ptr', DllStructGetData($tUPP, 'CurrentDirectory'), 'struct*', $tDIR,  'ulong_ptr', DllStructGetSize($tDIR), 'ulong_ptr*', 0)
If @error Or (Not $aCall[0]) Or (Not $aCall[5]) Then
$iError = @error + 60
ExitLoop
EndIf
$iError = 0
Until 1
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
If $iError Then Return SetError($iError, 0, '')
Return _WinAPI_PathRemoveBackslash(_WinAPI_GetString(DllStructGetPtr($tDIR)))
EndFunc
Func _WinAPI_GetThreadDesktop($iThreadId)
Local $aCall = DllCall('user32.dll', 'handle', 'GetThreadDesktop', 'dword', $iThreadId)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetThreadErrorMode()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetThreadErrorMode')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowFileName($hWnd)
Local $iPID = 0
Local $aCall = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hWnd)
If $aCall[0] Then
$aCall = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
$iPID = $aCall[2]
EndIf
If Not $iPID Then Return SetError(1, 0, '')
Local $sResult = _WinAPI_GetProcessFileName($iPID)
If @error Then Return SetError(@error, @extended, '')
Return $sResult
EndFunc
Func _WinAPI_IsElevated()
Local $iElev, $aCall, $iError = 0
Local $hToken = _WinAPI_OpenProcessToken(0x0008)
If Not $hToken Then Return SetError(@error + 10, @extended, False)
Do
$aCall = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 20, 'uint*', 0, 'dword', 4,  'dword*', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 10
ExitLoop
EndIf
$iElev = $aCall[3]
$aCall = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 18, 'uint*', 0, 'dword', 4,  'dword*', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 20
ExitLoop
EndIf
Until 1
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
If $iError Then Return SetError($iError, 0, False)
Return SetExtended($aCall[0] - 1, $iElev)
EndFunc
Func _WinAPI_IsProcessInJob($hProcess, $hJob = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsProcessInJob', 'handle', $hProcess, 'handle', $hJob, 'bool*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
Return $aCall[3]
EndFunc
Func _WinAPI_OpenJobObject($sName, $iAccess = $JOB_OBJECT_ALL_ACCESS, $bInherit = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'OpenJobObjectW', 'dword', $iAccess, 'bool', $bInherit, 'wstr', $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenMutex($sMutex, $iAccess = $MUTEX_ALL_ACCESS, $bInherit = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'OpenMutexW', 'dword', $iAccess, 'bool', $bInherit, 'wstr', $sMutex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenProcess($iAccess, $bInherit, $iPID, $bDebugPriv = False)
Local $aCall = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return $aCall[0]
If Not $bDebugPriv Then Return SetError(100, 0, 0)
Local $hToken = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
If @error Then Return SetError(@error + 10, @extended, 0)
_Security__SetPrivilege($hToken, $SE_DEBUG_NAME, True)
Local $iError = @error
Local $iExtended = @extended
Local $iRet = 0
If Not @error Then
$aCall = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
$iError = @error
$iExtended = @extended
If $aCall[0] Then $iRet = $aCall[0]
_Security__SetPrivilege($hToken, $SE_DEBUG_NAME, False)
If @error Then
$iError = @error + 20
$iExtended = @extended
EndIf
Else
$iError = @error + 30
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
Return SetError($iError, $iExtended, $iRet)
EndFunc
Func _WinAPI_OpenProcessToken($iAccess, $hProcess = 0)
If Not $hProcess Then
$hProcess = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
$hProcess = $hProcess[0]
EndIf
Local $aCall = DllCall('advapi32.dll', 'bool', 'OpenProcessToken', 'handle', $hProcess, 'dword', $iAccess, 'handle*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[3]
EndFunc
Func _WinAPI_OpenSemaphore($sSemaphore, $iAccess = 0x001F0003, $bInherit = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'OpenSemaphoreW', 'dword', $iAccess, 'bool', $bInherit, 'wstr', $sSemaphore)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_QueryInformationJobObject($hJob, $iJobObjectInfoClass, ByRef $tJobObjectInfo)
Local $aCall = DllCall('kernel32.dll', 'bool', 'QueryInformationJobObject', 'handle', $hJob, 'int', $iJobObjectInfoClass,  'struct*', $tJobObjectInfo, 'dword', DllStructGetSize($tJobObjectInfo), 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[5]
EndFunc
Func _WinAPI_ReleaseMutex($hMutex)
Local $aCall = DllCall('kernel32.dll', 'bool', 'ReleaseMutex', 'handle', $hMutex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ReleaseSemaphore($hSemaphore, $iIncrease = 1)
Local $aCall = DllCall('kernel32.dll', 'bool', 'ReleaseSemaphore', 'handle', $hSemaphore, 'long', $iIncrease, 'long*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[3]
EndFunc
Func _WinAPI_ResetEvent($hEvent)
Local $aCall = DllCall('kernel32.dll', 'bool', 'ResetEvent', 'handle', $hEvent)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetEvent($hEvent)
Local $aCall = DllCall("kernel32.dll", "bool", "SetEvent", "handle", $hEvent)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetInformationJobObject($hJob, $iJobObjectInfoClass, $tJobObjectInfo)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetInformationJobObject', 'handle', $hJob, 'int', $iJobObjectInfoClass,  'struct*', $tJobObjectInfo, 'dword', DllStructGetSize($tJobObjectInfo))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetPriorityClass($iPriority, $iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', ((_WinAPI_GetVersion() < 6.0) ? 0x00000600 : 0x00001200),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 10, @extended, 0)
Local $iError = 0
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetPriorityClass', 'handle', $hProcess[0], 'dword', $iPriority)
If @error Then $iError = @error
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetProcessAffinityMask($hProcess, $iMask)
Local $aCall = DllCall("kernel32.dll", "bool", "SetProcessAffinityMask", "handle", $hProcess, "ulong_ptr", $iMask)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetThreadDesktop($hDesktop)
Local $aCall = DllCall('user32.dll', 'bool', 'SetThreadDesktop', 'handle', $hDesktop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetThreadErrorMode($iMode)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetThreadErrorMode', 'dword', $iMode, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_SetThreadExecutionState($iFlags)
Local $aCall = DllCall('kernel32.dll', 'dword', 'SetThreadExecutionState', 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_TerminateJobObject($hJob, $iExitCode = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'TerminateJobObject', 'handle', $hJob, 'uint', $iExitCode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_TerminateProcess($hProcess, $iExitCode = 0)
Local $aCall = DllCall('kernel32.dll', 'bool', 'TerminateProcess', 'handle', $hProcess, 'uint', $iExitCode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UserHandleGrantAccess($hObject, $hJob, $bGrant)
Local $aCall = DllCall('kernel32.dll', 'bool', 'UserHandleGrantAccess', 'handle', $hObject, 'handle', $hJob, 'bool', $bGrant)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_WaitForInputIdle($hProcess, $iTimeout = -1)
Local $aCall = DllCall("user32.dll", "dword", "WaitForInputIdle", "handle", $hProcess, "dword", $iTimeout)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_WaitForMultipleObjects($iCount, $paHandles, $bWaitAll = False, $iTimeout = -1)
Local $aCall = DllCall("kernel32.dll", "INT", "WaitForMultipleObjects", "dword", $iCount, "struct*", $paHandles, "bool", $bWaitAll, "dword", $iTimeout)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_WaitForSingleObject($hHandle, $iTimeout = -1)
Local $aCall = DllCall("kernel32.dll", "INT", "WaitForSingleObject", "handle", $hHandle, "dword", $iTimeout)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_WriteConsole($hConsole, $sText)
Local $aCall = DllCall("kernel32.dll", "bool", "WriteConsoleW", "handle", $hConsole, "wstr", $sText,  "dword", StringLen($sText), "dword*", 0, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
Global Const $LINGUISTIC_IGNORECASE = 0x00000010
Global Const $LINGUISTIC_IGNOREDIACRITIC = 0x00000020
Global Const $NORM_IGNORECASE = 0x00000001
Global Const $NORM_IGNOREKANATYPE = 0x00010000
Global Const $NORM_IGNORENONSPACE = 0x00000002
Global Const $NORM_IGNORESYMBOLS = 0x00000004
Global Const $NORM_IGNOREWIDTH = 0x00020000
Global Const $NORM_LINGUISTIC_CASING = 0x08000000
Global Const $SORT_DIGITSASNUMBERS = 0x00000008
Global Const $SORT_STRINGSORT = 0x00001000
Global Const $CSTR_LESS_THAN = 1
Global Const $CSTR_EQUAL = 2
Global Const $CSTR_GREATER_THAN = 3
Global Const $MUI_LANGUAGE_ID = 0x0004
Global Const $MUI_LANGUAGE_NAME = 0x0008
Global Const $DATE_AUTOLAYOUT = 0x40
Global Const $DATE_LONGDATE = 0x02
Global Const $DATE_LTRREADING = 0x10
Global Const $DATE_SHORTDATE = 0x01
Global Const $DATE_RTLREADING = 0x20
Global Const $DATE_USE_ALT_CALENDAR = 0x04
Global Const $DATE_YEARMONTH = 0x08
Global Const $GEO_NATION = 1
Global Const $GEO_LATITUDE = 2
Global Const $GEO_LONGITUDE = 3
Global Const $GEO_ISO2 = 4
Global Const $GEO_ISO3 = 5
Global Const $GEO_RFC1766 = 6
Global Const $GEO_LCID = 7
Global Const $GEO_FRIENDLYNAME = 8
Global Const $GEO_OFFICIALNAME = 9
Global Const $GEO_TIMEZONES = 10
Global Const $GEO_OFFICIALLANGUAGES = 11
Global Const $GEO_ISO_UN_NUMBER = 12
Global Const $GEO_PARENT = 13
Global Const $LOCALE_ILANGUAGE = 0x0001
Global Const $LOCALE_SLANGUAGE = 0x0002
Global Const $LOCALE_SENGLANGUAGE = 0x1001
Global Const $LOCALE_SABBREVLANGNAME = 0x0003
Global Const $LOCALE_SNATIVELANGNAME = 0x0004
Global Const $LOCALE_ICOUNTRY = 0x0005
Global Const $LOCALE_SCOUNTRY = 0x0006
Global Const $LOCALE_SENGCOUNTRY = 0x1002
Global Const $LOCALE_SABBREVCTRYNAME = 0x0007
Global Const $LOCALE_SNATIVECTRYNAME = 0x0008
Global Const $LOCALE_IDEFAULTLANGUAGE = 0x0009
Global Const $LOCALE_IDEFAULTCOUNTRY = 0x000A
Global Const $LOCALE_IDEFAULTCODEPAGE = 0x000B
Global Const $LOCALE_IDEFAULTANSICODEPAGE = 0x1004
Global Const $LOCALE_IDEFAULTMACCODEPAGE = 0x1011
Global Const $LOCALE_SLIST = 0x000C
Global Const $LOCALE_IMEASURE = 0x000D
Global Const $LOCALE_SDECIMAL = 0x000E
Global Const $LOCALE_STHOUSAND = 0x000F
Global Const $LOCALE_SGROUPING = 0x0010
Global Const $LOCALE_IDIGITS = 0x0011
Global Const $LOCALE_ILZERO = 0x0012
Global Const $LOCALE_INEGNUMBER = 0x1010
Global Const $LOCALE_SNATIVEDIGITS = 0x0013
Global Const $LOCALE_SCURRENCY = 0x0014
Global Const $LOCALE_SINTLSYMBOL = 0x0015
Global Const $LOCALE_SMONDECIMALSEP = 0x0016
Global Const $LOCALE_SMONTHOUSANDSEP = 0x0017
Global Const $LOCALE_SMONGROUPING = 0x0018
Global Const $LOCALE_ICURRDIGITS = 0x0019
Global Const $LOCALE_IINTLCURRDIGITS = 0x001A
Global Const $LOCALE_ICURRENCY = 0x001B
Global Const $LOCALE_INEGCURR = 0x001C
Global Const $LOCALE_SDATE = 0x001D
Global Const $LOCALE_STIME = 0x001E
Global Const $LOCALE_SSHORTDATE = 0x001F
Global Const $LOCALE_SLONGDATE = 0x0020
Global Const $LOCALE_STIMEFORMAT = 0x1003
Global Const $LOCALE_IDATE = 0x0021
Global Const $LOCALE_ILDATE = 0x0022
Global Const $LOCALE_ITIME = 0x0023
Global Const $LOCALE_ITIMEMARKPOSN = 0x1005
Global Const $LOCALE_ICENTURY = 0x0024
Global Const $LOCALE_ITLZERO = 0x0025
Global Const $LOCALE_IDAYLZERO = 0x0026
Global Const $LOCALE_IMONLZERO = 0x0027
Global Const $LOCALE_S1159 = 0x0028
Global Const $LOCALE_S2359 = 0x0029
Global Const $LOCALE_ICALENDARTYPE = 0x1009
Global Const $LOCALE_IOPTIONALCALENDAR = 0x100B
Global Const $LOCALE_IFIRSTDAYOFWEEK = 0x100C
Global Const $LOCALE_IFIRSTWEEKOFYEAR = 0x100D
Global Const $LOCALE_SDAYNAME1 = 0x002A
Global Const $LOCALE_SDAYNAME2 = 0x002B
Global Const $LOCALE_SDAYNAME3 = 0x002C
Global Const $LOCALE_SDAYNAME4 = 0x002D
Global Const $LOCALE_SDAYNAME5 = 0x002E
Global Const $LOCALE_SDAYNAME6 = 0x002F
Global Const $LOCALE_SDAYNAME7 = 0x0030
Global Const $LOCALE_SABBREVDAYNAME1 = 0x0031
Global Const $LOCALE_SABBREVDAYNAME2 = 0x0032
Global Const $LOCALE_SABBREVDAYNAME3 = 0x0033
Global Const $LOCALE_SABBREVDAYNAME4 = 0x0034
Global Const $LOCALE_SABBREVDAYNAME5 = 0x0035
Global Const $LOCALE_SABBREVDAYNAME6 = 0x0036
Global Const $LOCALE_SABBREVDAYNAME7 = 0x0037
Global Const $LOCALE_SMONTHNAME1 = 0x0038
Global Const $LOCALE_SMONTHNAME2 = 0x0039
Global Const $LOCALE_SMONTHNAME3 = 0x003A
Global Const $LOCALE_SMONTHNAME4 = 0x003B
Global Const $LOCALE_SMONTHNAME5 = 0x003C
Global Const $LOCALE_SMONTHNAME6 = 0x003D
Global Const $LOCALE_SMONTHNAME7 = 0x003E
Global Const $LOCALE_SMONTHNAME8 = 0x003F
Global Const $LOCALE_SMONTHNAME9 = 0x0040
Global Const $LOCALE_SMONTHNAME10 = 0x0041
Global Const $LOCALE_SMONTHNAME11 = 0x0042
Global Const $LOCALE_SMONTHNAME12 = 0x0043
Global Const $LOCALE_SMONTHNAME13 = 0x100E
Global Const $LOCALE_SABBREVMONTHNAME1 = 0x0044
Global Const $LOCALE_SABBREVMONTHNAME2 = 0x0045
Global Const $LOCALE_SABBREVMONTHNAME3 = 0x0046
Global Const $LOCALE_SABBREVMONTHNAME4 = 0x0047
Global Const $LOCALE_SABBREVMONTHNAME5 = 0x0048
Global Const $LOCALE_SABBREVMONTHNAME6 = 0x0049
Global Const $LOCALE_SABBREVMONTHNAME7 = 0x004A
Global Const $LOCALE_SABBREVMONTHNAME8 = 0x004B
Global Const $LOCALE_SABBREVMONTHNAME9 = 0x004C
Global Const $LOCALE_SABBREVMONTHNAME10 = 0x004D
Global Const $LOCALE_SABBREVMONTHNAME11 = 0x004E
Global Const $LOCALE_SABBREVMONTHNAME12 = 0x004F
Global Const $LOCALE_SABBREVMONTHNAME13 = 0x100F
Global Const $LOCALE_SPOSITIVESIGN = 0x0050
Global Const $LOCALE_SNEGATIVESIGN = 0x0051
Global Const $LOCALE_IPOSSIGNPOSN = 0x0052
Global Const $LOCALE_INEGSIGNPOSN = 0x0053
Global Const $LOCALE_IPOSSYMPRECEDES = 0x0054
Global Const $LOCALE_IPOSSEPBYSPACE = 0x0055
Global Const $LOCALE_INEGSYMPRECEDES = 0x0056
Global Const $LOCALE_INEGSEPBYSPACE = 0x0057
Global Const $LOCALE_FONTSIGNATURE = 0x0058
Global Const $LOCALE_SISO639LANGNAME = 0x0059
Global Const $LOCALE_SISO3166CTRYNAME = 0x005A
Global Const $LOCALE_IDEFAULTEBCDICCODEPAGE = 0x1012
Global Const $LOCALE_IPAPERSIZE = 0x100A
Global Const $LOCALE_SENGCURRNAME = 0x1007
Global Const $LOCALE_SNATIVECURRNAME = 0x1008
Global Const $LOCALE_SYEARMONTH = 0x1006
Global Const $LOCALE_SSORTNAME = 0x1013
Global Const $LOCALE_IDIGITSUBSTITUTION = 0x1014
Global Const $LOCALE_CUSTOM_DEFAULT = 0x0C00
Global Const $LOCALE_CUSTOM_UI_DEFAULT = 0x1400
Global Const $LOCALE_CUSTOM_UNSPECIFIED = 0x1000
Global Const $LOCALE_INVARIANT = 0x007F
Global Const $LOCALE_SYSTEM_DEFAULT = 0x0800
Global Const $LOCALE_USER_DEFAULT = 0x0400
Global Const $TIME_FORCE24HOURFORMAT = 0x08
Global Const $TIME_NOMINUTESORSECONDS = 0x01
Global Const $TIME_NOSECONDS = 0x02
Global Const $TIME_NOTIMEMARKER = 0x04
Global Const $LCID_INSTALLED = 1
Global Const $LCID_SUPPORTED = 2
Global Const $RT_ACCELERATOR = 9
Global Const $RT_ANICURSOR = 21
Global Const $RT_ANIICON = 22
Global Const $RT_BITMAP = 2
Global Const $RT_CURSOR = 1
Global Const $RT_DIALOG = 5
Global Const $RT_DLGINCLUDE = 17
Global Const $RT_FONT = 8
Global Const $RT_FONTDIR = 7
Global Const $RT_GROUP_CURSOR = 12
Global Const $RT_GROUP_ICON = 14
Global Const $RT_HTML = 23
Global Const $RT_ICON = 3
Global Const $RT_MANIFEST = 24
Global Const $RT_MENU = 4
Global Const $RT_MESSAGETABLE = 11
Global Const $RT_PLUGPLAY = 19
Global Const $RT_RCDATA = 10
Global Const $RT_STRING = 6
Global Const $RT_VERSION = 16
Global Const $RT_VXD = 20
Global Const $FILE_VER_GET_LOCALISED = 0x01
Global Const $FILE_VER_GET_NEUTRAL = 0x02
Global Const $FILE_VER_GET_PREFETCHED = 0x04
Global Const $OBM_TRTYPE = 32732
Global Const $OBM_LFARROWI = 32734
Global Const $OBM_RGARROWI = 32735
Global Const $OBM_DNARROWI = 32736
Global Const $OBM_UPARROWI = 32737
Global Const $OBM_COMBO = 32738
Global Const $OBM_MNARROW = 32739
Global Const $OBM_LFARROWD = 32740
Global Const $OBM_RGARROWD = 32741
Global Const $OBM_DNARROWD = 32742
Global Const $OBM_UPARROWD = 32743
Global Const $OBM_RESTORED = 32744
Global Const $OBM_ZOOMD = 32745
Global Const $OBM_REDUCED = 32746
Global Const $OBM_RESTORE = 32747
Global Const $OBM_ZOOM = 32748
Global Const $OBM_REDUCE = 32749
Global Const $OBM_LFARROW = 32750
Global Const $OBM_RGARROW = 32751
Global Const $OBM_DNARROW = 32752
Global Const $OBM_UPARROW = 32753
Global Const $OBM_CLOSE = 32754
Global Const $OBM_OLD_RESTORE = 32755
Global Const $OBM_OLD_ZOOM = 32756
Global Const $OBM_OLD_REDUCE = 32757
Global Const $OBM_BTNCORNERS = 32758
Global Const $OBM_CHECKBOXES = 32759
Global Const $OBM_CHECK = 32760
Global Const $OBM_BTSIZE = 32761
Global Const $OBM_OLD_LFARROW = 32762
Global Const $OBM_OLD_RGARROW = 32763
Global Const $OBM_OLD_DNARROW = 32764
Global Const $OBM_OLD_UPARROW = 32765
Global Const $OBM_SIZE = 32766
Global Const $OBM_OLD_CLOSE = 32767
Global Const $OIC_SAMPLE = 32512
Global Const $OIC_HAND = 32513
Global Const $OIC_QUES = 32514
Global Const $OIC_BANG = 32515
Global Const $OIC_NOTE = 32516
Global Const $OIC_WINLOGO = 32517
Global Const $OIC_WARNING = $OIC_BANG
Global Const $OIC_ERROR = $OIC_HAND
Global Const $OIC_INFORMATION = $OIC_NOTE
Global Const $DONT_RESOLVE_DLL_REFERENCES = 0x01
Global Const $LOAD_LIBRARY_AS_DATAFILE = 0x02
Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 0x08
Global Const $LOAD_IGNORE_CODE_AUTHZ_LEVEL = 0x00000010
Global Const $LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 0x00000040
Global Const $LOAD_LIBRARY_AS_IMAGE_RESOURCE = 0x00000020
Global Const $LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 0x00000200
Global Const $LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 0x00001000
Global Const $LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 0x00000100
Global Const $LOAD_LIBRARY_SEARCH_SYSTEM32 = 0x00000800
Global Const $LOAD_LIBRARY_SEARCH_USER_DIRS = 0x00000400
Global Const $OCR_NORMAL = 32512
Global Const $OCR_IBEAM = 32513
Global Const $OCR_WAIT = 32514
Global Const $OCR_CROSS = 32515
Global Const $OCR_UP = 32516
Global Const $OCR_SIZE = 32640
Global Const $OCR_ICON = 32641
Global Const $OCR_SIZENWSE = 32642
Global Const $OCR_SIZENESW = 32643
Global Const $OCR_SIZEWE = 32644
Global Const $OCR_SIZENS = 32645
Global Const $OCR_SIZEALL = 32646
Global Const $OCR_ICOCUR = 32647
Global Const $OCR_NO = 32648
Global Const $OCR_HAND = 32649
Global Const $OCR_APPSTARTING = 32650
Global Const $OCR_HELP = 32651
Global Const $VS_FF_DEBUG = 0x00000001
Global Const $VS_FF_INFOINFERRED = 0x00000010
Global Const $VS_FF_PATCHED = 0x00000004
Global Const $VS_FF_PRERELEASE = 0x00000002
Global Const $VS_FF_PRIVATEBUILD = 0x00000008
Global Const $VS_FF_SPECIALBUILD = 0x00000020
Global Const $VOS_DOS = 0x00010000
Global Const $VOS_NT = 0x00040000
Global Const $VOS__WINDOWS16 = 0x00000001
Global Const $VOS__WINDOWS32 = 0x00000004
Global Const $VOS_OS216 = 0x00020000
Global Const $VOS_OS232 = 0x00030000
Global Const $VOS__PM16 = 0x00000002
Global Const $VOS__PM32 = 0x00000003
Global Const $VOS_UNKNOWN = 0x00000000
Global Const $VOS_DOS_WINDOWS16 = 0x00010001
Global Const $VOS_DOS_WINDOWS32 = 0x00010004
Global Const $VOS_NT_WINDOWS32 = 0x00040004
Global Const $VOS_OS216_PM16 = 0x00020002
Global Const $VOS_OS232_PM32 = 0x00030003
Global Const $VFT_APP = 0x00000001
Global Const $VFT_DLL = 0x00000002
Global Const $VFT_DRV = 0x00000003
Global Const $VFT_FONT = 0x00000004
Global Const $VFT_STATIC_LIB = 0x00000007
Global Const $VFT_UNKNOWN = 0x00000000
Global Const $VFT_VXD = 0x00000005
Global Const $VFT2_DRV_COMM = 0x0000000A
Global Const $VFT2_DRV_DISPLAY = 0x00000004
Global Const $VFT2_DRV_INSTALLABLE = 0x00000008
Global Const $VFT2_DRV_KEYBOARD = 0x00000002
Global Const $VFT2_DRV_LANGUAGE = 0x00000003
Global Const $VFT2_DRV_MOUSE = 0x00000005
Global Const $VFT2_DRV_NETWORK = 0x00000006
Global Const $VFT2_DRV_PRINTER = 0x00000001
Global Const $VFT2_DRV_SOUND = 0x00000009
Global Const $VFT2_DRV_SYSTEM = 0x00000007
Global Const $VFT2_DRV_VERSIONED_PRINTER = 0x0000000C
Global Const $VFT2_UNKNOWN = 0x00000000
Global Const $VFT2_FONT_RASTER = 0x00000001
Global Const $VFT2_FONT_TRUETYPE = 0x00000003
Global Const $VFT2_FONT_VECTOR = 0x00000002
#Region Global Variables and Constants
Global $__g_vVal
Global Const $tagVS_FIXEDFILEINFO = 'dword Signature;dword StrucVersion;dword FileVersionMS;dword FileVersionLS;dword ProductVersionMS;dword ProductVersionLS;dword FileFlagsMask;dword FileFlags;dword FileOS;dword FileType;dword FileSubtype;dword FileDateMS;dword FileDateLS'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_BeginUpdateResource($sFilePath, $bDelete = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'BeginUpdateResourceW', 'wstr', $sFilePath, 'bool', $bDelete)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ClipCursor($tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'ClipCursor', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyCursor($hCursor)
Return _WinAPI_CopyIcon($hCursor)
EndFunc
Func _WinAPI_CreateCaret($hWnd, $hBitmap, $iWidth = 0, $iHeight = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'CreateCaret', 'hwnd', $hWnd, 'handle', $hBitmap, 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyCaret()
Local $aCall = DllCall('user32.dll', 'bool', 'DestroyCaret')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyCursor($hCursor)
Local $aCall = DllCall('user32.dll', 'bool', 'DestroyCursor', 'handle', $hCursor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EndUpdateResource($hUpdate, $bDiscard = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'EndUpdateResourceW', 'handle', $hUpdate, 'bool', $bDiscard)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumResourceLanguages($hModule, $sType, $sName)
Local $iLibrary = 0, $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Dim $__g_vEnum[101] = [0]
Local $hEnumProc = DllCallbackRegister('__EnumResLanguagesProc', 'bool', 'handle;ptr;ptr;word;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceLanguagesW', 'handle', $hModule, $sTypeOfType, $sType,  $sTypeOfName, $sName, 'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumResourceNames($hModule, $sType)
Local $aCall, $hEnumProc, $iLibrary = 0, $sTypeOfType = 'int'
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
Dim $__g_vEnum[101] = [0]
$hEnumProc = DllCallbackRegister('__EnumResNamesProc', 'bool', 'handle;ptr;ptr;long_ptr')
$aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceNamesW', 'handle', $hModule, $sTypeOfType, $sType,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or (Not $__g_vEnum[0]) Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumResourceTypes($hModule)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Dim $__g_vEnum[101] = [0]
Local $hEnumProc = DllCallbackRegister('__EnumResTypesProc', 'bool', 'handle;ptr;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceTypesW', 'handle', $hModule,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or (Not $__g_vEnum[0]) Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_FindResource($hInstance, $sType, $sName)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindResourceW', 'handle', $hInstance, $sTypeOfName, $sName, $sTypeOfType, $sType)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindResourceEx($hInstance, $sType, $sName, $iLanguage)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindResourceExW', 'handle', $hInstance, $sTypeOfType, $sType,  $sTypeOfName, $sName, 'ushort', $iLanguage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FreeResource($hData)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FreeResource', 'handle', $hData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCaretBlinkTime()
Local $aCall = DllCall('user32.dll', 'uint', 'GetCaretBlinkTime')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCaretPos()
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetCaretPos', 'struct*', $tPOINT)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
Local $aRet[2]
For $i = 0 To 1
$aRet[$i] = DllStructGetData($tPOINT, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetClipCursor()
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetClipCursor', 'struct*', $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetCursor()
Local $aCall = DllCall('user32.dll', 'handle', 'GetCursor')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetFileVersionInfo($sFilePath, ByRef $pBuffer, $iFlags = 0)
Local $aCall
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall('version.dll', 'dword', 'GetFileVersionInfoSizeExW', 'dword', BitAND($iFlags, 0x03), 'wstr', $sFilePath,  'ptr', 0)
Else
$aCall = DllCall('version.dll', 'dword', 'GetFileVersionInfoSizeW', 'wstr', $sFilePath, 'ptr', 0)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$pBuffer = __HeapReAlloc($pBuffer, $aCall[0], 1)
If @error Then Return SetError(@error + 100, @extended, 0)
Local $iNbByte = $aCall[0]
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall('version.dll', 'bool', 'GetFileVersionInfoExW', 'dword', BitAND($iFlags, 0x07), 'wstr', $sFilePath,  'dword', 0, 'dword', $iNbByte, 'ptr', $pBuffer)
Else
$aCall = DllCall('version.dll', 'bool', 'GetFileVersionInfoW', 'wstr', $sFilePath,  'dword', 0, 'dword', $iNbByte, 'ptr', $pBuffer)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $iNbByte
EndFunc
Func _WinAPI_HideCaret($hWnd)
Local $aCall = DllCall('user32.dll', 'int', 'HideCaret', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadBitmap($hInstance, $sBitmap)
Local $sBitmapType = "int"
If IsString($sBitmap) Then $sBitmapType = "wstr"
Local $aCall = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $hInstance, $sBitmapType, $sBitmap)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadCursor($hInstance, $sName)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'LoadCursorW', 'handle', $hInstance, $sTypeOfName, $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadCursorFromFile($sFilePath)
Local $aCall = DllCall('user32.dll', 'handle', 'LoadCursorFromFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadIndirectString($sStrIn)
Local $aCall = DllCall('shlwapi.dll', 'uint', 'SHLoadIndirectString', 'wstr', $sStrIn, 'wstr', '', 'uint', 4096, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_LoadString($hInstance, $iStringID)
Local $aCall = DllCall("user32.dll", "int", "LoadStringW", "handle", $hInstance, "uint", $iStringID, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_LoadLibraryEx($sFileName, $iFlags = 0)
Local $aCall = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $sFileName, "ptr", 0, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadResource($hInstance, $hResource)
Local $aCall = DllCall('kernel32.dll', 'handle', 'LoadResource', 'handle', $hInstance, 'handle', $hResource)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadStringEx($hModule, $iID, $iLanguage = $LOCALE_USER_DEFAULT)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(@error + 20, @extended, '')
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Local $sResult = ''
Local $pData = __ResLoad($hModule, 6, Floor($iID / 16) + 1, $iLanguage)
If Not @error Then
Local $iOffset = 0
For $i = 0 To Mod($iID, 16) - 1
$iOffset += 2 * (DllStructGetData(DllStructCreate('ushort', $pData + $iOffset), 1) + 1)
Next
$sResult = DllStructGetData(DllStructCreate('ushort;wchar[' & DllStructGetData(DllStructCreate('ushort', $pData + $iOffset), 1) & ']', $pData + $iOffset), 2)
If @error Then $sResult = ''
Else
Return SetError(10, 0, '')
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
Return SetError(Number(Not $sResult), 0, $sResult)
EndFunc
Func _WinAPI_LockResource($hData)
Local $aCall = DllCall('kernel32.dll', 'ptr', 'LockResource', 'handle', $hData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCaretBlinkTime($iDuration)
Local $iPrev = _WinAPI_GetCaretBlinkTime()
If Not $iPrev Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('user32.dll', 'bool', 'SetCaretBlinkTime', 'uint', $iDuration)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $iPrev
EndFunc
Func _WinAPI_SetCaretPos($iX, $iY)
Local $aCall = DllCall('user32.dll', 'int', 'SetCaretPos', 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCursor($hCursor)
Local $aCall = DllCall("user32.dll", "handle", "SetCursor", "handle", $hCursor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetSystemCursor($hCursor, $iID, $bCopy = False)
If $bCopy Then
$hCursor = _WinAPI_CopyCursor($hCursor)
EndIf
Local $aCall = DllCall('user32.dll', 'bool', 'SetSystemCursor', 'handle', $hCursor, 'dword', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowCaret($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShowCaret', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowCursor($bShow)
Local $aCall = DllCall("user32.dll", "int", "ShowCursor", "bool", $bShow)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SizeOfResource($hInstance, $hResource)
Local $aCall = DllCall('kernel32.dll', 'dword', 'SizeofResource', 'handle', $hInstance, 'handle', $hResource)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateResource($hUpdate, $sType, $sName, $iLanguage, $pData, $iSize)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'bool', 'UpdateResourceW', 'handle', $hUpdate, $sTypeOfType, $sType, $sTypeOfName, $sName,  'word', $iLanguage, 'ptr', $pData, 'dword', $iSize)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_VerQueryRoot($pData)
Local $aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\', 'ptr*', 0, 'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then Return SetError(@error + 10, @extended, 0)
Local $tVFFI = DllStructCreate($tagVS_FIXEDFILEINFO)
If Not _WinAPI_MoveMemory($tVFFI, $aCall[3], $aCall[4]) Then Return SetError(@error + 20, @extended, 0)
Return $tVFFI
EndFunc
Func _WinAPI_VerQueryValue($pData, $sValues = '')
$sValues = StringRegExpReplace($sValues, '\A[\s\|]*|[\s\|]*\Z', '')
If Not $sValues Then
$sValues = 'Comments|CompanyName|FileDescription|FileVersion|InternalName|LegalCopyright|LegalTrademarks|OriginalFilename|ProductName|ProductVersion|PrivateBuild|SpecialBuild'
EndIf
$sValues = StringSplit($sValues, '|', $STR_NOCOUNT)
Local $aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\VarFileInfo\Translation', 'ptr*', 0,  'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then Return SetError(@error + 10, 0, 0)
Local $iLength = Floor($aCall[4] / 4)
Local $tLang = DllStructCreate('dword[' & $iLength & ']', $aCall[3])
If @error Then Return SetError(@error + 20, 0, 0)
Local $sCP, $aInfo[101][UBound($sValues) + 1] = [[0]]
For $i = 1 To $iLength
__Inc($aInfo)
$aInfo[$aInfo[0][0]][0] = _WinAPI_LoWord(DllStructGetData($tLang, 1, $i))
$sCP = Hex(_WinAPI_MakeLong(_WinAPI_HiWord(DllStructGetData($tLang, 1, $i)), _WinAPI_LoWord(DllStructGetData($tLang, 1, $i))), 8)
For $j = 0 To UBound($sValues) - 1
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\StringFileInfo\' & $sCP & '\' & $sValues[$j],  'ptr*', 0, 'uint*', 0)
If Not @error And $aCall[0] And $aCall[4] Then
$aInfo[$aInfo[0][0]][$j + 1] = DllStructGetData(DllStructCreate('wchar[' & $aCall[4] & ']', $aCall[3]), 1)
Else
$aInfo[$aInfo[0][0]][$j + 1] = ''
EndIf
Next
Next
__Inc($aInfo, -1)
Return $aInfo
EndFunc
Func _WinAPI_VerQueryValueEx($hModule, $sValues = '', $iLanguage = 0x0400)
$__g_vVal = StringRegExpReplace($sValues, '\A[\s\|]*|[\s\|]*\Z', '')
If Not $__g_vVal Then
$__g_vVal = 'Comments|CompanyName|FileDescription|FileVersion|InternalName|LegalCopyright|LegalTrademarks|OriginalFilename|ProductName|ProductVersion|PrivateBuild|SpecialBuild'
EndIf
$__g_vVal = StringSplit($__g_vVal, '|')
If Not IsArray($__g_vVal) Then Return SetError(1, 0, 0)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then
Return SetError(@error + 10, @extended, 0)
EndIf
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Dim $__g_vEnum[101][$__g_vVal[0] + 1] = [[0]]
Local $hEnumProc = DllCallbackRegister('__EnumVerValuesProc', 'bool', 'ptr;ptr;ptr;word;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceLanguagesW', 'handle', $hModule, 'int', 16, 'int', 1,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', $iLanguage)
Do
If @error Then
$__g_vEnum = @error + 20
Else
If Not $aCall[0] Then
Switch _WinAPI_GetLastError()
Case 0, 15106
ExitLoop
Case Else
$__g_vEnum = 20
EndSwitch
Else
ExitLoop
EndIf
EndIf
Until 1
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If Not $__g_vEnum[0][0] Then $__g_vEnum = 230
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __EnumResLanguagesProc($hModule, $iType, $iName, $iLanguage, $lParam)
#forceref $hModule, $iType, $iName, $lParam
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0]] = $iLanguage
Return 1
EndFunc
Func __EnumResNamesProc($hModule, $iType, $iName, $lParam)
#forceref $hModule, $iType, $lParam
Local $iLength = _WinAPI_StrLen($iName)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $iName), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = Number($iName)
EndIf
Return 1
EndFunc
Func __EnumResTypesProc($hModule, $iType, $lParam)
#forceref $hModule, $lParam
Local $iLength = _WinAPI_StrLen($iType)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $iType), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = Number($iType)
EndIf
Return 1
EndFunc
Func __EnumVerValuesProc($hModule, $iType, $iName, $iLanguage, $iDefault)
Local $aCall, $iEnum = 1, $iError = 0
Switch $iDefault
Case -1
Case 0x0400
$iLanguage = 0x0400
$iEnum = 0
Case Else
If $iLanguage <> $iDefault Then
Return 1
EndIf
$iEnum = 0
EndSwitch
Do
Local $pData = __ResLoad($hModule, $iType, $iName, $iLanguage)
If @error Then
$iError = @error + 10
ExitLoop
EndIf
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\VarFileInfo\Translation', 'ptr*', 0, 'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then
$iError = @error + 20
ExitLoop
EndIf
Local $tData = DllStructCreate('ushort;ushort', $aCall[3])
If @error Then
$iError = @error + 30
ExitLoop
EndIf
Until 1
If Not $iError Then
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData($tData, 1)
Local $sCP = Hex(_WinAPI_MakeLong(DllStructGetData($tData, 2), DllStructGetData($tData, 1)), 8)
For $i = 1 To $__g_vVal[0]
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\StringFileInfo\' & $sCP & '\' & $__g_vVal[$i],  'ptr*', 0, 'uint*', 0)
If Not @error And $aCall[0] And $aCall[4] Then
$__g_vEnum[$__g_vEnum[0][0]][$i] = DllStructGetData(DllStructCreate('wchar[' & $aCall[4] & ']', $aCall[3]), 1)
Else
$__g_vEnum[$__g_vEnum[0][0]][$i] = ''
EndIf
Next
Else
$__g_vEnum = @error + 40
EndIf
If $__g_vEnum Then Return SetError($iError, 0, 0)
Return $iEnum
EndFunc
Func __ResLoad($hInstance, $sType, $sName, $iLanguage)
Local $hInfo = _WinAPI_FindResourceEx($hInstance, $sType, $sName, $iLanguage)
If Not $hInfo Then Return SetError(@error + 10, @extended, 0)
Local $iSize = _WinAPI_SizeOfResource($hInstance, $hInfo)
If Not $iSize Then Return SetError(@error + 20, @extended, 0)
Local $hData = _WinAPI_LoadResource($hInstance, $hInfo)
If Not $hData Then Return SetError(@error + 30, @extended, 0)
Local $pData = _WinAPI_LockResource($hData)
If Not $pData Then Return SetError(@error + 40, @extended, 0)
Return SetExtended($iSize, $pData)
EndFunc
#EndRegion Internal Functions
Global Const $KLF_ACTIVATE = 0x00000001
Global Const $KLF_NOTELLSHELL = 0x00000080
Global Const $KLF_REORDER = 0x00000008
Global Const $KLF_REPLACELANG = 0x00000010
Global Const $KLF_RESET = 0x40000000
Global Const $KLF_SETFORPROCESS = 0x00000100
Global Const $KLF_SHIFTLOCK = 0x00010000
Global Const $KLF_SUBSTITUTE_OK = 0x00000002
Global Const $HKL_NEXT = 1
Global Const $HKL_PREV = 0
Global Const $AW_ACTIVATE = 0x00020000
Global Const $AW_BLEND = 0x00080000
Global Const $AW_CENTER = 0x00000010
Global Const $AW_HIDE = 0x00010000
Global Const $AW_HOR_NEGATIVE = 0x00000002
Global Const $AW_HOR_POSITIVE = 0x00000001
Global Const $AW_SLIDE = 0x00040000
Global Const $AW_VER_NEGATIVE = 0x00000008
Global Const $AW_VER_POSITIVE = 0x00000004
Global Const $BSF_ALLOWSFW = 0x0080
Global Const $BSF_FLUSHDISK = 0x0004
Global Const $BSF_FORCEIFHUNG = 0x0020
Global Const $BSF_IGNORECURRENTTASK = 0x0002
Global Const $BSF_NOHANG = 0x0008
Global Const $BSF_NOTIMEOUTIFNOTHUNG = 0x0040
Global Const $BSF_POSTMESSAGE = 0x0010
Global Const $BSF_QUERY = 0x0001
Global Const $BSF_SENDNOTIFYMESSAGE = 0x0100
Global Const $BSM_ALLCOMPONENTS = 0x00
Global Const $BSM_ALLDESKTOPS = 0x08
Global Const $BSM_APPLICATIONS = 0x10
Global Const $BSM_INSTALLABLEDRIVERS = 0x04
Global Const $BSM_NETDRIVER = 0x02
Global Const $BSM_VXDS = 0x01
Global Const $MDITILE_HORIZONTAL = 0x01
Global Const $MDITILE_SKIPDISABLED = 0x02
Global Const $MDITILE_VERTICAL = 0x00
Global Const $MDITILE_ZORDER = 0x04
Global Const $MSGFLT_ALLOW = 1
Global Const $MSGFLT_DISALLOW = 2
Global Const $MSGFLT_RESET = 0
Global Const $MSGFLTINFO_ALLOWED_HIGHER = 3
Global Const $MSGFLTINFO_ALREADYALLOWED_FORWND = 1
Global Const $MSGFLTINFO_ALREADYDISALLOWED_FORWND = 2
Global Const $MSGFLTINFO_NONE = 0
Global Const $CWP_ALL = 0x00
Global Const $CWP_SKIPINVISIBLE = 0x01
Global Const $CWP_SKIPDISABLED = 0x02
Global Const $CWP_SKIPTRANSPARENT = 0x04
Global Const $COMPRESSION_FORMAT_NONE = 0x0000
Global Const $COMPRESSION_FORMAT_DEFAULT = 0x0001
Global Const $COMPRESSION_FORMAT_LZNT1 = 0x0002
Global Const $COMPRESSION_FORMAT_XPRESS = 0x0003
Global Const $COMPRESSION_FORMAT_XPRESS_HUFF = 0x0004
Global Const $COMPRESSION_ENGINE_STANDARD = 0x0000
Global Const $COMPRESSION_ENGINE_MAXIMUM = 0x0100
Global Const $COMPRESSION_ENGINE_HIBER = 0x0200
Global Const $WINSTA_ACCESSCLIPBOARD = 0x0004
Global Const $WINSTA_ACCESSGLOBALATOMS = 0x0020
Global Const $WINSTA_CREATEDESKTOP = 0x0008
Global Const $WINSTA_ENUMDESKTOPS = 0x0001
Global Const $WINSTA_ENUMERATE = 0x0100
Global Const $WINSTA_EXITWINDOWS = 0x0040
Global Const $WINSTA_READATTRIBUTES = 0x0002
Global Const $WINSTA_READSCREEN = 0x0200
Global Const $WINSTA_WRITEATTRIBUTES = 0x0010
Global Const $WINSTA_ALL_ACCESS = BitOR($WINSTA_ACCESSCLIPBOARD, $WINSTA_ACCESSGLOBALATOMS, $WINSTA_CREATEDESKTOP, $WINSTA_ENUMDESKTOPS, $WINSTA_ENUMERATE, $WINSTA_EXITWINDOWS, $WINSTA_READATTRIBUTES, $WINSTA_READSCREEN, $WINSTA_WRITEATTRIBUTES)
Global Const $CWF_CREATE_ONLY = 0x01
Global Const $GCL_CBCLSEXTRA = -20
Global Const $GCL_CBWNDEXTRA = -18
Global Const $GCL_HBRBACKGROUND = -10
Global Const $GCL_HCURSOR = -12
Global Const $GCL_HICON = -14
Global Const $GCL_HICONSM = -34
Global Const $GCL_HMODULE = -16
Global Const $GCL_MENUNAME = -8
Global Const $GCL_STYLE = -26
Global Const $GCL_WNDPROC = -24
Global Const $DOCKINFO_DOCKED = 0x02
Global Const $DOCKINFO_UNDOCKED = 0x01
Global Const $DOCKINFO_USER_SUPPLIED = 0x04
Global Const $DOCKINFO_USER_DOCKED = 0x05
Global Const $DOCKINFO_USER_UNDOCKED = 0x06
Global Const $GUI_CARETBLINKING = 0x0001
Global Const $GUI_INMENUMODE = 0x0004
Global Const $GUI_INMOVESIZE = 0x0002
Global Const $GUI_POPUPMENUMODE = 0x0010
Global Const $GUI_SYSTEMMENUMODE = 0x0008
Global Const $HANDLE_FLAG_INHERIT = 0x00000001
Global Const $HANDLE_FLAG_PROTECT_FROM_CLOSE = 0x00000002
Global Const $GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 0x0004
Global Const $GET_MODULE_HANDLE_EX_FLAG_PIN = 0x0001
Global Const $GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 0x0002
Global Const $GET_MODULE_HANDLE_EX_FLAG_DEFAULT = 0x0000
Global Const $PROCESSOR_ARCHITECTURE_AMD64 = 9
Global Const $PROCESSOR_ARCHITECTURE_IA64 = 6
Global Const $PROCESSOR_ARCHITECTURE_INTEL = 0
Global Const $PROCESSOR_ARCHITECTURE_UNKNOWN = 0xFFFF
Global Const $PROCESSOR_INTEL_386 = 386
Global Const $PROCESSOR_INTEL_486 = 486
Global Const $PROCESSOR_INTEL_PENTIUM = 586
Global Const $PROCESSOR_INTEL_IA64 = 2200
Global Const $PROCESSOR_AMD_X8664 = 8664
Global Const $UOI_FLAGS = 1
Global Const $UOI_HEAPSIZE = 5
Global Const $UOI_IO = 6
Global Const $UOI_NAME = 2
Global Const $UOI_TYPE = 3
Global Const $UOI_USER_SID = 4
Global Const $DF_ALLOWOTHERACCOUNTHOOK = 0x01
Global Const $WSF_VISIBLE = 0x01
Global Const $VER_SUITE_BACKOFFICE = 0x00000004
Global Const $VER_SUITE_BLADE = 0x00000400
Global Const $VER_SUITE_COMPUTE_SERVER = 0x00004000
Global Const $VER_SUITE_DATACENTER = 0x00000080
Global Const $VER_SUITE_ENTERPRISE = 0x00000002
Global Const $VER_SUITE_EMBEDDEDNT = 0x00000040
Global Const $VER_SUITE_PERSONAL = 0x00000200
Global Const $VER_SUITE_SINGLEUSERTS = 0x00000100
Global Const $VER_SUITE_SMALLBUSINESS = 0x00000001
Global Const $VER_SUITE_SMALLBUSINESS_RESTRICTED = 0x00000020
Global Const $VER_SUITE_STORAGE_SERVER = 0x00002000
Global Const $VER_SUITE_TERMINAL = 0x00000010
Global Const $VER_SUITE_WH_SERVER = 0x00008000
Global Const $VER_NT_DOMAIN_CONTROLLER = 0x0000002
Global Const $VER_NT_SERVER = 0x0000003
Global Const $VER_NT_WORKSTATION = 0x0000001
Global Const $WDA_MONITOR = 0x01
Global Const $WDA_NONE = 0x00
Global Const $PF_3DNOW_INSTRUCTIONS_AVAILABLE = 7
Global Const $PF_CHANNELS_ENABLED = 16
Global Const $PF_COMPARE_EXCHANGE_DOUBLE = 2
Global Const $PF_COMPARE_EXCHANGE128 = 14
Global Const $PF_COMPARE64_EXCHANGE128 = 15
Global Const $PF_FLOATING_POINT_EMULATED = 1
Global Const $PF_FLOATING_POINT_PRECISION_ERRATA = 0
Global Const $PF_MMX_INSTRUCTIONS_AVAILABLE = 3
Global Const $PF_NX_ENABLED = 12
Global Const $PF_PAE_ENABLED = 9
Global Const $PF_RDTSC_INSTRUCTION_AVAILABLE = 8
Global Const $PF_SSE3_INSTRUCTIONS_AVAILABLE = 13
Global Const $PF_XMMI_INSTRUCTIONS_AVAILABLE = 6
Global Const $PF_XMMI64_INSTRUCTIONS_AVAILABLE = 10
Global Const $PF_XSAVE_ENABLED = 17
Global Const $KEYEVENTF_EXTENDEDKEY = 0x01
Global Const $KEYEVENTF_KEYUP = 0x02
Global Const $LIM_SMALL = 0
Global Const $LIM_LARGE = 1
Global Const $MAPVK_VK_TO_CHAR = 2
Global Const $MAPVK_VK_TO_VSC = 0
Global Const $MAPVK_VK_TO_VSC_EX = 4
Global Const $MAPVK_VSC_TO_VK = 1
Global Const $MAPVK_VSC_TO_VK_EX = 3
Global Const $MOD_ALT = 0x0001
Global Const $MOD_CONTROL = 0x0002
Global Const $MOD_NOREPEAT = 0x4000
Global Const $MOD_SHIFT = 0x0004
Global Const $MOD_WIN = 0x0008
Global Const $GUID_ACDC_POWER_SOURCE = '{5D3E9A59-E9D5-4B00-A6BD-FF34FF516548}'
Global Const $GUID_BATTERY_PERCENTAGE_REMAINING = '{A7AD8041-B45A-4CAE-87A3-EECBB468A9E1}'
Global Const $GUID_IDLE_BACKGROUND_TASK = '{515C31D8-F734-163D-A0FD-11A08C91E8F1}'
Global Const $GUID_MONITOR_POWER_ON = '{02731015-4510-4526-99E6-E5A17EBD1AEA}'
Global Const $GUID_POWERSCHEME_PERSONALITY = '{245D8541-3943-4422-B025-13A784F679B7}'
Global Const $GUID_SYSTEM_AWAYMODE = '{98A7F580-01F7-48AA-9C0F-44352C29E5C0}'
Global Const $GUID_MIN_POWER_SAVINGS = '{8C5E7FDA-E8BF-4A96-9A85-A6E23A8C635C}'
Global Const $GUID_MAX_POWER_SAVINGS = '{A1841308-3541-4FAB-BC81-F71556F20B4A}'
Global Const $GUID_TYPICAL_POWER_SAVINGS = '{381B4222-F694-41F0-9685-FF5BB260DF2E}'
Global Const $HSHELL_WINDOWCREATED = 1
Global Const $HSHELL_WINDOWDESTROYED = 2
Global Const $HSHELL_ACTIVATESHELLWINDOW = 3
Global Const $HSHELL_WINDOWACTIVATED = 4
Global Const $HSHELL_GETMINRECT = 5
Global Const $HSHELL_REDRAW = 6
Global Const $HSHELL_TASKMAN = 7
Global Const $HSHELL_LANGUAGE = 8
Global Const $HSHELL_SYSMENU = 9
Global Const $HSHELL_ENDTASK = 10
Global Const $HSHELL_ACCESSIBILITYSTATE = 11
Global Const $HSHELL_APPCOMMAND = 12
Global Const $HSHELL_WINDOWREPLACED = 13
Global Const $HSHELL_WINDOWREPLACING = 14
Global Const $HSHELL_RUDEAPPACTIVATED = 32772
Global Const $HSHELL_FLASH = 32774
Global Const $HWND_BROADCAST = 0xFFFF
Global Const $SMTO_BLOCK = 0x0001
Global Const $SMTO_NORMAL = 0x0000
Global Const $SMTO_ABORTIFHUNG = 0x0002
Global Const $SMTO_NOTIMEOUTIFNOTHUNG = 0x0008
Global Const $SMTO_ERRORONEXIT = 0x0020
Global Const $INPUTLANGCHANGE_BACKWARD = 0x0004
Global Const $INPUTLANGCHANGE_FORWARD = 0x0002
Global Const $INPUTLANGCHANGE_SYSCHARSET = 0x0001
Global Const $EVENT_MIN = 0x00000001
Global Const $EVENT_SYSTEM_SOUND = 0x00000001
Global Const $EVENT_SYSTEM_ALERT = 0x00000002
Global Const $EVENT_SYSTEM_FOREGROUND = 0x00000003
Global Const $EVENT_SYSTEM_MENUSTART = 0x00000004
Global Const $EVENT_SYSTEM_MENUEND = 0x00000005
Global Const $EVENT_SYSTEM_MENUPOPUPSTART = 0x00000006
Global Const $EVENT_SYSTEM_MENUPOPUPEND = 0x00000007
Global Const $EVENT_SYSTEM_CAPTURESTART = 0x00000008
Global Const $EVENT_SYSTEM_CAPTUREEND = 0x00000009
Global Const $EVENT_SYSTEM_MOVESIZESTART = 0x0000000A
Global Const $EVENT_SYSTEM_MOVESIZEEND = 0x0000000B
Global Const $EVENT_SYSTEM_CONTEXTHELPSTART = 0x0000000C
Global Const $EVENT_SYSTEM_CONTEXTHELPEND = 0x0000000D
Global Const $EVENT_SYSTEM_DRAGDROPSTART = 0x0000000E
Global Const $EVENT_SYSTEM_DRAGDROPEND = 0x0000000F
Global Const $EVENT_SYSTEM_DIALOGSTART = 0x00000010
Global Const $EVENT_SYSTEM_DIALOGEND = 0x00000011
Global Const $EVENT_SYSTEM_SCROLLINGSTART = 0x00000012
Global Const $EVENT_SYSTEM_SCROLLINGEND = 0x00000013
Global Const $EVENT_SYSTEM_SWITCHSTART = 0x00000014
Global Const $EVENT_SYSTEM_SWITCHEND = 0x00000015
Global Const $EVENT_SYSTEM_MINIMIZESTART = 0x00000016
Global Const $EVENT_SYSTEM_MINIMIZEEND = 0x00000017
Global Const $EVENT_SYSTEM_DESKTOPSWITCH = 0x00000020
Global Const $EVENT_OBJECT_CREATE = 0x00008000
Global Const $EVENT_OBJECT_DESTROY = 0x00008001
Global Const $EVENT_OBJECT_SHOW = 0x00008002
Global Const $EVENT_OBJECT_HIDE = 0x00008003
Global Const $EVENT_OBJECT_REORDER = 0x00008004
Global Const $EVENT_OBJECT_FOCUS = 0x00008005
Global Const $EVENT_OBJECT_SELECTION = 0x00008006
Global Const $EVENT_OBJECT_SELECTIONADD = 0x00008007
Global Const $EVENT_OBJECT_SELECTIONREMOVE = 0x00008008
Global Const $EVENT_OBJECT_SELECTIONWITHIN = 0x00008009
Global Const $EVENT_OBJECT_STATECHANGE = 0x0000800A
Global Const $EVENT_OBJECT_LOCATIONCHANGE = 0x0000800B
Global Const $EVENT_OBJECT_NAMECHANGE = 0x0000800C
Global Const $EVENT_OBJECT_DESCRIPTIONCHANGE = 0x0000800D
Global Const $EVENT_OBJECT_VALUECHANGE = 0x0000800E
Global Const $EVENT_OBJECT_PARENTCHANGE = 0x0000800F
Global Const $EVENT_OBJECT_HELPCHANGE = 0x00008010
Global Const $EVENT_OBJECT_DEFACTIONCHANGE = 0x00008011
Global Const $EVENT_OBJECT_ACCELERATORCHANGE = 0x00008012
Global Const $EVENT_OBJECT_INVOKED = 0x00008013
Global Const $EVENT_OBJECT_TEXTSELECTIONCHANGED = 0x00008014
Global Const $EVENT_OBJECT_CONTENTSCROLLED = 0x00008015
Global Const $EVENT_MAX = 0x7FFFFFFF
Global Const $WINEVENT_INCONTEXT = 0x04
Global Const $WINEVENT_OUTOFCONTEXT = 0x00
Global Const $WINEVENT_SKIPOWNPROCESS = 0x02
Global Const $WINEVENT_SKIPOWNTHREAD = 0x01
Global Const $TME_CANCEL = 0x80000000
Global Const $TME_HOVER = 0x00000001
Global Const $TME_LEAVE = 0x00000002
Global Const $TME_NONCLIENT = 0x00000010
Global Const $TME_QUERY = 0x40000000
Global Const $DESKTOP_CREATEMENU = 0x0004
Global Const $DESKTOP_CREATEWINDOW = 0x0002
Global Const $DESKTOP_ENUMERATE = 0x0040
Global Const $DESKTOP_HOOKCONTROL = 0x0008
Global Const $DESKTOP_JOURNALPLAYBACK = 0x0020
Global Const $DESKTOP_JOURNALRECORD = 0x0010
Global Const $DESKTOP_READOBJECTS = 0x0001
Global Const $DESKTOP_SWITCHDESKTOP = 0x0100
Global Const $DESKTOP_WRITEOBJECTS = 0x0080
Global Const $DESKTOP_ALL_ACCESS = BitOR($DESKTOP_CREATEMENU, $DESKTOP_CREATEWINDOW, $DESKTOP_ENUMERATE, $DESKTOP_HOOKCONTROL, $DESKTOP_JOURNALPLAYBACK, $DESKTOP_JOURNALRECORD, $DESKTOP_READOBJECTS, $DESKTOP_SWITCHDESKTOP, $DESKTOP_WRITEOBJECTS)
Global Const $RIDEV_APPKEYS = 0x00000400
Global Const $RIDEV_CAPTUREMOUSE = 0x00000200
Global Const $RIDEV_DEVNOTIFY = 0x00002000
Global Const $RIDEV_EXCLUDE = 0x00000010
Global Const $RIDEV_EXINPUTSINK = 0x00001000
Global Const $RIDEV_INPUTSINK = 0x00000100
Global Const $RIDEV_NOHOTKEYS = 0x00000200
Global Const $RIDEV_NOLEGACY = 0x00000030
Global Const $RIDEV_PAGEONLY = 0x00000020
Global Const $RIDEV_REMOVE = 0x00000001
Global Const $RID_HEADER = 0x10000005
Global Const $RID_INPUT = 0x10000003
Global Const $RIM_TYPEHID = 2
Global Const $RIM_TYPEKEYBOARD = 1
Global Const $RIM_TYPEMOUSE = 0
Global Const $RIDI_DEVICENAME = 0x20000007
Global Const $RIDI_DEVICEINFO = 0x2000000B
Global Const $RIDI_PREPARSEDDATA = 0x20000005
Global Const $MOUSE_ATTRIBUTES_CHANGED = 0x04
Global Const $MOUSE_MOVE_ABSOLUTE = 0x01
Global Const $MOUSE_MOVE_RELATIVE = 0x00
Global Const $MOUSE_VIRTUAL_DESKTOP = 0x02
Global Const $RI_MOUSE_LEFT_BUTTON_DOWN = 0x0001
Global Const $RI_MOUSE_LEFT_BUTTON_UP = 0x0002
Global Const $RI_MOUSE_MIDDLE_BUTTON_DOWN = 0x0010
Global Const $RI_MOUSE_MIDDLE_BUTTON_UP = 0x0020
Global Const $RI_MOUSE_RIGHT_BUTTON_DOWN = 0x0004
Global Const $RI_MOUSE_RIGHT_BUTTON_UP = 0x0008
Global Const $RI_MOUSE_BUTTON_1_DOWN = $RI_MOUSE_LEFT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_1_UP = $RI_MOUSE_LEFT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_2_DOWN = $RI_MOUSE_RIGHT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_2_UP = $RI_MOUSE_RIGHT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_3_DOWN = $RI_MOUSE_MIDDLE_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_3_UP = $RI_MOUSE_MIDDLE_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_4_DOWN = 0x0040
Global Const $RI_MOUSE_BUTTON_4_UP = 0x0080
Global Const $RI_MOUSE_BUTTON_5_DOWN = 0x0100
Global Const $RI_MOUSE_BUTTON_5_UP = 0x0200
Global Const $RI_MOUSE_WHEEL = 0x0400
Global Const $RI_KEY_BREAK = 1
Global Const $RI_KEY_E0 = 2
Global Const $RI_KEY_E1 = 4
Global Const $RI_KEY_MAKE = 0
#Region Global Variables and Constants
Global $__g_aInProcess_WinAPI[64][2] = [[0, 0]]
Global $__g_aWinList_WinAPI[64][2] = [[0, 0]]
Global Const $GW_HWNDFIRST = 0
Global Const $GW_HWNDLAST = 1
Global Const $GW_HWNDNEXT = 2
Global Const $GW_HWNDPREV = 3
Global Const $GW_OWNER = 4
Global Const $GW_CHILD = 5
Global Const $GW_ENABLEDPOPUP = 6
Global Const $GWL_WNDPROC = 0xFFFFFFFC
Global Const $GWL_HINSTANCE = 0xFFFFFFFA
Global Const $GWL_HWNDPARENT = 0xFFFFFFF8
Global Const $GWL_ID = 0xFFFFFFF4
Global Const $GWL_STYLE = 0xFFFFFFF0
Global Const $GWL_EXSTYLE = 0xFFFFFFEC
Global Const $GWL_USERDATA = 0xFFFFFFEB
Global Const $__WINAPICONSTANT_WM_SETFONT = 0x0030
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_CreateWindowEx($iExStyle, $sClass, $sName, $iStyle, $iX, $iY, $iWidth, $iHeight, $hParent, $hMenu = 0, $hInstance = 0, $pParam = 0)
If $hInstance = 0 Then $hInstance = _WinAPI_GetModuleHandle("")
Local $aCall = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $iExStyle, "wstr", $sClass, "wstr", $sName,  "dword", $iStyle, "int", $iX, "int", $iY, "int", $iWidth, "int", $iHeight, "hwnd", $hParent, "handle", $hMenu,  "handle", $hInstance, "struct*", $pParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClientRect($hWnd)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetDesktopWindow()
Local $aCall = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnableWindow($hWnd, $bEnable = True)
Local $aCall = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $hWnd, "bool", $bEnable)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumWindows($bVisible = True, $hWnd = Default)
__WinAPI_EnumWindowsInit()
If $hWnd = Default Then $hWnd = _WinAPI_GetDesktopWindow()
__WinAPI_EnumWindowsChild($hWnd, $bVisible)
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_EnumWindowsPopup()
__WinAPI_EnumWindowsInit()
Local $hWnd = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $GW_CHILD)
Local $sClass
While $hWnd <> 0
If _WinAPI_IsWindowVisible($hWnd) Then
$sClass = _WinAPI_GetClassName($hWnd)
If $sClass = "#32768" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "ToolbarWindow32" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "ToolTips_Class32" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "BaseBar" Then
__WinAPI_EnumWindowsChild($hWnd)
EndIf
EndIf
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_EnumWindowsTop()
__WinAPI_EnumWindowsInit()
Local $hWnd = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $GW_CHILD)
While $hWnd <> 0
If _WinAPI_IsWindowVisible($hWnd) Then __WinAPI_EnumWindowsAdd($hWnd)
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_GetClassName($hWnd)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetFocus()
Local $aCall = DllCall("user32.dll", "hwnd", "GetFocus")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetParent($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSysColor($iIndex)
Local $aCall = DllCall("user32.dll", "INT", "GetSysColor", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSystemMetrics($iIndex)
Local $aCall = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindow($hWnd, $iCmd)
Local $aCall = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $hWnd, "uint", $iCmd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowHeight($hWnd)
Local $tRECT = _WinAPI_GetWindowRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top")
EndFunc
Func _WinAPI_GetWindowLong($hWnd, $iIndex)
Local $sFuncName = "GetWindowLongW"
If @AutoItX64 Then $sFuncName = "GetWindowLongPtrW"
Local $aCall = DllCall("user32.dll", "long_ptr", $sFuncName, "hwnd", $hWnd, "int", $iIndex)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowRect($hWnd)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $hWnd, "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetWindowText($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $hWnd, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetWindowThreadProcessId($hWnd, ByRef $iPID)
Local $aCall = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
If @error Then Return SetError(@error, @extended, 0)
$iPID = $aCall[2]
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowWidth($hWnd)
Local $tRECT = _WinAPI_GetWindowRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndFunc
Func _WinAPI_InProcess($hWnd, ByRef $hLastWnd)
If $hWnd = $hLastWnd Then Return True
For $iI = $__g_aInProcess_WinAPI[0][0] To 1 Step -1
If $hWnd = $__g_aInProcess_WinAPI[$iI][0] Then
If $__g_aInProcess_WinAPI[$iI][1] Then
$hLastWnd = $hWnd
Return True
Else
Return False
EndIf
EndIf
Next
Local $iPID
_WinAPI_GetWindowThreadProcessId($hWnd, $iPID)
Local $iCount = $__g_aInProcess_WinAPI[0][0] + 1
If $iCount >= 64 Then $iCount = 1
$__g_aInProcess_WinAPI[0][0] = $iCount
$__g_aInProcess_WinAPI[$iCount][0] = $hWnd
$__g_aInProcess_WinAPI[$iCount][1] = ($iPID = @AutoItPID)
Return $__g_aInProcess_WinAPI[$iCount][1]
EndFunc
Func _WinAPI_InvalidateRect($hWnd, $tRECT = 0, $bErase = True)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $hWnd, "struct*", $tRECT, "bool", $bErase)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsClassName($hWnd, $sClassName)
Local $sSeparator = Opt("GUIDataSeparatorChar")
Local $aClassName = StringSplit($sClassName, $sSeparator)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $sClassCheck = _WinAPI_GetClassName($hWnd)
For $x = 1 To UBound($aClassName) - 1
If StringUpper(StringMid($sClassCheck, 1, StringLen($aClassName[$x]))) = StringUpper($aClassName[$x]) Then Return True
Next
Return False
EndFunc
Func _WinAPI_IsWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowVisible($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveWindow($hWnd, $iX, $iY, $iWidth, $iHeight, $bRepaint = True)
Local $aCall = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $hWnd, "int", $iX, "int", $iY, "int", $iWidth,  "int", $iHeight, "bool", $bRepaint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFocus($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFont($hWnd, $hFont, $bRedraw = True)
_SendMessage($hWnd, $__WINAPICONSTANT_WM_SETFONT, $hFont, $bRedraw, 0, "hwnd")
EndFunc
Func _WinAPI_SetParent($hWndChild, $hWndParent)
Local $aCall = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $hWndChild, "hwnd", $hWndParent)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowPos($hWnd, $hAfter, $iX, $iY, $iCX, $iCY, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $hWnd, "hwnd", $hAfter, "int", $iX, "int", $iY,  "int", $iCX, "int", $iCY, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowText($hWnd, $sText)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $hWnd, "wstr", $sText)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowWindow($hWnd, $iCmdShow = 5)
Local $aCall = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $hWnd, "int", $iCmdShow)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __WinAPI_EnumWindowsAdd($hWnd, $sClass = "")
If $sClass = "" Then $sClass = _WinAPI_GetClassName($hWnd)
$__g_aWinList_WinAPI[0][0] += 1
Local $iCount = $__g_aWinList_WinAPI[0][0]
If $iCount >= $__g_aWinList_WinAPI[0][1] Then
ReDim $__g_aWinList_WinAPI[$iCount + 64][2]
$__g_aWinList_WinAPI[0][1] += 64
EndIf
$__g_aWinList_WinAPI[$iCount][0] = $hWnd
$__g_aWinList_WinAPI[$iCount][1] = $sClass
EndFunc
Func __WinAPI_EnumWindowsChild($hWnd, $bVisible = True)
$hWnd = _WinAPI_GetWindow($hWnd, $GW_CHILD)
While $hWnd <> 0
If (Not $bVisible) Or _WinAPI_IsWindowVisible($hWnd) Then
__WinAPI_EnumWindowsAdd($hWnd)
__WinAPI_EnumWindowsChild($hWnd, $bVisible)
EndIf
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
EndFunc
Func __WinAPI_EnumWindowsInit()
ReDim $__g_aWinList_WinAPI[64][2]
$__g_aWinList_WinAPI[0][0] = 0
$__g_aWinList_WinAPI[0][1] = 64
EndFunc
#EndRegion Internal Functions
#Region Global Variables and Constants
Global Const $FLASHW_CAPTION = 0x00000001
Global Const $FLASHW_TRAY = 0x00000002
Global Const $FLASHW_TIMER = 0x00000004
Global Const $FLASHW_TIMERNOFG = 0x0000000C
Global Const $tagUPDATELAYEREDWINDOWINFO = 'dword Size;hwnd hDstDC;long DstX;long DstY;long cX;long cY;hwnd hSrcDC;long SrcX;long SrcY;dword crKey;byte BlendOp;byte BlendFlags;byte Alpha;byte AlphaFormat;dword Flags;long DirtyLeft;long DirtyTop;long DirtyRight;long DirtyBottom'
Global Const $tagWINDOWINFO = 'dword Size;struct;long rWindow[4];endstruct;struct;long rClient[4];endstruct;dword Style;dword ExStyle;dword WindowStatus;uint cxWindowBorders;uint cyWindowBorders;word atomWindowType;word CreatorVersion'
Global Const $tagWNDCLASS = 'uint Style;ptr hWndProc;int ClsExtra;int WndExtra;ptr hInstance;ptr hIcon;ptr hCursor;ptr hBackground;ptr MenuName;ptr ClassName'
Global Const $tagWNDCLASSEX = 'uint Size;uint Style;ptr hWndProc;int ClsExtra;int WndExtra;ptr hInstance;ptr hIcon;ptr hCursor;ptr hBackground;ptr MenuName;ptr ClassName;ptr hIconSm'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
Global Const $tagFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
#Region Public Functions
Func _WinAPI_AdjustWindowRectEx(ByRef $tRECT, $iStyle, $iExStyle = 0, $bMenu = False)
Local $aCall = DllCall('user32.dll', 'bool', 'AdjustWindowRectEx', 'struct*', $tRECT, 'dword', $iStyle, 'bool', $bMenu,  'dword', $iExStyle)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AnimateWindow($hWnd, $iFlags, $iDuration = 1000)
Local $aCall = DllCall('user32.dll', 'bool', 'AnimateWindow', 'hwnd', $hWnd, 'dword', $iDuration, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginDeferWindowPos($iAmount = 1)
Local $aCall = DllCall('user32.dll', 'handle', 'BeginDeferWindowPos', 'int', $iAmount)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_BringWindowToTop($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'BringWindowToTop', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BroadcastSystemMessage($iMsg, $wParam = 0, $lParam = 0, $iFlags = 0, $iRecipients = 0)
Local $aCall = DllCall('user32.dll', 'long', 'BroadcastSystemMessageW', 'dword', $iFlags, 'dword*', $iRecipients,  'uint', $iMsg, 'wparam', $wParam, 'lparam', $lParam)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return SetExtended($aCall[2], $aCall[0])
EndFunc
Func _WinAPI_CallWindowProc($pPrevWndFunc, $hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $pPrevWndFunc, "hwnd", $hWnd, "uint", $iMsg,  "wparam", $wParam, "lparam", $lParam)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_CallWindowProcW($pPrevWndProc, $hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('user32.dll', 'lresult', 'CallWindowProcW', 'ptr', $pPrevWndProc, 'hwnd', $hWnd, 'uint', $iMsg,  'wparam', $wParam, 'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CascadeWindows($aWnds, $tRECT = 0, $hParent = 0, $iFlags = 0, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aWnds, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tWnds = DllStructCreate('hwnd[' & $iCount & ']')
$iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tWnds, 1, $aWnds[$i], $iCount)
$iCount += 1
Next
Local $aCall = DllCall('user32.dll', 'word', 'CascadeWindows', 'hwnd', $hParent, 'uint', $iFlags, 'struct*', $tRECT,  'uint', $iCount - 1, 'struct*', $tWnds)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ChangeWindowMessageFilterEx($hWnd, $iMsg, $iAction)
Local $tCFS, $aCall
If $hWnd And (_WinAPI_GetVersion() > 6.0) Then
Local Const $tagCHANGEFILTERSTRUCT = 'dword cbSize; dword ExtStatus'
$tCFS = DllStructCreate($tagCHANGEFILTERSTRUCT)
DllStructSetData($tCFS, 1, DllStructGetSize($tCFS))
$aCall = DllCall('user32.dll', 'bool', 'ChangeWindowMessageFilterEx', 'hwnd', $hWnd, 'uint', $iMsg, 'dword', $iAction,  'struct*', $tCFS)
Else
$tCFS = 0
$aCall = DllCall('user32.dll', 'bool', 'ChangeWindowMessageFilter', 'uint', $iMsg, 'dword', $iAction)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended(DllStructGetData($tCFS, 2), 1)
EndFunc
Func _WinAPI_ChildWindowFromPointEx($hWnd, $tPOINT, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'hwnd', 'ChildWindowFromPointEx', 'hwnd', $hWnd, 'struct', $tPOINT, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeferWindowPos($hInfo, $hWnd, $hAfter, $iX, $iY, $iWidth, $iHeight, $iFlags)
Local $aCall = DllCall('user32.dll', 'handle', 'DeferWindowPos', 'handle', $hInfo, 'hwnd', $hWnd, 'hwnd', $hAfter,  'int', $iX, 'int', $iY, 'int', $iWidth, 'int', $iHeight, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DefWindowProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam,  "lparam", $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DefWindowProcW($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('user32.dll', 'lresult', 'DefWindowProcW', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DeregisterShellHookWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'DeregisterShellHookWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DragAcceptFiles($hWnd, $bAccept = True)
DllCall('shell32.dll', 'none', 'DragAcceptFiles', 'hwnd', $hWnd, 'bool', $bAccept)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_DragFinish($hDrop)
DllCall('shell32.dll', 'none', 'DragFinish', 'handle', $hDrop)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_DragQueryFileEx($hDrop, $iFlag = 0)
Local $aCall = DllCall('shell32.dll', 'uint', 'DragQueryFileW', 'handle', $hDrop, 'uint', -1, 'ptr', 0, 'uint', 0)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, 0, 0)
Local $iCount = $aCall[0], $iValidRow = 0
Local $aRet[$iCount + 1]
For $i = 0 To $iCount - 1
$aCall = DllCall('shell32.dll', 'uint', 'DragQueryFileW', 'handle', $hDrop, 'uint', $i, 'wstr', '', 'uint', 4096)
If Not $aCall[0] Then Return SetError(11, 0, 0)
If $iFlag Then
Local $bDir = _WinAPI_PathIsDirectory($aCall[3])
If (($iFlag = 1) And $bDir) Or (($iFlag = 2) And Not $bDir) Then
ContinueLoop
EndIf
EndIf
$iValidRow += 1
$aRet[$iValidRow] = $aCall[3]
$aRet[0] += 1
Next
If Not $aRet[0] Then Return SetError(12, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_DragQueryPoint($hDrop)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('shell32.dll', 'bool', 'DragQueryPoint', 'handle', $hDrop, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_EndDeferWindowPos($hInfo)
Local $aCall = DllCall('user32.dll', 'bool', 'EndDeferWindowPos', 'handle', $hInfo)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumChildWindows($hWnd, $bVisible = True)
If Not _WinAPI_GetWindow($hWnd, 5) Then Return SetError(2, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')
Dim $__g_vEnum[101][2] = [[0]]
DllCall('user32.dll', 'bool', 'EnumChildWindows', 'hwnd', $hWnd, 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', $bVisible)
If @error Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_FindWindow($sClassName, $sWindowName)
Local $aCall = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $sClassName, "wstr", $sWindowName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FlashWindow($hWnd, $bInvert = True)
Local $aCall = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $hWnd, "bool", $bInvert)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FlashWindowEx($hWnd, $iFlags = 3, $iCount = 3, $iTimeout = 0)
Local $tFlash = DllStructCreate($tagFLASHWINFO)
Local $iFlash = DllStructGetSize($tFlash)
Local $iMode = 0
If BitAND($iFlags, 1) <> 0 Then $iMode = BitOR($iMode, $FLASHW_CAPTION)
If BitAND($iFlags, 2) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TRAY)
If BitAND($iFlags, 4) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TIMER)
If BitAND($iFlags, 8) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TIMERNOFG)
DllStructSetData($tFlash, "Size", $iFlash)
DllStructSetData($tFlash, "hWnd", $hWnd)
DllStructSetData($tFlash, "Flags", $iMode)
DllStructSetData($tFlash, "Count", $iCount)
DllStructSetData($tFlash, "Timeout", $iTimeout)
Local $aCall = DllCall("user32.dll", "bool", "FlashWindowEx", "struct*", $tFlash)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetAncestor($hWnd, $iFlags = 1)
Local $aCall = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $hWnd, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClassInfoEx($sClass, $hInstance = 0)
Local $sTypeOfClass = 'wstr'
If Not IsString($sClass) Then $sTypeOfClass = 'ptr'
Local $tWNDCLASSEX = DllStructCreate($tagWNDCLASSEX)
Local $aCall = DllCall('user32.dll', 'bool', 'GetClassInfoExW', 'handle', $hInstance, $sTypeOfClass, $sClass,  'struct*', $tWNDCLASSEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWNDCLASSEX
EndFunc
Func _WinAPI_GetClassLongEx($hWnd, $iIndex)
Local $aCall
If @AutoItX64 Then
$aCall = DllCall('user32.dll', 'ulong_ptr', 'GetClassLongPtrW', 'hwnd', $hWnd, 'int', $iIndex)
Else
$aCall = DllCall('user32.dll', 'dword', 'GetClassLongW', 'hwnd', $hWnd, 'int', $iIndex)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClientHeight($hWnd)
Local $tRECT = _WinAPI_GetClientRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top")
EndFunc
Func _WinAPI_GetClientWidth($hWnd)
Local $tRECT = _WinAPI_GetClientRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndFunc
Func _WinAPI_GetDlgItem($hWnd, $iItemID)
Local $aCall = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $hWnd, "int", $iItemID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetForegroundWindow()
Local $aCall = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetGUIThreadInfo($iThreadId)
Local Const $tagGUITHREADINFO = 'dword Size;dword Flags;hwnd hWndActive;hwnd hWndFocus;hwnd hWndCapture;hwnd hWndMenuOwner;hwnd hWndMoveSize;hwnd hWndCaret;struct rcCaret;long left;long top;long right;long bottom;endstruct'
Local $tGTI = DllStructCreate($tagGUITHREADINFO)
DllStructSetData($tGTI, 1, DllStructGetSize($tGTI))
Local $aCall = DllCall('user32.dll', 'bool', 'GetGUIThreadInfo', 'dword', $iThreadId, 'struct*', $tGTI)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[11]
For $i = 0 To 10
$aRet[$i] = DllStructGetData($tGTI, $i + 2)
Next
For $i = 9 To 10
$aRet[$i] -= $aRet[$i - 2]
Next
Return $aRet
EndFunc
Func _WinAPI_GetLastActivePopup($hWnd)
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetLastActivePopup', 'hwnd', $hWnd)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] = $hWnd Then Return SetError(1, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetLayeredWindowAttributes($hWnd, ByRef $iTransColor, ByRef $iTransGUI, $bColorRef = False)
$iTransColor = -1
$iTransGUI = -1
Local $aCall = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $hWnd, "INT*", $iTransColor,  "byte*", $iTransGUI, "dword*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If Not $bColorRef Then
$aCall[2] = Int(BinaryMid($aCall[2], 3, 1) & BinaryMid($aCall[2], 2, 1) & BinaryMid($aCall[2], 1, 1))
EndIf
$iTransColor = $aCall[2]
$iTransGUI = $aCall[3]
Return $aCall[4]
EndFunc
Func _WinAPI_GetMessageExtraInfo()
Local $aCall = DllCall('user32.dll', 'lparam', 'GetMessageExtraInfo')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetShellWindow()
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetShellWindow')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTopWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetTopWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowDisplayAffinity($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'GetWindowDisplayAffinity', 'hwnd', $hWnd, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetWindowInfo($hWnd)
Local $tWINDOWINFO = DllStructCreate($tagWINDOWINFO)
DllStructSetData($tWINDOWINFO, 'Size', DllStructGetSize($tWINDOWINFO))
Local $aCall = DllCall('user32.dll', 'bool', 'GetWindowInfo', 'hwnd', $hWnd, 'struct*', $tWINDOWINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWINDOWINFO
EndFunc
Func _WinAPI_GetWindowPlacement($hWnd)
Local $tWindowPlacement = DllStructCreate($tagWINDOWPLACEMENT)
DllStructSetData($tWindowPlacement, "length", DllStructGetSize($tWindowPlacement))
Local $aCall = DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $hWnd, "struct*", $tWindowPlacement)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWindowPlacement
EndFunc
Func _WinAPI_IsChild($hWnd, $hWndParent)
Local $aCall = DllCall('user32.dll', 'bool', 'IsChild', 'hwnd', $hWndParent, 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsHungAppWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsHungAppWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsIconic($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsIconic', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowUnicode($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsWindowUnicode', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsZoomed($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsZoomed', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_KillTimer($hWnd, $iTimerID)
Local $aCall = DllCall('user32.dll', 'bool', 'KillTimer', 'hwnd', $hWnd, 'uint_ptr', $iTimerID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenIcon($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'OpenIcon', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PostMessage($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam,  "lparam", $lParam)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterClass($tWNDCLASS)
Local $aCall = DllCall('user32.dll', 'word', 'RegisterClassW', 'struct*', $tWNDCLASS)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterClassEx($tWNDCLASSEX)
Local $aCall = DllCall('user32.dll', 'word', 'RegisterClassExW', 'struct*', $tWNDCLASSEX)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterShellHookWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterShellHookWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterWindowMessage($sMessage)
Local $aCall = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $sMessage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SendMessageTimeout($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iTimeout = 1000, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'lresult', 'SendMessageTimeoutW', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam, 'uint', $iFlags, 'uint', $iTimeout, 'dword_ptr*', 0)
If @error Then Return SetError(@error, @extended, -1)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), -1)
Return $aCall[7]
EndFunc
Func _WinAPI_SetClassLongEx($hWnd, $iIndex, $iNewLong)
Local $aCall
If @AutoItX64 Then
$aCall = DllCall('user32.dll', 'ulong_ptr', 'SetClassLongPtrW', 'hwnd', $hWnd, 'int', $iIndex, 'long_ptr', $iNewLong)
Else
$aCall = DllCall('user32.dll', 'dword', 'SetClassLongW', 'hwnd', $hWnd, 'int', $iIndex, 'long', $iNewLong)
EndIf
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetForegroundWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'SetForegroundWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetLayeredWindowAttributes($hWnd, $iTransColor, $iTransGUI = 255, $iFlags = 0x03, $bColorRef = False)
If $iFlags = Default Or $iFlags = "" Or $iFlags < 0 Then $iFlags = 0x03
If Not $bColorRef Then
$iTransColor = Int(BinaryMid($iTransColor, 3, 1) & BinaryMid($iTransColor, 2, 1) & BinaryMid($iTransColor, 1, 1))
EndIf
Local $aCall = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $hWnd, "INT", $iTransColor,  "byte", $iTransGUI, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetMessageExtraInfo($lParam)
Local $aCall = DllCall('user32.dll', 'lparam', 'SetMessageExtraInfo', 'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetSysColors($vElements, $vColors)
Local $bIsEArray = IsArray($vElements), $bIsCArray = IsArray($vColors)
Local $iElementNum
If Not $bIsCArray And Not $bIsEArray Then
$iElementNum = 1
ElseIf $bIsCArray Or $bIsEArray Then
If Not $bIsCArray Or Not $bIsEArray Then Return SetError(-1, -1, False)
If UBound($vElements) <> UBound($vColors) Then Return SetError(-1, -1, False)
$iElementNum = UBound($vElements)
EndIf
Local $tElements = DllStructCreate("int Element[" & $iElementNum & "]")
Local $tColors = DllStructCreate("INT NewColor[" & $iElementNum & "]")
If Not $bIsEArray Then
DllStructSetData($tElements, "Element", $vElements, 1)
Else
For $x = 0 To $iElementNum - 1
DllStructSetData($tElements, "Element", $vElements[$x], $x + 1)
Next
EndIf
If Not $bIsCArray Then
DllStructSetData($tColors, "NewColor", $vColors, 1)
Else
For $x = 0 To $iElementNum - 1
DllStructSetData($tColors, "NewColor", $vColors[$x], $x + 1)
Next
EndIf
Local $aCall = DllCall("user32.dll", "bool", "SetSysColors", "int", $iElementNum, "struct*", $tElements, "struct*", $tColors)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTimer($hWnd, $iTimerID, $iElapse, $pTimerFunc)
Local $aCall = DllCall('user32.dll', 'uint_ptr', 'SetTimer', 'hwnd', $hWnd, 'uint_ptr', $iTimerID, 'uint', $iElapse,  'ptr', $pTimerFunc)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowDisplayAffinity($hWnd, $iAffinity)
Local $aCall = DllCall('user32.dll', 'bool', 'SetWindowDisplayAffinity', 'hwnd', $hWnd, 'dword', $iAffinity)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowLong($hWnd, $iIndex, $iValue)
_WinAPI_SetLastError(0)
Local $sFuncName = "SetWindowLongW"
If @AutoItX64 Then $sFuncName = "SetWindowLongPtrW"
Local $aCall = DllCall("user32.dll", "long_ptr", $sFuncName, "hwnd", $hWnd, "int", $iIndex, "long_ptr", $iValue)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowPlacement($hWnd, $tWindowPlacement)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $hWnd, "struct*", $tWindowPlacement)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowOwnedPopups($hWnd, $bShow)
Local $aCall = DllCall('user32.dll', 'bool', 'ShowOwnedPopups', 'hwnd', $hWnd, 'bool', $bShow)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SwitchToThisWindow($hWnd, $bAltTab = False)
DllCall('user32.dll', 'none', 'SwitchToThisWindow', 'hwnd', $hWnd, 'bool', $bAltTab)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_TileWindows($aWnds, $tRECT = 0, $hParent = 0, $iFlags = 0, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aWnds, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tWnds = DllStructCreate('hwnd[' & $iCount & ']')
$iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tWnds, 1, $aWnds[$i], $iCount)
$iCount += 1
Next
Local $aCall = DllCall('user32.dll', 'word', 'TileWindows', 'hwnd', $hParent, 'uint', $iFlags, 'struct*', $tRECT,  'uint', $iCount - 1, 'struct*', $tWnds)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterClass($sClass, $hInstance = 0)
Local $sTypeOfClass = 'wstr'
If Not IsString($sClass) Then $sTypeOfClass = 'ptr'
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterClassW', $sTypeOfClass, $sClass, 'handle', $hInstance)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindow($hWnd, $hDestDC, $tPTDest, $tSize, $hSrcDC, $tPTSrce, $iRGB, $tBlend, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $hWnd, "handle", $hDestDC, "struct*", $tPTDest,  "struct*", $tSize, "handle", $hSrcDC, "struct*", $tPTSrce, "dword", $iRGB, "struct*", $tBlend, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindowEx($hWnd, $iX, $iY, $hBitmap, $iOpacity = 255, $bDelete = False)
Local $aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', $hWnd)
Local $hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBitmap)
Local $hDestSv = $aCall[0]
Local $tPOINT
If ($iX = -1) And ($iY = -1) Then
$tPOINT = DllStructCreate('int;int')
Else
$tPOINT = DllStructCreate('int;int;int;int')
DllStructSetData($tPOINT, 3, $iX)
DllStructSetData($tPOINT, 4, $iY)
EndIf
DllStructSetData($tPOINT, 1, 0)
DllStructSetData($tPOINT, 2, 0)
Local $tBLENDFUNCTION = DllStructCreate($tagBLENDFUNCTION)
DllStructSetData($tBLENDFUNCTION, 1, 0)
DllStructSetData($tBLENDFUNCTION, 2, 0)
DllStructSetData($tBLENDFUNCTION, 3, $iOpacity)
DllStructSetData($tBLENDFUNCTION, 4, 1)
Local Const $tagBITMAP = 'struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct'
Local $tObj = DllStructCreate($tagBITMAP)
DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
Local $tSize = DllStructCreate($tagSIZE, DllStructGetPtr($tObj, "bmWidth"))
$aCall = DllCall('user32.dll', 'bool', 'UpdateLayeredWindow', 'hwnd', $hWnd, 'handle', $hDC, 'ptr', DllStructGetPtr($tPOINT, 3),  'struct*', $tSize, 'handle', $hDestDC, 'struct*', $tPOINT, 'dword', 0, 'struct*', $tBLENDFUNCTION, 'dword', 0x02)
Local $iError = @error
DllCall('user32.dll', 'bool', 'ReleaseDC', 'hwnd', $hWnd, 'handle', $hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
If $iError Then Return SetError($iError, 0, False)
If $bDelete Then
DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hBitmap)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindowIndirect($hWnd, $tULWINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'UpdateLayeredWindowIndirect', 'hwnd', $hWnd, 'struct*', $tULWINFO)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_WindowFromPoint(ByRef $tPOINT)
Local $aCall = DllCall("user32.dll", "hwnd", "WindowFromPoint", "struct", $tPOINT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
#EndRegion Public Functions
#Region Internal Functions
Func __EnumDefaultProc($pData, $lParam)
#forceref $lParam
Local $iLength = _WinAPI_StrLen($pData)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $pData), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = ''
EndIf
Return 1
EndFunc
#EndRegion Internal Functions
#Region Global Variables and Constants
Global Const $tagOSVERSIONINFOEX = $tagOSVERSIONINFO & ';ushort ServicePackMajor;ushort ServicePackMinor;ushort SuiteMask;byte ProductType;byte Reserved'
Global Const $tagRAWINPUTDEVICE = 'struct;ushort UsagePage;ushort Usage;dword Flags;hwnd hTarget;endstruct'
Global Const $tagRAWINPUTHEADER = 'struct;dword Type;dword Size;handle hDevice;wparam wParam;endstruct'
Global Const $tagRAWMOUSE = 'ushort Flags;ushort Alignment;ushort ButtonFlags;ushort ButtonData;ulong RawButtons;long LastX;long LastY;ulong ExtraInformation;'
Global Const $tagRAWKEYBOARD = 'ushort MakeCode;ushort Flags;ushort Reserved;ushort VKey;uint Message;ulong ExtraInformation;'
Global Const $tagRAWHID = 'dword SizeHid;dword Count;'
Global Const $tagRAWINPUTMOUSE = $tagRAWINPUTHEADER & ';' & $tagRAWMOUSE
Global Const $tagRAWINPUTKEYBOARD = $tagRAWINPUTHEADER & ';' & $tagRAWKEYBOARD
Global Const $tagRAWINPUTHID = $tagRAWINPUTHEADER & ';' & $tagRAWHID
Global Const $tagRID_DEVICE_INFO_MOUSE = 'struct;dword Id;dword NumberOfButtons;dword SampleRate;int HasHorizontalWheel;endstruc'
Global Const $tagRID_DEVICE_INFO_KEYBOARD = 'struct;dword KbType;dword KbSubType;dword KeyboardMode;dword NumberOfFunctionKeys;dword NumberOfIndicators;dword NumberOfKeysTotal;endstruct'
Global Const $tagRID_DEVICE_INFO_HID = 'struct;dword VendorId;dword ProductId;dword VersionNumber;ushort UsagePage;ushort Usage;endstruc'
Global Const $tagRID_INFO_MOUSE = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_MOUSE & ';dword Unused[2];'
Global Const $tagRID_INFO_KEYBOARD = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_KEYBOARD
Global Const $tagRID_INFO_HID = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_HID & ';dword Unused[2]'
Global Const $tagUSEROBJECTFLAGS = 'int Inherit;int Reserved;dword Flags'
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
#Region Public Functions
Func _WinAPI_ActivateKeyboardLayout($hLocale, $iFlag = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'ActivateKeyboardLayout', 'handle', $hLocale, 'uint', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_AddClipboardFormatListener($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'AddClipboardFormatListener', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CallNextHookEx($hHook, $iCode, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $hHook, "int", $iCode, "wparam", $wParam, "lparam", $lParam)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseDesktop($hDesktop)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseDesktop', 'handle', $hDesktop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseWindowStation($hStation)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseWindowStation', 'handle', $hStation)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CompressBuffer($pUncompressedBuffer, $iUncompressedSize, $pCompressedBuffer, $iCompressedSize, $iFormatAndEngine = 0x0002)
Local $aCall, $pWorkSpace = 0, $iError = 0
Do
$aCall = DllCall('ntdll.dll', 'uint', 'RtlGetCompressionWorkSpaceSize', 'ushort', $iFormatAndEngine, 'ulong*', 0, 'ulong*', 0)
If @error Or $aCall[0] Then
$iError = @error + 20
ExitLoop
EndIf
$pWorkSpace = __HeapAlloc($aCall[2])
If @error Then
$iError = @error + 100
ExitLoop
EndIf
$aCall = DllCall('ntdll.dll', 'uint', 'RtlCompressBuffer', 'ushort', $iFormatAndEngine, 'struct*', $pUncompressedBuffer,  'ulong', $iUncompressedSize, 'struct*', $pCompressedBuffer, 'ulong', $iCompressedSize, 'ulong', 4096,  'ulong*', 0, 'ptr', $pWorkSpace)
If @error Or $aCall[0] Or Not $aCall[7] Then
$iError = @error + 30
ExitLoop
EndIf
Until 1
__HeapFree($pWorkSpace)
If $iError Then
If IsArray($aCall) Then
Return SetError(10, $aCall[0], 0)
Else
Return SetError($iError, 0, 0)
EndIf
EndIf
Return $aCall[7]
EndFunc
Func _WinAPI_ComputeCrc32($pMemory, $iLength)
If _WinAPI_IsBadReadPtr($pMemory, $iLength) Then Return SetError(1, @extended, 0)
Local $aCall = DllCall('ntdll.dll', 'dword', 'RtlComputeCrc32', 'dword', 0, 'struct*', $pMemory, 'int', $iLength)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDesktop($sName, $iAccess = 0x0002, $iFlags = 0, $iHeap = 0, $tSecurity = 0)
Local $aCall
If $iHeap Then
$aCall = DllCall('user32.dll', 'handle', 'CreateDesktopExW', 'wstr', $sName, 'ptr', 0, 'ptr', 0, 'dword', $iFlags,  'dword', $iAccess, 'struct*', $tSecurity, 'ulong', $iHeap, 'ptr', 0)
Else
$aCall = DllCall('user32.dll', 'handle', 'CreateDesktopW', 'wstr', $sName, 'ptr', 0, 'ptr', 0, 'dword', $iFlags,  'dword', $iAccess, 'struct*', $tSecurity)
EndIf
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateWindowStation($sName = '', $iAccess = 0, $iFlags = 0, $tSecurity = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateWindowStationW', 'wstr', $sName, 'dword', $iFlags, 'dword', $iAccess,  'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DecompressBuffer($pUncompressedBuffer, $iUncompressedSize, $pCompressedBuffer, $iCompressedSize, $iFormat = 0x0002)
Local $aCall = DllCall('ntdll.dll', 'long', 'RtlDecompressBuffer', 'ushort', $iFormat, 'struct*', $pUncompressedBuffer,  'ulong', $iUncompressedSize, 'struct*', $pCompressedBuffer, 'ulong', $iCompressedSize, 'ulong*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _WinAPI_DefRawInputProc($paRawInput, $iInput)
Local $aCall = DllCall('user32.dll', 'lresult', 'DefRawInputProc', 'ptr', $paRawInput, 'int', $iInput,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_EnumDesktops($hStation)
If StringCompare(_WinAPI_GetUserObjectInformation($hStation, 3), 'WindowStation') Then Return SetError(1, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumDefaultProc', 'bool', 'ptr;lparam')
Dim $__g_vEnum[101] = [0]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDesktopsW', 'handle', $hStation, 'ptr', DllCallbackGetPtr($hEnumProc),  'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumDesktopWindows($hDesktop, $bVisible = True)
If StringCompare(_WinAPI_GetUserObjectInformation($hDesktop, 3), 'Desktop') Then Return SetError(1, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')
Dim $__g_vEnum[101][2] = [[0]]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDesktopWindows', 'handle', $hDesktop, 'ptr', DllCallbackGetPtr($hEnumProc),  'lparam', $bVisible)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumPageFiles()
Local $aInfo = _WinAPI_GetSystemInfo()
Local $hEnumProc = DllCallbackRegister('__EnumPageFilesProc', 'bool', 'lparam;ptr;ptr')
Dim $__g_vEnum[101][4] = [[0]]
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumPageFilesW', 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', $aInfo[1])
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumRawInputDevices()
Local Const $tagRAWINPUTDEVICELIST = 'struct;handle hDevice;dword Type;endstruct'
Local $tRIDL, $iLength = DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICELIST))
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceList', 'ptr', 0, 'uint*', 0, 'uint', $iLength)
If @error Then Return SetError(@error + 10, @extended, 0)
If ($aCall[0] = 4294967295) Or (Not $aCall[2]) Then Return SetError(10, -1, 0)
Local $tData = DllStructCreate('byte[' & ($aCall[2] * $iLength) & ']')
Local $pData = DllStructGetPtr($tData)
If @error Then Return SetError(@error + 20, 0, 0)
$aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceList', 'ptr', $pData, 'uint*', $aCall[2], 'uint', $iLength)
If ($aCall[0] = 4294967295) Or (Not $aCall[0]) Then Return SetError(1, -1, 0)
Local $aRet[$aCall[2] + 1][2] = [[$aCall[2]]]
For $i = 1 To $aCall[2]
$tRIDL = DllStructCreate('ptr;dword', $pData + $iLength * ($i - 1))
For $j = 0 To 1
$aRet[$i][$j] = DllStructGetData($tRIDL, $j + 1)
Next
Next
Return $aRet
EndFunc
Func _WinAPI_EnumWindowStations()
Local $hEnumProc = DllCallbackRegister('__EnumDefaultProc', 'bool', 'ptr;lparam')
Dim $__g_vEnum[101] = [0]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumWindowStationsW', 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_ExpandEnvironmentStrings($sString)
Local $aCall = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $sString, "wstr", "", "dword", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return $aCall[2]
EndFunc
Func _WinAPI_GetActiveWindow()
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetActiveWindow')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetAsyncKeyState($iKey)
Local $aCall = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $iKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCapture()
Local $aCall = DllCall("user32.dll", "hwnd", "GetCapture")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClipboardSequenceNumber()
Local $aCall = DllCall('user32.dll', 'dword', 'GetClipboardSequenceNumber')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentHwProfile()
Local $tagHW_PROFILE_INFO = 'dword DockInfo;wchar szHwProfileGuid[39];wchar szHwProfileName[80]'
Local $tHWPI = DllStructCreate($tagHW_PROFILE_INFO)
Local $aCall = DllCall('advapi32.dll', 'bool', 'GetCurrentHwProfileW', 'struct*', $tHWPI)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = DllStructGetData($tHWPI, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetDefaultPrinter()
Local $aCall = DllCall('winspool.drv', 'bool', 'GetDefaultPrinterW', 'wstr', '', 'dword*', 2048)
If @error Then Return SetError(@error, @extended, '')
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetDllDirectory()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetDllDirectoryW', 'dword', 4096, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetEffectiveClientRect($hWnd, $aCtrl, $iStart = 0, $iEnd = -1)
If Not IsArray($aCtrl) Then
Local $iCtrl = $aCtrl
Dim $aCtrl[1] = [$iCtrl]
$iStart = 0
$iEnd = 0
EndIf
If __CheckErrorArrayBounds($aCtrl, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tCtrl = DllStructCreate('uint64[' & ($iCount + 2) & ']')
$iCount = 2
For $i = $iStart To $iEnd
If IsHWnd($aCtrl[$i]) Then
$aCtrl[$i] = _WinAPI_GetDlgCtrlID($aCtrl[$i])
EndIf
DllStructSetData($tCtrl, 1, _WinAPI_MakeQWord(1, $aCtrl[$i]), $iCount)
$iCount += 1
Next
Local $tRECT = DllStructCreate($tagRECT)
DllCall('comctl32.dll', 'none', 'GetEffectiveClientRect', 'hwnd', $hWnd, 'struct*', $tRECT, 'struct*', $tCtrl)
If @error Then Return SetError(@error, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetHandleInformation($hObject)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetHandleInformation', 'handle', $hObject, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetIdleTime()
Local $tLASTINPUTINFO = DllStructCreate('uint;dword')
DllStructSetData($tLASTINPUTINFO, 1, DllStructGetSize($tLASTINPUTINFO))
Local $aCall = DllCall('user32.dll', 'bool', 'GetLastInputInfo', 'struct*', $tLASTINPUTINFO)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return _WinAPI_GetTickCount() - DllStructGetData($tLASTINPUTINFO, 2)
EndFunc
Func _WinAPI_GetKeyboardLayout($hWnd)
Local $aCall = DllCall('user32.dll', 'dword', 'GetWindowThreadProcessId', 'hwnd', $hWnd, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'GetKeyboardLayout', 'dword', $aCall[0])
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetKeyboardLayoutList()
Local $aCall = DllCall('user32.dll', 'uint', 'GetKeyboardLayoutList', 'int', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
Local $tData = DllStructCreate('handle[' & $aCall[0] & ']')
$aCall = DllCall('user32.dll', 'uint', 'GetKeyboardLayoutList', 'int', $aCall[0], 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aList[$aCall[0] + 1] = [$aCall[0]]
For $i = 1 To $aList[0]
$aList[$i] = DllStructGetData($tData, 1, $i)
Next
Return $aList
EndFunc
Func _WinAPI_GetKeyboardState()
Local $tData = DllStructCreate('byte[256]')
Local $aCall = DllCall('user32.dll', 'bool', 'GetKeyboardState', 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tData
EndFunc
Func _WinAPI_GetKeyboardType($iType)
Local $aCall = DllCall('user32.dll', 'int', 'GetKeyboardType', 'int', $iType)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetKeyNameText($lParam)
Local $aCall = DllCall('user32.dll', 'int', 'GetKeyNameTextW', 'long', $lParam, 'wstr', '', 'int', 128)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetKeyState($vKey)
Local $aCall = DllCall('user32.dll', 'short', 'GetKeyState', 'int', $vKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetModuleHandleEx($sModule, $iFlags = 0)
If StringStripWS($sModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) = "" Then $sModule = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', $iFlags, "wstr", $sModule, 'ptr*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[3]
EndFunc
Func _WinAPI_GetMUILanguage()
Local $aCall = DllCall('comctl32.dll', 'word', 'GetMUILanguage')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPerformanceInfo()
Local $tPI = DllStructCreate('dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;dword;dword;dword')
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetPerformanceInfo', 'struct*', $tPI, 'dword', DllStructGetSize($tPI))
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[13]
For $i = 0 To 12
$aRet[$i] = DllStructGetData($tPI, $i + 2)
Next
For $i = 0 To 8
$aRet[$i] *= $aRet[9]
Next
Return $aRet
EndFunc
Func _WinAPI_GetProcAddress($hModule, $vName)
Local $sType = "str"
If IsNumber($vName) Then $sType = "word"
Local $aCall = DllCall("kernel32.dll", "ptr", "GetProcAddress", "handle", $hModule, $sType, $vName)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPhysicallyInstalledSystemMemory()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetPhysicallyInstalledSystemMemory', 'uint64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_GetProcessShutdownParameters()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetProcessShutdownParameters', 'dword*', 0, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended(Number(Not $aCall[2]), $aCall[1])
EndFunc
Func _WinAPI_GetProcessWindowStation()
Local $aCall = DllCall('user32.dll', 'handle', 'GetProcessWindowStation')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPwrCapabilities()
If Not __DLL('powrprof.dll') Then Return SetError(103, 0, 0)
Local $tSPC = DllStructCreate('byte[18];byte[3];byte;byte[8];byte[2];ulong[6];ulong[5]')
Local $aCall = DllCall('powrprof.dll', 'boolean', 'GetPwrCapabilities', 'struct*', $tSPC)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[25]
For $i = 0 To 17
$aRet[$i] = DllStructGetData($tSPC, 1, $i + 1)
Next
$aRet[18] = DllStructGetData($tSPC, 3)
For $i = 19 To 20
$aRet[$i] = DllStructGetData($tSPC, 5, $i - 18)
Next
For $i = 21 To 24
$aRet[$i] = DllStructGetData($tSPC, 7, $i - 20)
Next
Return $aRet
EndFunc
Func _WinAPI_GetRawInputBuffer($pBuffer, $iLength)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputBuffer', 'struct*', $pBuffer, 'uint*', $iLength,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If ($aCall[0] = 4294967295) Or (Not $aCall[1]) Then Return SetError(10, -1, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetRawInputBufferLength()
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputBuffer', 'ptr', 0, 'uint*', 0,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return $aCall[2] * 8
EndFunc
Func _WinAPI_GetRawInputData($hRawInput, $pBuffer, $iLength, $iFlag)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputData', 'handle', $hRawInput, 'uint', $iFlag, 'struct*', $pBuffer,  'uint*', $iLength, 'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return ($aCall[3] ? $aCall[0] : $aCall[4])
EndFunc
Func _WinAPI_GetRawInputDeviceInfo($hDevice, $pBuffer, $iLength, $iFlag)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceInfoW', 'handle', $hDevice, 'uint', $iFlag, 'struct*', $pBuffer,  'uint*', $iLength)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return ($aCall[3] ? $aCall[0] : $aCall[4])
EndFunc
Func _WinAPI_GetRegisteredRawInputDevices($pBuffer, $iLength)
Local $iLengthRAW = DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICE))
Local $aCall = DllCall('user32.dll', 'uint', 'GetRegisteredRawInputDevices', 'struct*', $pBuffer,  'uint*', Floor($iLength / $iLengthRAW), 'uint', $iLengthRAW)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then
Local $iLastError = _WinAPI_GetLastError()
If $iLastError = 122 Then Return SetExtended($iLastError, $aCall[2] * $iLengthRAW)
Return SetError(10, $iLastError, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetStartupInfo()
Local $tSI = DllStructCreate($tagSTARTUPINFO)
DllCall('kernel32.dll', 'none', 'GetStartupInfoW', 'struct*', $tSI)
If @error Then Return SetError(@error, @extended, 0)
Return $tSI
EndFunc
Func _WinAPI_GetSystemDEPPolicy()
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetSystemDEPPolicy')
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSystemInfo()
Local $sProc
If _WinAPI_IsWow64Process() Then
$sProc = 'GetNativeSystemInfo'
Else
$sProc = 'GetSystemInfo'
EndIf
Local Const $tagSYSTEMINFO = 'struct;word ProcessorArchitecture;word Reserved; endstruct;dword PageSize;' &  'ptr MinimumApplicationAddress;ptr MaximumApplicationAddress;dword_ptr ActiveProcessorMask;dword NumberOfProcessors;' &  'dword ProcessorType;dword AllocationGranularity;word ProcessorLevel;word ProcessorRevision'
Local $tSystemInfo = DllStructCreate($tagSYSTEMINFO)
DllCall('kernel32.dll', 'none', $sProc, 'struct*', $tSystemInfo)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[10]
$aRet[0] = DllStructGetData($tSystemInfo, 1)
For $i = 1 To 9
$aRet[$i] = DllStructGetData($tSystemInfo, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_GetSystemPowerStatus()
Local $tagSYSTEM_POWER_STATUS = 'byte ACLineStatus;byte BatteryFlag;byte BatteryLifePercent;byte Reserved1;' &  'int BatteryLifeTime;int BatteryFullLifeTime'
Local $tSYSTEM_POWER_STATUS = DllStructCreate($tagSYSTEM_POWER_STATUS)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetSystemPowerStatus', 'struct*', $tSYSTEM_POWER_STATUS)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
$aRet[0] = DllStructGetData($tSYSTEM_POWER_STATUS, 1)
$aRet[1] = DllStructGetData($tSYSTEM_POWER_STATUS, 2)
$aRet[2] = DllStructGetData($tSYSTEM_POWER_STATUS, 3)
$aRet[3] = DllStructGetData($tSYSTEM_POWER_STATUS, 5)
$aRet[4] = DllStructGetData($tSYSTEM_POWER_STATUS, 6)
Return $aRet
EndFunc
Func _WinAPI_GetSystemTimes()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetSystemTimes', 'uint64*', 0, 'uint64*', 0, 'uint64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = $aCall[$i + 1]
Next
Return $aRet
EndFunc
Func _WinAPI_GetSystemWow64Directory()
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetSystemWow64DirectoryW', 'wstr', '', 'uint', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, _WinAPI_GetLastError(), '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetTickCount()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetTickCount')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTickCount64()
Local $aCall = DllCall('kernel32.dll', 'uint64', 'GetTickCount64')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetUserObjectInformation($hObject, $iIndex)
Local $aCall = DllCall('user32.dll', 'bool', 'GetUserObjectInformationW', 'handle', $hObject, 'int', $iIndex, 'ptr', 0,  'dword', 0, 'dword*', 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 10, @extended, 0)
Local $tData
Switch $iIndex
Case 1
$tData = DllStructCreate($tagUSEROBJECTFLAGS)
Case 5, 6
$tData = DllStructCreate('uint')
Case 2, 3
$tData = DllStructCreate('wchar[' & $aCall[5] & ']')
Case 4
$tData = DllStructCreate('byte[' & $aCall[5] & ']')
Case Else
Return SetError(20, 0, 0)
EndSwitch
$aCall = DllCall('user32.dll', 'bool', 'GetUserObjectInformationW', 'handle', $hObject, 'int', $iIndex, 'struct*', $tData,  'dword', DllStructGetSize($tData), 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 30, @extended, 0)
Switch $iIndex
Case 1, 4
Return $tData
Case Else
Return DllStructGetData($tData, 1)
EndSwitch
EndFunc
Func _WinAPI_GetVersionEx()
Local $tOSVERSIONINFOEX = DllStructCreate($tagOSVERSIONINFOEX)
DllStructSetData($tOSVERSIONINFOEX, 'OSVersionInfoSize', DllStructGetSize($tOSVERSIONINFOEX))
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVERSIONINFOEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tOSVERSIONINFOEX
EndFunc
Func _WinAPI_GetWorkArea()
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'int', 'SystemParametersInfo', 'uint', 48, 'uint', 0, 'struct*', $tRECT, 'uint', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_InitMUILanguage($iLanguage)
DllCall('comctl32.dll', 'none', 'InitMUILanguage', 'word', $iLanguage)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_IsLoadKBLayout($iLanguage)
Local $aLayout = _WinAPI_GetKeyboardLayoutList()
If @error Then Return SetError(@error, @extended, False)
For $i = 1 To $aLayout[0]
If $aLayout[$i] = $iLanguage Then Return True
Next
Return False
EndFunc
Func _WinAPI_IsProcessorFeaturePresent($iFeature)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsProcessorFeaturePresent', 'dword', $iFeature)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowEnabled($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsWindowEnabled', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Keybd_Event($vKey, $iFlags, $iScanCode = 0, $iExtraInfo = 0)
DllCall('user32.dll', 'none', 'keybd_event', 'byte', $vKey, 'byte', $iScanCode, 'dword', $iFlags, 'ulong_ptr', $iExtraInfo)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_LoadKeyboardLayout($iLanguage, $iFlag = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'LoadKeyboardLayoutW', 'wstr', Hex($iLanguage, 8), 'uint', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LockWorkStation()
Local $aCall = DllCall('user32.dll', 'bool', 'LockWorkStation')
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MapVirtualKey($iCode, $iType, $hLocale = 0)
Local $aCall = DllCall('user32.dll', 'INT', 'MapVirtualKeyExW', 'uint', $iCode, 'uint', $iType, 'uint_ptr', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_Mouse_Event($iFlags, $iX = 0, $iY = 0, $iData = 0, $iExtraInfo = 0)
DllCall("user32.dll", "none", "mouse_event", "dword", $iFlags, "dword", $iX, "dword", $iY, "dword", $iData,  "ulong_ptr", $iExtraInfo)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _WinAPI_OpenDesktop($sName, $iAccess = 0, $iFlags = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenDesktopW', 'wstr', $sName, 'dword', $iFlags, 'bool', $bInherit,  'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenInputDesktop($iAccess = 0, $iFlags = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenInputDesktop', 'dword', $iFlags, 'bool', $bInherit, 'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenWindowStation($sName, $iAccess = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenWindowStationW', 'wstr', $sName, 'bool', $bInherit, 'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_QueryPerformanceCounter()
Local $aCall = DllCall('kernel32.dll', 'bool', 'QueryPerformanceCounter', 'int64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_QueryPerformanceFrequency()
Local $aCall = DllCall('kernel32.dll', 'bool', 'QueryPerformanceFrequency', 'int64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_RegisterHotKey($hWnd, $iID, $iModifiers, $vKey)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterHotKey', 'hwnd', $hWnd, 'int', $iID, 'uint', $iModifiers, 'uint', $vKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterPowerSettingNotification($hWnd, $sGUID)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'RegisterPowerSettingNotification', 'handle', $hWnd, 'struct*', $tGUID, 'dword', 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterRawInputDevices($paDevice, $iCount = 1)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterRawInputDevices', 'struct*', $paDevice, 'uint', $iCount,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICE)))
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ReleaseCapture()
Local $aCall = DllCall("user32.dll", "bool", "ReleaseCapture")
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveClipboardFormatListener($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'RemoveClipboardFormatListener', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetActiveWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'int', 'SetActiveWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCapture($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDefaultPrinter($sPrinter)
Local $aCall = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $sPrinter)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDllDirectory($sDirPath = Default)
If $sDirPath = Default Then $sDirPath = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetDllDirectoryW', 'wstr', $sDirPath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetKeyboardLayout($hWnd, $iLanguage, $iFlags = 0)
If Not _WinAPI_IsWindow($hWnd) Then Return SetError(@error + 10, @extended, 0)
Local $hLocale = 0
If $iLanguage Then
$hLocale = _WinAPI_LoadKeyboardLayout($iLanguage)
If Not $hLocale Then Return SetError(10, 0, 0)
EndIf
Local Const $WM_INPUTLANGCHANGEREQUEST = 0x0050
DllCall('user32.dll', 'none', 'SendMessage', 'hwnd', $hWnd, 'uint', $WM_INPUTLANGCHANGEREQUEST, 'uint', $iFlags, 'uint_ptr', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_SetKeyboardState(ByRef $tState)
Local $aCall = DllCall('user32.dll', 'int', 'SetKeyboardState', 'struct*', $tState)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetProcessShutdownParameters($iLevel, $bDialog = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetProcessShutdownParameters', 'dword', $iLevel, 'dword', Not $bDialog)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetProcessWindowStation($hStation)
Local $aCall = DllCall('user32.dll', 'bool', 'SetProcessWindowStation', 'handle', $hStation)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetUserObjectInformation($hObject, $iIndex, ByRef $tData)
If $iIndex <> 1 Then Return SetError(10, 0, False)
Local $aCall = DllCall('user32.dll', 'bool', 'SetUserObjectInformationW', 'handle', $hObject, 'int', 1, 'struct*', $tData,  'dword', DllStructGetSize($tData))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowsHookEx($iHook, $pProc, $hDll, $iThreadId = 0)
Local $aCall = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $iHook, "ptr", $pProc, "handle", $hDll,  "dword", $iThreadId)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWinEventHook($iEventMin, $iEventMax, $pEventProc, $iPID = 0, $iThreadId = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'SetWinEventHook', 'uint', $iEventMin, 'uint', $iEventMax, 'ptr', 0,  'ptr', $pEventProc, 'dword', $iPID, 'dword', $iThreadId, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonCreate($hWnd, $sText)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonCreate', 'hwnd', $hWnd, 'wstr', $sText)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonDestroy($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonDestroy', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonQuery($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonQuery', 'hwnd', $hWnd, 'wstr', '', 'dword*', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_SwitchDesktop($hDesktop)
Local $aCall = DllCall('user32.dll', 'bool', 'SwitchDesktop', 'handle', $hDesktop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SystemParametersInfo($iAction, $iParam = 0, $vParam = 0, $iWinIni = 0)
Local $aCall = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $iAction, "uint", $iParam, "struct*", $vParam,  "uint", $iWinIni)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_TrackMouseEvent($hWnd, $iFlags, $iTime = -1)
Local $tTME = DllStructCreate('dword;dword;hwnd;dword')
DllStructSetData($tTME, 1, DllStructGetSize($tTME))
DllStructSetData($tTME, 2, $iFlags)
DllStructSetData($tTME, 3, $hWnd)
DllStructSetData($tTME, 4, $iTime)
Local $aCall = DllCall('user32.dll', 'bool', 'TrackMouseEvent', 'struct*', $tTME)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnhookWindowsHookEx($hHook)
Local $aCall = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $hHook)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnhookWinEvent($hEventHook)
Local $aCall = DllCall('user32.dll', 'bool', 'UnhookWinEvent', 'handle', $hEventHook)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnloadKeyboardLayout($hLocale)
Local $aCall = DllCall('user32.dll', 'bool', 'UnloadKeyboardLayout', 'handle', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterHotKey($hWnd, $iID)
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterHotKey', 'hwnd', $hWnd, 'int', $iID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterPowerSettingNotification($hNotify)
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterPowerSettingNotification', 'handle', $hNotify)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __EnumPageFilesProc($iSize, $pInfo, $pFile)
Local $tEPFI = DllStructCreate('dword;dword;ulong_ptr;ulong_ptr;ulong_ptr', $pInfo)
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData(DllStructCreate('wchar[' & (_WinAPI_StrLen($pFile) + 1) & ']', $pFile), 1)
For $i = 1 To 3
$__g_vEnum[$__g_vEnum[0][0]][$i] = DllStructGetData($tEPFI, $i + 2) * $iSize
Next
Return 1
EndFunc
#EndRegion Public Functions
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
$taTarget = _tName("")
$tTarget = _RtlInitUnicodeString($taTarget)
$tTarget.MaximumLength = 512
_NtQuerySymbolicLinkObject($hLink, $tTarget)
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
EndFunc
Func _RtlInitUnicodeString($tSourceString)
Local $tUnicodeString = DllStructCreate($sTagUNICODESTRING)
DllCall("Ntdll.dll", "NONE", "RtlInitUnicodeString", "struct*", $tUnicodeString, "struct*", $tSourceString)
If @error Then SetError(@error, 0, 0)
Return $tUnicodeString
EndFunc
Func _tName($String)
Local $t = DllStructCreate("wchar String[512]")
DllStructSetData($t, 1, $String)
Return $t
EndFunc
Func _InitializeObjectAttributes($pObjectName, $ulAttributes = 0, $hRootDirectory = Null, $pSecurityDescriptor = Null)
Local $tObject_Attributes = DllStructCreate($sTagOBJECT_ATTRIBUTES)
DllStructSetData($tObject_Attributes, 1, DllStructGetSize($tObject_Attributes))
DllStructSetData($tObject_Attributes, 2, $hRootDirectory)
DllStructSetData($tObject_Attributes, 3, $pObjectName)
Return $tObject_Attributes
EndFunc
Func _NtQuerySymbolicLinkObject($hLinkHandle, $tLinkTarget)
Local $aRet = DllCall("Ntdll.dll", "LONG", "NtQuerySymbolicLinkObject", "HANDLE", $hLinkHandle, "struct*", $tLinkTarget, "ULONG*", 0)
If @error Then SetError(@error, 0, 0)
If $aRet[0] <> 0 Then SetError(1, $aRet[0], 0)
EndFunc
Func _NtOpenDirectoryObject($pObjectAttr, $AccessMask)
Local $aRet = DllCall("Ntdll.dll", "LONG", "NtOpenDirectoryObject", "HANDLE*", 0, "ULONG", $AccessMask, "PTR", $pObjectAttr)
If @error Then SetError(@error, 0, 0)
If $aRet[0] < 0 Or $aRet[1] = 0 Then SetError(1, $aRet[0], 0)
Return $aRet[1]
EndFunc
Func _NtOpenSymbolicLinkObject($pObjectAttr, $AccessMask)
Local $aRet = DllCall("Ntdll.dll", "LONG", "NtOpenSymbolicLinkObject", "HANDLE*", 0, "ULONG", $AccessMask, "PTR", $pObjectAttr)
If @error Then Return SetError(@error, 0, 0)
If $aRet[0] < 0 Or $aRet[1] = 0 Then Return SetError(1, 0, 0)
Return $aRet[1]
EndFunc
Func _ArrayMultiColSort(ByRef $aArray, $aSortData, $iStart = 0, $iEnd = 0)
If UBound($aArray, 2) = 0 Then
Return SetError(1, 1, "")
EndIf
If UBound($aSortData, 2) <> 2 Then
Return SetError(1, 2, "")
EndIf
If UBound($aSortData) > UBound($aArray) Then
Return SetError(1, 3)
EndIf
For $i = 0 To UBound($aSortData) - 1
If $aSortData[$i][0] < 0 Or $aSortData[$i][0] > UBound($aArray, 2) -1 Then
Return SetError(2, 3, "")
EndIf
Next
If $iStart < 0 Then
$iStart = 0
EndIf
If $iStart >= UBound($aArray) - 1 Then
Return SetError(1, 4, "")
EndIf
If $iEnd <= 0 Or $iEnd >= UBound($aArray) - 1 Then
$iEnd = UBound($aArray) - 1
EndIf
If $iEnd <= $iStart Then
Return SetError(1, 5, "")
EndIf
Local $iCurrCol, $iChunk_Start, $iMatchCol
__AMCS_SortChunk($aArray, $aSortData, 0, $aSortData[0][0], $iStart, $iEnd)
If @error Then
Return SetError(2, @extended, "")
EndIf
For $iSortData_Row = 1 To UBound($aSortData) - 1
$iCurrCol = $aSortData[$iSortData_Row][0]
Local $aBaseValue[$iSortData_Row]
For $i = 0 To $iSortData_Row - 1
$aBaseValue[$i] = $aArray[$iStart][$aSortData[$i][0]]
Next
$iChunk_Start = $iStart
For $iRow = $iStart + 1 To $iEnd
For $k = 0 To $iSortData_Row - 1
$iMatchCol = $aSortData[$k][0]
If $aArray[$iRow][$iMatchCol] <> $aBaseValue[$k] Then
If $iChunk_Start < $iRow - 1 Then
__AMCS_SortChunk($aArray, $aSortData, $iSortData_Row, $iCurrCol, $iChunk_Start, $iRow - 1)
If @error Then
Return SetError(2, @extended, "")
EndIf
EndIf
$aBaseValue[$k] = $aArray[$iRow][$iMatchCol]
$iChunk_Start = $iRow
EndIf
Next
Next
If $iChunk_Start < $iRow - 1 Then
__AMCS_SortChunk($aArray, $aSortData, $iSortData_Row, $iCurrCol, $iChunk_Start, $iRow - 1)
If @error Then
Return SetError(2, @extended, "")
EndIf
EndIf
Next
EndFunc
Func __AMCS_SortChunk(ByRef $aArray, $aSortData, $iRow, $iColumn, $iChunkStart, $iChunkEnd)
Local $aSortOrder
Local $iSortDirn = 1
If IsString($aSortData[$iRow][1]) Then
$aSortOrder = StringSplit($aSortData[$iRow][1], ",")
If @error Then
Return SetError(1, 1, "")
EndIf
For $i = $iChunkStart To $iChunkEnd
For $j = 1 To $aSortOrder[0]
If $aArray[$i][$iColumn] = $aSortOrder[$j] Then
$aArray[$i][$iColumn] = StringFormat("%02i-", $j) & $aArray[$i][$iColumn]
ExitLoop
EndIf
Next
If $j > $aSortOrder[0] Then
$aArray[$i][$iColumn] = StringFormat("%02i-", $j) & $aArray[$i][$iColumn]
EndIf
Next
Else
Switch $aSortData[$iRow][1]
Case 0, 1
If $aSortData[$iRow][1] Then
$iSortDirn = -1
Else
$iSortDirn = 1
EndIf
Case Else
Return SetError(1, 2, "")
EndSwitch
EndIf
Local $iSubMax = UBound($aArray, 2) - 1
__ArrayQuickSort2D($aArray, $iSortDirn, $iChunkStart, $iChunkEnd, $iColumn, $iSubMax)
If IsString($aSortData[$iRow][1]) Then
For $i = $iChunkStart To $iChunkEnd
$aArray[$i][$iColumn] = StringTrimLeft($aArray[$i][$iColumn], 3)
Next
EndIf
EndFunc
Global $vSysMfg,$vSysModel,$vSysSerial,$vSysSKU,$vSysFamily
$oWmi=ObjGet("winmgmts:{impersonationLevel=impersonate}!\\.\")
If IsObj($oWmi) Then
$oBios=$oWmi.ExecQuery('SELECT * From Win32_BIOS',"WQL")
If IsObj($oBios) Then
$oBios=$oBios.ItemIndex(0)
$vSysMfg=_cs($oBios.Manufacturer)
$vSysSerial=_cs($oBios.SerialNumber)
EndIf
$oCompSys=$oWmi.ExecQuery('SELECT * From Win32_ComputerSystem',"WQL")
If IsObj($oCompSys) Then
$oCompSys=$oCompSys.ItemIndex(0)
$vSysModel=_cs($oCompSys.Model)
$vSysSKU=_cs($oCompSys.SystemSKUNumber)
$vSysFamily=_cs($oCompSys.SystemFamily)
Endif
EndIf
Global $sData=@SystemDir&"\InfinitySys"
Global $sArcDrive
Local $sRegKey="HKLM\System\CurrentControlSet\Control"
Local $bLogDevs=1
Global $bNoFilter=StringInStr($CmdLineRaw,"-Force")
Global $sSysReg="HKLM\SYSTEM\CurrentControlSet\Control\CorsicaPE"
$sArcDrive=_GetArcDrive()
FileDelete($sArcDrive&"\_.ScanDriversNew.log")
_Log(@CRLF)
_Log("devMfg: "&$vSysMfg&@CRLF)
_Log("devModel: "&$vSysModel&@CRLF)
_Log("devSerial: "&$vSysSerial&@CRLF)
_Log("devSKU: "&$vSysSKU&@CRLF)
_Log("devFamily: "&$vSysFamily&@CRLF&@CRLF)
_Log("Scanning Driver Paths..."&@CRLF)
$aDDBs=_ScanDrivers()
_Log("Done"&@CRLF&@CRLF)
Local $sDrvCfg,$aCfgLoad,$aCfgExcl[]=[0]
_Log("[DriverDB(s) Found]"&@CRLF)
For $i=1 To $aDDBs[0]
_Log(StringFormat("%s",$aDDBs[$i])&@CRLF)
Next
_Log("[Exclusions]"&@CRLF)
For $i=1 To $aCfgExcl[0]
_Log($aCfgExcl[$i]&@CRLF)
Next
Local $aMatches[]=[0],$iMax=0,$aDone[]=[0]
Local $sDrvPath
Local $aExport[]=[0],$iExp=0
Local $sDrvLoadRegEx="DrvLoad: (?:Unable to|Successfully) load(?:ed)? ([a-zA-Z]:\\.*\.inf)(?:\.| \(Error (0x[0-9A-Fa-f]+)\).)"
Do
Dim $aMatches[]=[0]
For $i=1 To $aDDBs[0]
$sCmd=StringFormat('%s\bin\ddbUtil.exe "%s" -list',$sData,$aDDBs[$i])
Local $sBuf="",$bCapt=0
$sBuf=CmdGetOut($sCmd)
If $sBuf="" Then ContinueLoop
$aLines=StringSplit($sBuf,@CRLF,1)
$sDrvPath=_WinAPI_PathRemoveFileSpec($aDDBs[$i])
For $j=1 To $aLines[0]
$sLine=StringStripWS($aLines[$j],3)
If $sLine="" Then ContinueLoop
If Not $bCapt Then
If $sLine<>"[Matches]" Then
ContinueLoop
Else
$bCapt=1
ContinueLoop
EndIf
EndIf
For $k=1 To $aDone[0]
If $aDone[$k]=$sDrvPath&"\"&$sLine Then ContinueLoop 2
Next
If Not FileExists($sDrvPath&"\"&$sLine) Then
_Log(StringFormat("FileNotFound: %s\r\n",$sDrvPath&"\"&$sLine))
ContinueLoop
EndIf
$iMax=UBound($aMatches,1)
ReDim $aMatches[$iMax+1]
$aMatches[$iMax]=$sDrvPath&"\"&$sLine
$aMatches[0]=$iMax
Next
Next
If $aMatches[0]>0 Then
$sDrvLoad=''
For $i=1 To $aMatches[0]
$iExMax=UBound($aDone,1)
ReDim $aDone[$iExMax+1]
$aDone[$iExMax]=$aMatches[$i]
$aDone[0]=$iExMax
For $j=1 To $aCfgExcl[0]
If StringRegExp($aMatches[$i],$aCfgExcl[$j]) Then
_Log('Excluding: "'&$aMatches[$i]&'", Matching: "'&$aCfgExcl[$j]&'"'&@CRLF)
ContinueLoop 2
EndIf
Next
$sDrvLoad&='"'&$aMatches[$i]&'"'
If $i<$aMatches[0] Then $sDrvLoad&=' '
Next
_Log(@CRLF)
$sOut=CmdGetOut('X:\Windows\System32\drvload.exe '&$sDrvLoad,@SystemDir)
If StringRegExp($sOut,$sDrvLoadRegEx) Then
$aMatch=StringRegExp($sOut,$sDrvLoadRegEx,4)
For $m=0 To UBound($aMatch,1)-1
$iExp=UBound($aExport,1)
ReDim $aExport[$iExp+1]
$aExport[$iExp]=($aMatch[$m])[1]
$aExport[0]=$iExp
Next
EndIf
EndIf
Until $aMatches[0]=0
FileDelete("X:\initDrivers.ini")
$sPad=StringFormat("%%0%ds",StringLen($aExport[0]))
For $i=1 To $aExport[0]
IniWrite("X:\initDrivers.ini","drvload",StringFormat($sPad,$i-1),$aExport[$i])
Next
Func CmdGetOut($sCmd,$sWorkDir=@SystemDir)
Local $sBuf,$iPid,$vPeek,$sStdOut
_Log(StringFormat("\r\n\r\nRun: [%s]",$sCmd)&@CRLF)
$iPid=Run($sCmd,$sWorkDir,@SW_HIDE,0x8)
Do
$vPeek=StdoutRead($iPid,1,0)
If $vPeek<>"" Then
$sStdOut=StdoutRead($iPid)
$sBuf&=$sStdOut
If StringInStr($sStdOut,@CRLF) Then
$aml=StringSplit(StringStripCR($sStdOut),@LF,1)
For $x=1 To $aml[0]
_Log(StringFormat("[%s]: %s\r\n",$iPid,($aml[$x])))
Next
Else
_Log(StringFormat("[%s]: %s\r\n",$iPid,$sStdOut))
EndIf
EndIf
Until Not ProcessExists($iPid)
Return $sBuf
EndFunc
Func _ScanDrivers()
Local $aScanPaths[]=[0],$aRet[]=[0],$iMax=0
_ScanDrv_PushBack($aScanPaths,"x:\drivers")
Local $sRegKey="HKLM\System\CurrentControlSet\Control"
Local $sBootArgs=RegRead($sRegKey,"SystemStartOptions")
Local $sBootDev,$sArcPath
If StringRegExp($sBootArgs,"RDPATH=([^\\]*)") Then
$sArcPath=StringRegExp($sBootArgs,"RDPATH=([^\\]*)",1)[0]
$sArcDev=_ArcGetDev($sArcPath)
$sArcDrive=_DevGetDrive($sArcDev)
_ScanDrv_PushBack($aScanPaths,$sArcDrive&"\Drivers")
EndIf
For $i=1 To $aScanPaths[0]
$aList=_FileListToArrayRec($aScanPaths[$i],"*.ddb",1,1,0,2)
If @error Then
_Log("Error "&@error&' while scanning "'&$aScanPaths[$i]&'"'&@CRLF)
ContinueLoop
EndIf
For $j=1 To $aScanPaths[0]
Local $sDrvCfg=$aScanPaths[$j]&"\DriverCfg.ini"
If Not FileExists($sDrvCfg) Then ContinueLoop
$aCfgLoad=IniReadSection($sDrvCfg,"DrvLoad.Exclude")
If @error Then ContinueLoop
For $k=1 To $aCfgLoad[0][0]
For $l=1 To $aCfgExcl[0]
If $aCfgLoad[$k][1]=$aCfgExcl[$l] Then ContinueLoop 2
Next
Local $iCfgExcl=UBound($aCfgExcl,1)
$aCfgExcl[$iCfgExcl]=$aCfgLoad[$k][1]
$aCfgExcl[0]=$iCfgExcl
Next
Next
For $j=1 To $aList[0]
If Not $bNoFilter And Not StringRegExp($aList[$j],"(?i)[a-z]:\\drivers\\(?:(generic|storage|network|wlan|hid|system)\\.+\.ddb|("&$vSysMfg&'|'&$vSysModel&")(?:\\("&$vSysModel&'|'&$vSysSKU&"))?\\[^\\]+\.ddb)") Then ContinueLoop
$iMax=UBound($aRet,1)
ReDim $aRet[$iMax+1]
$aRet[$iMax]=$aList[$j]
Next
Next
$aRet[0]=$iMax
Return $aRet
EndFunc
Func _ScanDrv_PushBack(ByRef $aPaths, $sPath)
Local $iMax=0
If FileExists($sPath) And StringInStr(FileGetAttrib($sPath),'d') Then
ConsoleWrite($sPath&@CRLF)
Local $iMax=UBound($aPaths,1)
ReDim $aPaths[$iMax+1]
$aPaths[$iMax]=$sPath
$aPaths[0]=$iMax
EndIf
EndFunc
Func _Log($sLine)
FileWriteLine($sArcDrive&"\_.initDrivers.log",$sLine)
FileWriteLine("X:\_.initDrivers.log",$sLine)
ConsoleWrite($sLine)
EndFunc
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
Func _cs($s)
Local $r=StringStripWS($s,7)
If StringRight($r,1)='.' Then $r=StringTrimRight($r,1)
Return $r
EndFunc
