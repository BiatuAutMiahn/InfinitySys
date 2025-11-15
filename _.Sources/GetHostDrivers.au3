#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\ctdkgrsq.ico
#AutoIt3Wrapper_Outfile_x64=..\..\GetHostDrivers.exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Fileversion=1.0.0.7
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; BiatuAutMiahn
#include <WinAPIShellEx.au3>
#include <Array.au3>
#include <File.au3>
#include <WinAPIDiag.au3>
#include <SecurityConstants.au3>
#include <StructureConstants.au3>
#include <ProcessConstants.au3>
#include <WinAPIProc.au3>

#include "Includes\WinObj.au3"

$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,"GetHostDrivers","Program must be run from CorsicaPE! If circumvented, irreparable damage may occur to windows.")
    Exit 1
EndIf

If Not StringInStr(_GetStdOut("whoami /groups /fo list"),"NT SERVICE\TrustedInstaller") Then
    CreateProcessAsTI(@AutoItExe)
    Exit @Error
EndIf

Global $aSysDrvs[]=[0,"microsoft_bluetooth_avrcptransport","microsoft_bluetooth_a2dp_src","microsoft_bluetooth_a2dp_snk","pnpxinternetgatewaydevices", _
    "microsoft_bluetooth_hfp_hf","microsoft_bluetooth_hfp_ag","microsoft_bluetooth_a2dp","microsoft_bluetooth_hfp","c_magneticstripereader","windowstrustedrtproxy", _
    "sensorshidclassdriver","c_fsphysicalquotamgmt","c_fscfsmetadataserver","wvmic_guestinterface","sensorsservicedriver","networkprivacypolicy", _
    "ialpss2i_gpio2_bxt_p","c_fssecurityenhancer","c_fscontinuousbackup","c_computeaccelerator","c_fscontentscreener","c_fsactivitymonitor","wmbclass_wmc_union", _
    "tsgenericusbdriver","ialpss2i_i2c_bxt_p","ialpss2i_gpio2_skl","ialpss2i_gpio2_glk","ialpss2i_gpio2_cnl","hidtelephonydriver","digitalmediadevice", _
    "c_fsvirtualization","c_fssystemrecovery","c_fsopenfilebackup","c_fsinfrastructure","c_fscopyprotection","wvmic_kvpexchange","wudfusbcciddriver", _
    "usb4p2pnetadapter","ucmucsiacpiclient","halextintclpiodma","c_smartcardreader","c_smartcardfilter", _
    "c_securitydevices","c_multiportserial","ChargeArbitration","xboxgipsynthetic","usb4devicerouter","sensorsalsdriver","ndisimplatformmp", _
    "ialpss2i_i2c_skl","ialpss2i_i2c_glk","ialpss2i_i2c_cnl","halextintcpsedma","c_receiptprinter","c_barcodescanner","wvmic_heartbeat", _
    "displayoverride","c_multifunction","c_mediumchanger","c_fsreplication","c_fscompression","buttonconverter","wvmic_timesync","wvmic_shutdown","usb4hostrouter", _
    "tsusbhubfilter","rdcameradriver","ndisvirtualbus","ndisimplatform","dc1-controller","c_legacydriver","c_fsencryption","usbcciddriver", _
    "transfercable","rtwlanu_oldic","c_swcomponent","c_scsiadapter","c_pnpprinters","c_linedisplay","c_fsquotamgmt","c_fsantivirus","bcmwdidhdpcie", _
    "audioendpoint","wnetvsc_vfpp","storfwupdate","remoteposdrv","kdnic_legacy","ialpssi_gpio","hidlamparray", _
    "hidinterrupt","genericusbfn","eyegazeioctl","ehstortcgdrv","ehstorpwddrv","c_netservice","c_fsundelete","c_floppydisk","c_cashdrawer","compositebus", _
    "basicdisplay","wvmbusvideo","wgencounter","wdmaudioapo","urssynopsys","urschipidea","ufxsynopsys","ufxchipidea","routepolicy","pluton-heci","netwmbclass", _
    "netvwififlt","netvwifibus","netvchannel","msgpiowin32","ialpssi_i2c","halextpl080","c_usbdevice","c_tapedrive", _
    "c_smrvolume","c_smartcard","c_scmvolume","c_proximity","c_processor","c_primitive","c_netdriver","c_netclient","c_extension","c_dot4print","c_diskdrive", _
    "c_bluetooth","c_biometric","basicrender","acxhdaudiop","wfpcapture","wceisvista","ts_generic","rdlsbuscbs","printqueue","PlutonHsp2","netvwwanmp", _
    "netvwifimp","netrtwlanu","netrtwlans","netrtwlane","hidscanner","displaymux","c_swdevice","c_sslaccel","c_nvmedisk", _
    "c_nettrans","c_keyboard","c_infrared","c_hidclass","c_fssystem","c_firmware","c_computer","cht4nulx64","bthmtpenum","xinputhid","wvmic_vss","wvmic_ext", _
    "wvmbushid","whyperkbd","usbaudio2","ts_wpdmtp","spaceport","smrvolume","smartsamd","scunknown","scmvolume","percsas3i", _
    "percsas2i","npsvctrig","mshidumdf","mshidkmdf","megasas2i","mausbhost","lsi_sas3i","lsi_sas2i","intelpmax","hvservice", _
    "hidspi_km","helloface","e2xw10x64","c_wceusbs","c_volsnap","c_unknown","c_smrdisk","c_scmdisk","c_ramdisk","c_printer","c_monitor","c_generic","c_display", _
    "c_battery","bthleenum","wstorvsc","wstorflt","wsdscdrv","wsdprint","wpdmtphw","whvcrash","wdma_usb","wdmaudio","v_mscdsc","vstxraid","virtdisk","vdrvroot", _
    "usbvideo","usbprint","uaspstor","tsusbhub","stornvme","stexstor","sisraid4","sisraid2","scrawpdo","rt640x64","rndiscmp","qcwlan64","prnms015","prnms014", _
    "prnms013","prnms012","prnms011","prnms010","prnms008","prnms007","prnms005","prnms004","prnms003","prnms002","prnge001","nvmedisk","nulhprs8","nulhpopr", _
    "ntprint4", _
    "nettcpip","netsstpa","netrndis","netpacer","netnwifi","netnvm64","netmscli", _
    "mtconfig","mssmbios","mpi3drvi","modemcsa","mlx4_bus","miradisp","mdmzyxlg","mdmzyxel","mdmx5560","mdmwhql0","mdmusrsp","mdmusrk1", _
    "mdmusrgl","mdmtexas","mdmtdkj7","mdmtdkj6","mdmtdkj5","mdmtdkj4","mdmtdkj3","mdmtdkj2","mdmsuprv","mdmsupra","mdmsupr3","mdmsonyu","mdmsmart","mdmsii64", _
    "mdmrock5","mdmrock4","mdmrock3","mdmracal","mdmpsion","mdmomrn3","mdmnttte","mdmnttp2","mdmnttme","mdmnttd6","mdmnttd2","mdmnokia","mdmnis5t","mdmnis3t", _
    "mdmnis2u","mdmnis1u","mdmneuhs","mdmmotou","mdmmoto1","mdmmot64","mdmminij","mdmmhzel","mdmmhrtz","mdmmetri","mdmmc288","mdmlucnt","mdmlasno","mdmlasat", _
    "mdmkortx","mdmjf56e","mdmirmdm","mdmiodat","mdminfot","mdmhayes","mdmhandy","mdmgl010","mdmgl009","mdmgl008","mdmgl007","mdmgl006","mdmgl005","mdmgl004", _
    "mdmgl003","mdmgl002","mdmgl001","mdmgatew","mdmetech","mdmeric2","mdmeiger","mdmdgitn","mdmdf56f","mdmcxpv6","mdmcxhv6","mdmcrtix","mdmcommu","mdmcodex", _
    "mdmbw561","mdmbtmdm","mdmatm2k","mdmaiwat","mdmaiwa5","mdmaiwa4","mdmaiwa3","mdmairte","mdmags64","mdmagm64","mdm5674a","ksfilter","kscaptur","keyboard", _
    "itsas35i","intelpmt","intelpep","iastorav","hidirkbd","hidbthle","hdaudbus","gameport","fusionv2","flpydisk","dc21x4vm","c_volume","c_system","c_sensor", _
    "c_sdhost","c_pcmcia","c_memory","c_camera","circlass","cht4vx64","cht4sx64","bthprint","bthlcpen","bcmdhd64","b57nd60a","applessd","amdgpio2","acpitime", _
    "acpipagr","ykinx64","xboxgip","wpdcomp","wnetvsc","wmiacpi","vsmraid","volsnap","vmxnet3","usbxhci","usbstor","usbport","usbhub3","unknown","uicciso","tsprint", _
    "termmou","termkbd","termbus","storufs","smrdisk","scsidev","rhproxy","rawsilo","ramdisk","pvscsii","oposdrv","ntprint","netserv","netrast","netrass","netrasa", _
    "netnvma","netmlx5","netloop","netlldp","netirda","netbrdg","ndisuio","ndiscap","msports","msmouse","monitor", _
    "mdmzoom","mdmvdot","mdmusrg","mdmusrf","mdmtron","mdmsun2","mdmsun1","mdmsier","mdmrock","mdmpenr","mdmpace","mdmoptn","mdmolic","mdmnttp","mdmntt1","mdmnova", _
    "mdmmega","mdmmcom","mdmisdn","mdmhay2","mdmhaeu","mdmeric","mdmelsa","mdmdyna","mdmdcm6","mdmdcm5","mdmcpq2","mdmcomp","mdmcom1","mdmcm28","mdmc26a","mdmbug3", _
    "mdmboca","mdmarch","mdmaiwa","mdm3com","machine","lsi_sas","ipoib6x","ipmidrv","iastorv","i3chost","hidserv","hiddigi","hidbatt","hdaudss","hdaudio","genpass", _
    "fidohid","eaphost","display","c_usbfn","c_ports","c_mouse","c_modem","c_media","c_image","c_fshsm","c_cdrom","c_61883","compdev","battery","asd.au3","apxunit", _
    "amdsata","adp80xx","acpipmi","acpidev","xusb22","wvmgid","wvmbus","wudfrd","ws3cap","wpdmtp","winusb","wini3c","wfcvsc","wdmvsc","volume","volmgr","usbser", _
    "usbnet","usbncm","usbcir","umpass","uiomap","tpmvsc","tdibth","swenum","sdstor","scmbus","rspndr","rdpidd","rdpbus","qd3x64","pcmcia","nvraid","nvdimm","netpgm", _
    "netjme","netip6","netimm","netelx","mvumis","mstape","msclmd","mgtdyn","memory","megasr","mdmzyp","mdmtkr","mdmtdk","mdmpn1","mdmpin","mdmosi","mdmmts","mdmmod", _
    "mdmmct","mdmmcd","mdmgsm","mdmgen","mdmgcs","mdmfj2","mdmdsi","mdmdp2","mdmcpv","mdmcpq","mdmcdp","mdmbsb","mdmaus","mdmati","mdmarn","mdmar1","mdmadc","lltdio", _
    "idtsec","iagpio","hpsamd","hidvhf","hidi2c","hidcfu","hidbth","errdev","devmap","c_sbp2","c_dot4","c_1394","cmbatt","bthspp","bthpan","bthoob","btampm","bcmfn2", _
    "athw8x","arcsas","amdwps","amdsbs","amdi2c","wvpci","wvmic","wpdfs","vhdmp","umbus","sdbus","netnb","mshdc","msdri","mdmvv","mdmti","mdmpp","mdmke","mchgr", _
    "kdnic","iscsi","input","image","iai2c","hidir","c_wpd","c_usb","c_ucm","c_net","c_mtd","c_mcx","c_i3c","c_hdc","c_fdc","c_avc","c_apo","cdrom","61883","3ware", _
    "wvid","wave","uefi","tape","sbp2","pmem","msdv","heat","escl","disk","acpi","1394","vrd","vca","usb","tpm","sti","prm","pci","hsp","hal","fdc","cpu","bth","bda", _
    "avc","mf","ks","c_holographic"]

; Get Sys Info
_Log("Detecting System Info..."&@CRLF)
Global $vSysMfg,$vSysModel,$vSysSerial,$vSysSKU,$vSysFamily
$oWmi=ObjGet("winmgmts:{impersonationLevel=impersonate}!\\.\")
If IsObj($oWmi) Then
    $oBios=$oWmi.ExecQuery('SELECT * From Win32_BIOS',"WQL", 0x10)
    If IsObj($oBios) Then
       $oBios=$oBios.ItemIndex(0)
       $vSysMfg=$oBios.Manufacturer
       $vSysSerial=$oBios.SerialNumber
    EndIf
    $oCompSys=$oWmi.ExecQuery('SELECT * From Win32_ComputerSystem',"WQL", 0x10)
    If IsObj($oCompSys) Then
        $oCompSys=$oCompSys.ItemIndex(0)
        $vSysModel=$oCompSys.Model
        $vSysSKU=$oCompSys.SystemSKUNumber
        $vSysFamily=$oCompSys.SystemFamily
    Endif
EndIf
_Log("Device.Mfg: "&$vSysMfg&@CRLF)
_Log("Device.Model: "&$vSysModel&@CRLF)
_Log("Device.SKU: "&$vSysSKU&@CRLF)
_Log("Device.Family: "&$vSysFamily&@CRLF)
_Log("Device.Serial: "&$vSysSerial&@CRLF&@CRLF)


; Get Drives with DriverStore
_Log("Looking for DriverStores..."&@CRLF)
Local $aDriverStore[]=[0]
Local $aTmp=DriveGetDrive("FIXED")
Local $sDrvStorePath="\Windows\System32\DriverStore\FileRepository"
Local $iMax
For $i=1 To $aTmp[0]
    If $aTmp[$i]="x:" Then ContinueLoop
    If Not FileExists($aTmp[$i]&$sDrvStorePath) Then ContinueLoop
    $iMax=UBound($aDriverStore,1)
    ReDim $aDriverStore[$iMax+1]
    $aDriverStore[$iMax]=$aTmp[$i]&$sDrvStorePath
    $aDriverStore[0]=$iMax
    _Log("Found: "&$aDriverStore[$iMax]&@CRLF)
Next
If $aDriverStore[0]=0 Then
    _Log("No DriverStores found, nothing to import."&@CRLF)
    _Exit(1)
EndIf
_Log(@CRLF)

; Get and filter drivers.
Local $aDrivers[1][3]
$aDrivers[0][0]=0
Local $sExclude=_ArrayToString($aSysDrvs,"*;",1)&"*"
Local $sArcDrive=_GetArcDrive()
_Log(@CRLF)
_Log("Loading Exclusions..."&@CRLF)
Local $aAddlExclLocs=StringSplit($sArcDrive&"\Drivers,X:\Drivers",',')
Local $aAddlExcl[]=[0]
For $i=1 To $aAddlExclLocs[0]
    $sCfg=$aAddlExclLocs[$i]&"\DriverCfg.ini"
    If Not FileExists($sCfg) Then ContinueLoop
    Local $aTmp[0]
    ;_FileReadToArray($sCfg,$aTmp)
    $aTmp=IniReadSection($sCfg,"DrvLoad.Exclude")
    If Not @error Then
      _Log("Using: "&$sCfg&@CRLF)
      For $j=1 To $aTmp[0][0]
          $iMax=UBound($aAddlExcl,1)
          ReDim $aAddlExcl[$iMax+1]
          $aAddlExcl[$iMax]=$aTmp[$j][1]
          $aAddlExcl[0]=$iMax
      Next
    Else
        _Log(StringFormat("Failed to load: %s (Error: %s,%s)\r\n",$sCfg,@Error,@Extended))
    EndIf
    $aTmp=IniReadSection($sCfg,"Host.DrvLoad.Exclude")
    If Not @error Then
      _Log("Using: "&$sCfg&@CRLF)
      For $j=1 To $aTmp[0][0]
          $iMax=UBound($aAddlExcl,1)
          ReDim $aAddlExcl[$iMax+1]
          $aAddlExcl[$iMax]=$aTmp[$j][1]
          $aAddlExcl[0]=$iMax
      Next
    Else
      _Log(StringFormat("Failed to load: %s (Error: %s,%s)\r\n",$sCfg,@Error,@Extended))
      ContinueLoop
    EndIf
Next
_Log(@CRLF)

_Log("NOTE: Driver INFs containing these RegEx patterns will be exlucded:"&@CRLF)
For $i=1 To $aAddlExcl[0]
    _Log($aAddlExcl[$i]&@CRLF)
Next
_Log(@CRLF)

_Log("Gathering and Filtering drivers..."&@CRLF)
For $i=1 To $aDriverStore[0]
    $aTmp=_FileListToArrayRec($aDriverStore[$i],"*|"&$sExclude,2)
    _ArrayColInsert($aTmp,1)
    _ArrayColInsert($aTmp,2)
    For $j=1 To $aTmp[0][0]
        $m=StringRegExp($aTmp[$j][0],"(.*\.inf)_.*",1)
        If Not @error Then $aTmp[$j][2]=$m[0]
        $aTmp[$j][1]=$aTmp[$j][0]
        $aTmp[$j][0]=$aDriverStore[$i]&'\'&$aTmp[$j][0]
        $sClass=IniRead($aTmp[$j][0]&"\"&$aTmp[$j][2],"Version","Class","")
        If Not StringInStr("DiskDrive,HDC,HIDClass,Keyboard,Modem,Mouse,Net,NetClient,NetDriver,NetService,NetTrans,NVMeDisk,SCSIAdapter,System,USB,USBDevice,USBFunctionController,Battery,Extension",$sClass) Then ContinueLoop
        $sInf=FileRead($aTmp[$j][0]&"\"&$aTmp[$j][2])
        For $k=1 To $aAddlExcl[0]
            If StringRegExp($sInf,"(?i)"&$aAddlExcl[$k]) Then
                _Log(StringFormat('Excluding: "%s" matching pattern "%s"\r\n',$aTmp[$j][1],$aAddlExcl[$k]))
                ContinueLoop 2
            EndIf
        Next
        $iMax=UBound($aDrivers,1)
        ReDim $aDrivers[$iMax+1][2]
        $aDrivers[$iMax][0]=$aTmp[$j][0]
        $aDrivers[$iMax][1]=$aTmp[$j][1]
        $aDrivers[0][0]=$iMax
    Next
Next
If $aDrivers[0][0]=0 Then
    MsgBox(64,"GetHostDrivers","No applicable Drivers found on host.")
    Exit 1
EndIf
_Log(@CRLF)

;Copy Drivers
_Log(StringFormat("Copying %d Drivers...\r\n",$aDrivers[0][0]))
Global $iDriveTot=DriveSpaceTotal("X:\")
Global $sDest
For $i=1 To $aDrivers[0][0]
    $sSrc=$aDrivers[$i][0]
    $sDest=StringFormat("X:\Drivers\%s\%s\%s",$vSysMfg,$vSysModel,$aDrivers[$i][1])
    $iDriveFree=DriveSpaceFree("X:\")
    $iDirSize=DirGetSize($sSrc)/1024/1024
    If $iDriveFree-$iDirSize<=($iDriveTot*0.10) Then
        _Log(@CR&@CR&'Not enough space to copy: '&$aDrivers[$i][1]&@CRLF)
        ContinueLoop
    EndIf
    If Not DirCopy($sSrc,$sDest,1) Then _Log(@CR&@CR&"Failed to Copy: "&$aDrivers[$i][1]&@CRLF)
    _Log(StringFormat('\r\r%d of %d (%0.3f%%)',$i,$aDrivers[0][0],$i/$aDrivers[0][0]*100))
Next
_Log(StringFormat('\r\r%d of %d (%0.3f%%)',$i,$aDrivers[0][0],$i/$aDrivers[0][0]*100))
_Log(@CRLF)

_Log("Generating DDB...")
$sDest=StringFormat("X:\Drivers\%s\%s",$vSysMfg,$vSysModel)
RunWait('X:\Windows\System32\ddbUtil.exe "'&$sDest&'" "'&$sDest&'\'&$vSysModel&'.ddb"',@ScriptDir,@SW_SHOW)
_Log(@CRLF)

_Log("Running initDrivers...")
RunWait("X:\Windows\System32\initDrivers.exe")
_Log(@CRLF)
_Exit(0)

Func _Exit($i)
    If @Compiled Then
        ConsoleRead()
        ConsoleWrite(@CRLF&"Press any key to exit...")
        While 1
            If ConsoleRead() Then ExitLoop
            Sleep(25)
        WEnd
    EndIf
    Exit $i
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
        _Log("ARC Path: "&$sArcPath&@CRLF)
        $sArcDev=_ArcGetDev($sArcPath)
        _Log("ARC Dev: "&$sArcDev&@CRLF)
        $sArcDrive=_DevGetDrive($sArcDev)
        _Log("ARC Drive: "&$sArcDrive&@CRLF)
        RegWrite($sSysReg&"\CorsicaPE","ArcDrive","REG_SZ",$sArcDrive)
        Return $sArcDrive
    EndIf
EndFunc

Func _Log($sStr)
    ConsoleWrite($sStr)
EndFunc

; Autoit Forums
Func CreateProcessAsTI($sAppName, $sCmdLine = '')
    Local $iPID = StartTIService()
    If @error Then Return SetError(1, @error, False)
    EnablePrivilege($SE_DEBUG_NAME)
    EnablePrivilege($SE_IMPERSONATE_NAME)
    ImpersonateSystem()
    Local $hTIProcess = _WinAPI_OpenProcess(BitOR($PROCESS_DUP_HANDLE, $PROCESS_QUERY_INFORMATION), False, $iPID)
    If @error Then SetError(2, 0, False)
    Local $hTIToken = _WinAPI_OpenProcessToken(0x2000000, $hTIProcess)
    If Not $hTIToken Then
        _WinAPI_CloseHandle($hTIProcess)
        Return SetError(3, 0, False)
    EndIf
    Local $tSECURITY_ATTRIBUTES = DllStructCreate($tagSECURITY_ATTRIBUTES)
    $tSECURITY_ATTRIBUTES.nLength = DllStructGetSize($tSECURITY_ATTRIBUTES)
    $tSECURITY_ATTRIBUTES.lpSecurityDescriptor = Null
    $tSECURITY_ATTRIBUTES.bInheritHandle = False
    Local $hDupToken = _WinAPI_DuplicateTokenEx($hTIToken, 0x2000000, $SECURITYIMPERSONATION, $TOKENIMPERSONATION, $tSECURITY_ATTRIBUTES)
    If $hDupToken = 0 Then
        _WinAPI_CloseHandle($hTIToken)
        Return SetError(4, 0, False)
    EndIf
    Local $tSTARTUPINFO = DllStructCreate($tagSTARTUPINFO)
    $tSTARTUPINFO.lpDesktop = 'Winsta0\\Default'
    Local $tPROCESS_INFORMATION = DllStructCreate($tagPROCESS_INFORMATION)
    If Not _WinAPI_CreateProcessWithToken($sAppName, $sCmdLine, $CREATE_UNICODE_ENVIRONMENT, $tSTARTUPINFO, $tPROCESS_INFORMATION, $hDupToken, $LOGON_WITH_PROFILE) Then
        _WinAPI_CloseHandle($hDupToken)
        _WinAPI_CloseHandle($hTIToken)
        Return SetError(5, 0, False)
    EndIf
    Return $tPROCESS_INFORMATION.ProcessID
EndFunc

Func StartTIService()
    Local $aCall
    $aCall = DllCall('Advapi32.dll', 'handle', 'OpenSCManagerW', 'wstr', Null, 'wstr', Null, 'dword', 0x20000000)
    If $aCall[0] = Null Then Return SetError(1, 0, 0)
    Local $hSCManager = $aCall[0]
    $aCall = DllCall('Advapi32.dll', 'handle', 'OpenServiceW', 'handle', $hSCManager, 'wstr', 'TrustedInstaller', 'dword', BitOR(0x80000000, 0x20000000))
    If $aCall[0] = Null Then Return SetError(2, 0, 0)
    Local $hService = $aCall[0]
    Local $iBufferBytes
    Local Static $tagSERVICE_STATUS_PROCESS = 'dword dwServiceType;dword dwCurrentState;dword dwControlsAccepted;dword dwWin32ExitCode;' & _
                        'dword dwServiceSpecificExitCode;dword dwCheckPoint;dword dwWaitHint;dword dwProcessId;dword dwServiceFlags;'
    Local $tStatusBuffer = DllStructCreate($tagSERVICE_STATUS_PROCESS)
    While True
        $aCall = DllCall('Advapi32.dll', 'bool', 'QueryServiceStatusEx', _
                        'handle', $hService, _
                        'int', 0, _         ; SC_STATUS_PROCESS_INFO
                        'ptr', DllStructGetPtr($tStatusBuffer), _
                        'dword', DllStructGetSize($tStatusBuffer), _
                        'dword*', $iBufferBytes)
        If Not $aCall[0] Then ExitLoop
        Switch $tStatusBuffer.dwCurrentState
            Case 0x00000001                 ; SERVICE_STOPPED
                $aCall = DllCall('Advapi32.dll', 'bool', 'StartServiceW', 'handle', $hService, 'dword', 0, 'wstr', Null)
                If Not $aCall[0] Then
                    DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hService)
                    DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hSCManager)
                    Return SetError(3, 0, 0)
                EndIf
            Case 0x00000002, 0x00000003     ; SERVICE_START_PENDING, SERVICE_STOP_PENDING
                Sleep($tStatusBuffer.dwWaitHint)
                ContinueLoop
            Case 0x00000004                 ; SERVICE_RUNNING
                DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hService)
                DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hSCManager)
                Return SetError(0, 0, $tStatusBuffer.dwProcessId)
        EndSwitch
    WEnd
    DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hService)
    DllCall('Advapi32.dll', 'bool', 'CloseServiceHandle', 'handle', $hSCManager)
    Return SetError(4, 0, 0)
EndFunc

Func EnablePrivilege($sPrivilegeName)
    Local $hToken = _WinAPI_OpenProcessToken(BitOR($TOKEN_QUERY, $TOKEN_ADJUST_PRIVILEGES))
    If Not $hToken Then Return SetError(1, 0, False)
    Local $vLUID = _Security__LookupPrivilegeValue('', $sPrivilegeName)
    If Not $vLUID Then
        _WinAPI_CloseHandle($hToken)
        Return SetError(2, 0, False)
    EndIf
    Local $tTOKEN_PRIVILEGES = DllStructCreate('dword PrivilegeCount;align 4;int64 LUID;dword Attributes')
    $tTOKEN_PRIVILEGES.PrivilegeCount = 1
    $tTOKEN_PRIVILEGES.LUID = $vLUID
    $tTOKEN_PRIVILEGES.Attributes = $SE_PRIVILEGE_ENABLED
    If Not _Security__AdjustTokenPrivileges($hToken, False, DllStructGetPtr($tTOKEN_PRIVILEGES), DllStructGetSize($tTOKEN_PRIVILEGES), Null, Null) Then
        _WinAPI_CloseHandle($hToken)
        Return SetError(3, 0, False)
    EndIf
    _WinAPI_CloseHandle($hToken)
    Return SetError(0, 0, True)
EndFunc

Func GetProcessIDByName($sProcessName)
    Local $aSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
    If $aSnapshot[0] = -1 Then Return SetError(1, 0, 0)
    Local $hSnapshot = $aSnapshot[0]
    Local $iPID = -1
    Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
    $tPROCESSENTRY32.Size = DllStructGetSize($tPROCESSENTRY32)
    If Not DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'ptr', DllStructGetPtr($tPROCESSENTRY32))[0] Then
        _WinAPI_CloseHandle($hSnapshot)
        Return SetError(2, 0, 0)
    EndIf
    While DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'ptr', DllStructGetPtr($tPROCESSENTRY32))[0]
        If $tPROCESSENTRY32.ExeFile = $sProcessName Then
            $iPID = $tPROCESSENTRY32.ProcessID
            ExitLoop
        EndIf
    WEnd
    If $iPID = -1 Then
        _WinAPI_CloseHandle($hSnapshot)
        Return SetError(3, 0, 0)
    EndIf
    _WinAPI_CloseHandle($hSnapshot)
    Return $iPID
EndFunc

Func ImpersonateSystem()
    Local $iPID = GetProcessIDByName('winlogon.exe')
    If @error Then SetError(1, @error, False)
    Local $hSystemProcess = _WinAPI_OpenProcess(BitOR($PROCESS_DUP_HANDLE, $PROCESS_QUERY_INFORMATION), False, $iPID)
    If @error Then SetError(2, @error, False)
    Local $hSystemToken = _WinAPI_OpenProcessToken(0x2000000, $hSystemProcess)
    If $hSystemToken = 0 Then
        _WinAPI_CloseHandle($hSystemProcess)
        Return SetError(3, 0, False)
    EndIf
    Local $tSECURITY_ATTRIBUTES = DllStructCreate($tagSECURITY_ATTRIBUTES)
    $tSECURITY_ATTRIBUTES.nLength = DllStructGetSize($tSECURITY_ATTRIBUTES)
    $tSECURITY_ATTRIBUTES.lpSecurityDescriptor = Null
    $tSECURITY_ATTRIBUTES.bInheritHandle = False
    Local $hDupToken = _WinAPI_DuplicateTokenEx($hSystemToken, 0x2000000, $SECURITYIMPERSONATION, $TOKENIMPERSONATION, $tSECURITY_ATTRIBUTES)
    If $hDupToken = 0 Then
        _WinAPI_CloseHandle($hSystemToken)
        Return SetError(4, 0, False)
    EndIf
    If Not DllCall('Advapi32.dll', 'bool', 'ImpersonateLoggedOnUser', 'handle', $hDupToken)[0] Then
        _WinAPI_CloseHandle($hDupToken)
        _WinAPI_CloseHandle($hSystemToken)
        Return SetError(5, 0, False)
    EndIf
    _WinAPI_CloseHandle($hDupToken)
    _WinAPI_CloseHandle($hSystemToken)
    Return SetError(0, 0, True)
EndFunc

; Biatu
Func _GetStdOut($sCmd)
    Local $vStdOut=""
    Local $iPid=Run($sCmd,@WorkingDir,@SW_HIDE,0x8)
    While ProcessExists($iPid)
        If StdoutRead($iPid,1,1) Then
            $vStdOut&=BinaryToString(StdoutRead($iPid,0,1))
        EndIf
        Sleep(1)
    WEnd
    $vStdOut&=BinaryToString(StdoutRead($iPid,0,1))
    Return $vStdOut
EndFunc
