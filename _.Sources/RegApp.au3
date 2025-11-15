; Create File Shortcuts in the Start Menu.
; Associate programs with file extensions/URL protocols
; Set Default programs
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\Infinity.ico
#AutoIt3Wrapper_Outfile_x64=..\..\Infinity.RegApp.exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <File.au3>
#include <Debug.au3>
#include <File.au3>
#include <APISysConstants.au3>
#include <WindowsConstants.au3>
#include "Includes\SFTA.au3"
#include "Includes\Base64.au3"
Opt("ExpandVarStrings",1)
AutoItSetOption("TrayIconHide", 1)
AutoItSetOption("TrayAutoPause", 0)

$bisWinPE=StringInStr(RegRead("HKLM\SYSTEM\CurrentControlSet\Control","SystemStartOptions"),"MININT")
If Not $bisWinPE Then
    MsgBox(16,"Infinity.RegApp","Program must be run from InfinityPE! If circumvented, irreparable damage will occur to windows.")
    Exit 1
EndIf

Local $sProgs="X:\System\Programs"
$aProgs=_FileListToArrayRec($sProgs,"_.mkBundle.ini",1,1,1)
If @Error Then
	MsgBox(16,@Error,"No Programs Found!")
EndIf

Global $bOpenWith,$bIsBrowser
Global $aGlobalAssoc[][3]=[[0,'']]
Global $aDefTypes[][2] = [[0,''], _
    ["image","3fr,ari,arw,avci,avcs,avif,avifs,bay,bmp,cap,cr2,cr3,crw,dcr,dcs,dds,dib,dng,drf,eip,emf,erf,fff,gif,heic,heics,heif,heifs,hif,iiq,jfif,jpe,jpeg,jpg,jxl,jxr,k25,kdc,mef,mos,mrw,nef,nrw,orf,ori,pef,png,ptx,pxn,raf,raw,rle,rw2,rwl,sr2,srf,srw,tif,tiff,wdp,webp,wmf,x3f"], _
    ["video","3g2,3gp,3gp2,3gpp,asf,asx,avi,dtcp-ip,dvr-ms,ivf,m1v,m2t,m2ts,m2v,m4v,mkv,mod,mov,mp2v,mp4,mp4v,mpa,mpe,mpeg,mpg,mpv2,mts,ogm,ogv,ogx,tod,ts,tts,uvu,vob,webm,wm,wmv,wmx,wvx"], _
    ["audio","aac,ac3,adt,adts,aif,aifc,aiff,au,ec3,flac,lpcm,m3u,m4a,m4b,m4p,mid,midi,mka,mp2,mp3,oga,ogg,opus,rmi,snd,wav,wax,weba,wma,wpl"], _
    ["text","docx,odt,rtf,asm,asmx,aspx,c,cdxml,cpp,css,csv,cxx,def,diz,h,hpp,hta,htm,html,hxx,inc,ini,java,nvr,php3,pl,plg,ps1xml,pssc,sed,shtml,sql,text,tsv,txt,x,xml,xsl"], _
    ["script","cmd,bat"], _
    ["archive","7z,bz2,cab,gz,rar,tar,tbz2,tgz,txz,tzst,wmz,wsz,xz,z,zip,zst"], _
    ["lib","386,drv,ocx,sys,dll,vxd,mun"], _
    ["config","manifest"] _
]
;system:chk,local,manifest,website
;:3mf,a,accountpicture-ms,ai,ani,ans,appcontent-ms,application,appref-ms,aps,arc,arj,art,asa,asc,ascx,asp,bas,bat,bcp,bin,bkf,blg,bsc,camp,cat,cc,cda,cdmp,cdx,cer,cgm,chm,cls,cmd,cod,com,compositefont,contact,cpl,crl,crt,cs,csa,csproj,cur,dat,db,dbg,dbs,dct,dctx,dctxc,der,desklink,deskthemepack,diagcab,diagcfg,diagpkg,dic,dll,dl_,doc,dos,dot,dsn,dsp,dsw,eml,eps,epub,etp,evt,evtx,exe,exp,ext,ex_,eyb,faq,fif,fky,fnd,fnt,fon,ghi,gmmp,group,grp,hdp,hhc,hlp,hqx,htc,htt,htw,htx,i,ibq,icc,icl,icm,ics,idl,idq,ilk,imc,imesx,img,inf,inl,inv,inx,in_,iso,jav,jbf,job,jod,js,jse,json,kci,label,latex,lgn,lib,library-ms,lnk,lst,lzh,m14,mak,man,mapimail,mht,mhtml,mk,mk3d,mlc,mmf,movie,ms-windows-store-license,msc,msepub,msg,msi,msp,msrcincident,msstyles,msu,mv,mydocs,ncb,nfo,nls,obj,oc_,odc,odh,odl,osdx,otf,p10,p12,p7b,p7c,p7m,p7r,p7s,partial,pbk,pch,pdb,pdf,pds,perfmoncfg,pfm,pfx,pic,pif,pko,pma,pmc,pml,pmr,pnf,pot,ppkg,pps,ppt,prc,prf,printerexport,ps,psc1,psd,qds,rat,rc,rc2,rct,rdp,reg,res,resmoncfg,rgs,rll,rpc,rsp,rul,s,sbr,sc2,scc,scd,scf,sch,scr,sct,search-ms,searchconnector-ms,settingcontent-ms,sfcache,shtm,sit,sol,sor,spc,sr_,sst,stm,svg,sym,symlink,sy_,tab,tdl,theme,themepack,tlb,tlh,tli,trg,tsp,ttc,ttf,udf,udl,udt,url,user,usr,vbe,vbproj,vbs,vbx,vcf,vcproj,vhd,vhdpmem,vhdx,viw,vspscc,vsscc,vssscc,wab,wbcat,wcx,webpnp,wll,wlt,wmd,wmdb,wmp,wms,wri,wsc,wsf,wsh,wtv,wtx,xaml,xbap,xht,xhtml,xix,xlb,xlc,xls,xlt,xrm-ms,xsd,xslt,z96,zfsendtotarget,zoo
;audio:
;text:
;document:docx,odt,rtf

; Get Sys Info
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

For $i=1 to $aProgs[0]
    $bOpenWith=True
    $bIsBrowser=False
    $bNoStart=False
	$aEntries=IniReadSection($sProgs&'\'&$aProgs[$i],"Infinity.Program")
    $aRegAppEntries=IniReadSection($sProgs&'\'&$aProgs[$i],"Infinity.RegApp")
    If _getEntry($aEntries,"NoOpenWith") Or _getEntry($aRegAppEntries,"NoOpenWith") Then $bOpenWith=False
	$iSplit=StringInStr($aProgs[$i],'\',0,-1)
	$sProgsRoot=StringLeft($aProgs[$i],$iSplit-1)
	;_DebugArrayDisplay($aEntries,$sProgsRoot)
	;_DebugArrayDisplay($aExts,$sProgsRoot)
	$sExec=_getEntry($aEntries,"Cmd")
	$sDefParam=_getEntry($aEntries,"DefParams")
    $sDesc=_getEntry($aEntries,"Description")
	$sAlias=_getEntry($aEntries,"Name")
	$sVersion=_getEntry($aEntries,"Version")
	$sIcon=_getEntry($aEntries,"Icon")
	$iIconIdx=_getEntry($aEntries,"IconIndex")
	$sPath=$sProgs&'\'&$sProgsRoot
	$sTitle=$sAlias&" v"&$sVersion
	$sExecPath=$sPath&'\'&$sExec
    ConsoleWrite($sTitle&@CRLF)
    $bNoStart=_getEntry($aRegAppEntries,"NoStart")
    $blnkDesktop=_getEntry($aRegAppEntries,"lnkDesktop")

    ; Check for Device-Specific Filters
    $sRegDepMfg=_getEntry($aRegAppEntries,"RegDepDevMfg")
    $sRegDepModel=_getEntry($aRegAppEntries,"RegDepDevModel")
    $sRegDepSKU=_getEntry($aRegAppEntries,"RegDepDevSKU")
    $sRegDepFamily=_getEntry($aRegAppEntries,"RegDepDevFamily")
    $bDoRegApp=True
    If $sRegDepMfg<>"" And StringRegExp($vSysMfg,$sRegDepMfg)<>1 Then $bDoRegApp=False
    If $sRegDepModel<>"" And StringRegExp($vSysModel,$sRegDepModel)<>1 Then $bDoRegApp=False
    If $sRegDepSKU<>"" And StringRegExp($vSysSKU,$sRegDepSKU)<>1 Then $bDoRegApp=False
    If $sRegDepFamily<>"" And StringRegExp($vSysFamily,$sRegDepFamily)<>1 Then $bDoRegApp=False
    If $bDoRegApp Then
        $bNoApp=_getEntry($aRegAppEntries,"NoApp")
        ; Create Start menu Item
        If Not $bNoStart Then FileCreateShortcut($sExecPath,@StartMenuCommonDir&"\Programs\"&$sTitle,$sPath,$sDefParam,$sDesc,$sPath&'\'&$sIcon,'',$iIconIdx)
        ; Create Desktop Shortcut
        If $blnkDesktop Then FileCreateShortcut($sExecPath,@DesktopCommonDir&'\'&$sTitle,$sPath,$sDefParam,$sDesc,$sPath&'\'&$sIcon,'',$iIconIdx)
        ; Add sPath to PATH env
        $sAddPath=_getEntry($aRegAppEntries,"AddPath")
        If $sAddPath<>"" And $sAddPath<>False Then
            Local $aEnvPath[]=[0]
            Local $aEnvPathAdd[]=[0]
            If StringInStr($sAddPath,";") Then
                Local $aPaths=StringSplit($sAddPath,";")
                For $j=2 To $aPaths[0]
                    For $k=1 To $aEnvPathAdd[0]
                        If $aPaths[$j]=$aEnvPathAdd[$k] Then ContinueLoop 2
                    Next
                    If $aPaths[$j]="" Then ContinueLoop
                    $iMax=UBound($aEnvPathAdd,1)
                    ReDim $aEnvPathAdd[$iMax+1]
                    $aEnvPathAdd[$iMax]=$aPaths[$j]
                    $aEnvPathAdd[0]=$iMax
                Next
            Else
                Dim $aEnvPathAdd[]=[1,$sPath]
            EndIf
            Opt("ExpandEnvStrings",0)
            Opt("ExpandVarStrings",0)
            $sPathEnv=_EnvVarGet("PATH",2)
            If StringInStr($sPathEnv,";") Then
                Local $aPaths=StringSplit($sPathEnv,";")
                For $j=1 To $aPaths[0]
                    For $k=1 To $aEnvPath[0]
                        If $aPaths[$j]=$aEnvPath[$k] Then ContinueLoop 2
                    Next
                    If $aPaths[$j]="" Then ContinueLoop
                    $iMax=UBound($aEnvPath,1)
                    ReDim $aEnvPath[$iMax+1]
                    $aEnvPath[$iMax]=$aPaths[$j]
                    $aEnvPath[0]=$iMax
                Next
            Else
                Dim $aEnvPath[]=[1,$sPathEnv]
                ;_EnvVarSet("PATH",$sPathEnv&$sPath&';',2)
            EndIf
            Opt("ExpandEnvStrings",1)
            Opt("ExpandVarStrings",1)
            For $j=1 To $aEnvPathAdd[0]
                For $k=1 To $aEnvPath[0]
                    If $aEnvPathAdd[$j]=$aEnvPath[$k] Then ContinueLoop 2
                Next
                $iMax=UBound($aEnvPath,1)
                ReDim $aEnvPath[$iMax+1]
                $aEnvPath[$iMax]=$aEnvPathAdd[$j]
                $aEnvPath[0]=$iMax
            Next
            _EnvVarSet("PATH",_ArrayToString($aEnvPath,';',1),2)
            ConsoleWrite(_ArrayToString($aEnvPath,';',1)&@CRLF)
            EnvUpdate()
        EndIf
        ; Proc Env updates
        $sSetEnv=_getEntry($aRegAppEntries,"SetEnv")
        If $sSetEnv Then
            If StringInStr($sSetEnv,'|') Then
                $aEnvSet=StringSplit($sSetEnv,'|')
                For $j=1 To $aEnvSet[0]
                    _EnvSet($aEnvSet[$j])
                Next
            Else
                _EnvSet($aEnvSet[$j])
            EndIf
        EndIf
        ; Proc Drivers
        $sDrivers=_getEntry($aRegAppEntries,"Drivers")
        If $sDrivers<>"" Then
            $aDrivers=StringSplit($sDrivers,",")
            For $j=1 To $aDrivers[0]
                If StringInStr($aDrivers[$j]," ") Then $aDrivers[$j]=StringFormat('"%s"',$aDrivers[$j])
            Next
            RunWait(@ComSpec&' /c drvload.exe '&_StrJoin($aDrivers," "),$sPath,@SW_HIDE)
        EndIf
        ; Proc ShellExt/COM/Dll Reg
        $sRegSvr=_getEntry($aRegAppEntries,"RegSvr")
        If $sRegSvr<>"" Then
            $aRegSvr=StringSplit($sRegSvr,",")
            For $j=1 To $aRegSvr[0]
                If StringInStr($aRegSvr[$j]," ") Then $aRegSvr[$j]=StringFormat('"%s"',$aRegSvr[$j])
                RunWait(@WindowsDir&'\System32\regsvr32.exe /s '&$aRegSvr[$j],$sPath,@SW_HIDE)
                RunWait(@WindowsDir&'\System32\regsvr32.exe /s /i '&$aRegSvr[$j],$sPath,@SW_HIDE)
            Next
        EndIf
        $sRegSvrWow64=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","RegSvrWow64","")
        If $sRegSvrWow64<>"" Then
            $aRegSvrWow64=StringSplit($sRegSvrWow64,",")
            For $j=1 To $aRegSvrWow64[0]
                If StringInStr($aRegSvrWow64[$j]," ") Then $aRegSvrWow64[$j]=StringFormat('"%s"',$aRegSvrWow64[$j])
                RunWait(@WindowsDir&'\SysWow64\regsvr32.exe /s '&$aRegSvrWow64[$j],$sPath,@SW_HIDE)
                RunWait(@WindowsDir&'\SysWow64\regsvr32.exe /s /i '&$aRegSvrWow64[$j],$sPath,@SW_HIDE)
            Next
        EndIf
        ;Process Reg entries
        $sRegMod=_getEntry($aRegAppEntries,"CustReg")
        If $sRegMod Then
            $vRegModDec=_Base64Decode($sRegMod)
            $aRegMod=_ArrayFromString($vRegModDec,'|',@CRLF,1,3)
            If Not @error Then
                For $j=1 To UBound($aRegMod,1)-1
                    If $aRegMod[$j][2]="REG_BINARY" Or $aRegMod[$j][2]="REG_MULTI_SZ" Then
                        $aRegMod[$j][3]=_Base64Decode($aRegMod[$j][3])
                    EndIf
                    RegWrite($aRegMod[$j][0],$aRegMod[$j][1],$aRegMod[$j][2],$aRegMod[$j][3])
                Next
            EndIf
        EndIf
        ;Process Custom Init
        $sInitExec=_getEntry($aRegAppEntries,"InitCmd")
        If $sInitExec Then
            ;Init Env
            EnvSet("InfRegApp_AppPath",$sPath)
            EnvSet("InfRegApp_AppExec",$sExec)
            EnvSet("InfRegApp_AppExecPath",$sExecPath)
            EnvSet("InfRegApp_AppIcon",$sIcon)
            EnvSet("InfRegApp_AppExecParam",$sDefParam)
            EnvSet("InfRegApp_AppAlias",$sAlias)
            EnvSet("InfRegApp_AppVersion",$sVersion)
            EnvSet("InfRegApp_AppIconIdx",$iIconIdx)
            If StringInStr($sInitExec,"~!InitAu3") Or StringInStr($sInitExec,"~!InitA3x") Then
                $vSplit=StringSplit($sInitExec,'|',2)
                If Not @error Then
                    If FileExists($vSplit[1]) Then
                        RunWait(StringFormat('"%s" /AutoIt3ExecuteScript "%s"',@AutoItExe,$vSplit[1]),$sPath,@SW_HIDE)
                    Else
                        $sTmpFile=_TempFile()
                        Local $hFile=FileOpen($sTmpFile,26)
                        FileWrite($hFile,BinaryToString(_Base64Decode($sInitExec)))
                        FileClose($hFile)
                        RunWait(StringFormat('"%s" /AutoIt3ExecuteScript "%s"',@AutoItExe,$sTmpFile),$sPath,@SW_HIDE)
                        FileDelete($sTmpFile)
                    EndIf
                EndIf
            Else
                $vExecB64=BinaryToString(_Base64Decode($sInitExec))
                RunWait($vExecB64,$sPath,@SW_HIDE)
            EndIf
        EndIf
        ; Proc Associations, OpenWith Reg, Browser Reg etc.
        $sReg=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Reg","")
        $sDrivers=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Drivers","")
        $sCmdBoot=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Cmd.Boot","")
        $sCmdPreshell=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Cmd.Preshell","")
        $sCmdPostshell=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Cmd.Postshell","")
        $sCmdShutdown=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Cmd.Shutdown","")
        $sCmdLogOff=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Cmd.Logoff","")
        $sShlExt=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","ShlExts","")
        $sExtIcon=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","ExtIcon","")
        $bIsBrowser=(IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","isBrowser","")="True")
        $sAliasSafe=StringStripWS($sAlias,8)
        If $bOpenWith Then
            if $iIconIdx<>"" Then $sIcon&=','&$iIconIdx
            $sProtos=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Protos","")
            $sExt=IniRead($sProgs&'\'&$aProgs[$i],"Infinity.RegApp","Exts","")
            ;ConsoleWrite($sAliasSafe&@CRLF)
            $sClassRootFile="HKCU\Software\Classes\"&$sAliasSafe&"File"
            $sClassRootUrl="HKCU\Software\Classes\"&$sAliasSafe&"Url"
            If $bIsBrowser Then
                $sClientSMIRoot="HKCU\Software\Clients\StartMenuInternet\"&$sAliasSafe
                RegWrite("HKCU\Software\RegisteredApplications",$sAliasSafe,"REG_SZ","Software\Clients\StartMenuInternet\"&$sAliasSafe&"\Capabilities")
                RegWrite($sClientSMIRoot,"","REG_SZ",$sTitle)
                RegWrite($sClientSMIRoot&"\DefaultIcon","","REG_SZ",$sPath&'\'&$sIcon)
                RegWrite($sClientSMIRoot&"\shell\open\command","","REG_SZ",$sExecPath&' "%1"')
                RegWrite($sClientSMIRoot&"\InstallInfo","IconsVisible","REG_DWORD",1)
                RegWrite($sClientSMIRoot&"\Capabilities","ApplicationName","REG_SZ",$sTitle)
                RegWrite($sClientSMIRoot&"\Capabilities","ApplicationIcon","REG_SZ",$sPath&'\'&$sIcon)
                RegWrite($sClientSMIRoot&"\Capabilities","ApplicationDescription","REG_SZ",$sDesc)
                RegWrite($sClientSMIRoot&"\Capabilities\StartMenu","StartMenuInternet","REG_SZ",$sAliasSafe)
            EndIf
            $sRegAppPath="HKCU\Software\Microsoft\Windows\CurrentVersion\App Paths\"&$sExec
            $sRegClsApp="HKCU\Software\Classes\Applications\"&$sExec
            $sRegExpFiExt="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\."
            RegWrite($sRegAppPath,"","REG_SZ",$sExecPath)
            RegWrite($sRegAppPath,"Path","REG_SZ",$sPath)
            RegWrite($sRegClsApp,"","REG_SZ",$sTitle)
            RegWrite($sRegClsApp,"FriendlyAppName","REG_SZ",$sTitle)
            RegWrite($sRegClsApp&"\DefaultIcon","","REG_SZ",$sPath&'\'&$sIcon)
            RegWrite($sRegClsApp&"\shell","","REG_SZ","Open")
            RegWrite($sRegClsApp&"\shell\open\command","","REG_SZ",$sExecPath&' "%1"')
            RegWrite($sRegClsApp&"\Capabilities","ApplicationName","REG_SZ",$sTitle)
            RegWrite($sRegClsApp&"\Capabilities","ApplicationIcon","REG_SZ",$sPath&'\'&$sIcon)
            RegWrite($sRegClsApp&"\Capabilities","ApplicationDescription","REG_SZ",$sDesc)
            If $sProtos<>"" Then
                RegWrite($sClassRootUrl,"","REG_SZ",$sAliasSafe&" Protocol")
                RegWrite($sClassRootUrl,"EditFlags","REG_DWORD",0x2)
                RegWrite($sClassRootUrl,"FriendlyTypeName","REG_SZ",$sAliasSafe&" Protocol")
                RegWrite($sClassRootUrl,"URL Protocol","REG_SZ","")
                RegWrite($sClassRootUrl&"\DefaultIcon","","REG_SZ",$sPath&'\'&$sIcon)
                RegWrite($sClassRootUrl&"\shell","","REG_SZ","open")
                RegWrite($sClassRootUrl&"\shell\open\command","","REG_SZ",$sExecPath&' "%1"')
                ;RegWrite($sRegAppPath,"SupportedProtocols","REG_SZ",StringReplace($sProtos,",",":"))
                RegWrite($sRegAppPath,"useURL","REG_DWORD",1)
                If StringInStr($sProtos,",") Then
                    $aProtos=StringSplit($sProtos,",")
                    For $j=1 To $aProtos[0]
                        _RegDeleteLMCU("\Software\Classes\"&$aProtos[$j]&"\OpenWithProgids")
                        _RegDeleteLMCU("\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\"&$aProtos[$j]&"\UserChoice")
                        If $bIsBrowser Then RegWrite($sClientSMIRoot&"\Capabilities\URLAssociations",$aProtos[$j],"REG_SZ",$sAliasSafe&"Url")
                        RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts","Applications\"&$sExec&"_"&$aProtos[$j],"REG_DWORD",0)
                        RegWrite($sRegClsApp&"\Capabilities\URLAssociations",$aProtos[$j],"REG_SZ",$sAliasSafe&"Url")
                        _pushFTA($aProtos[$j],$sAliasSafe&"Url")
                    Next
                Else
                    _RegDeleteLMCU("\Software\Classes\"&$sProtos&"\OpenWithProgids")
                    _RegDeleteLMCU("\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\"&$sProtos&"\UserChoice")
                    If $bIsBrowser Then RegWrite($sClientSMIRoot&"\Capabilities\URLAssociations",$sProtos,"REG_SZ",$sAliasSafe&"Url")
                    RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts","Applications\"&$sExec&"_"&$sProtos,"REG_DWORD",0)
                    RegWrite($sRegClsApp&"\Capabilities\URLAssociations",$sProtos,"REG_SZ",$sAliasSafe&"Url")
                    _pushFTA($sProtos,$sAliasSafe&"Url")
                EndIf
            EndIf
            If $sExt<>'' Then
                $sNoDefAssoc="exe,scr,cmd,bat,reg,cpl"
                RegWrite($sClassRootFile,"","REG_SZ",$sAliasSafe&" File")
                RegWrite($sClassRootFile,"EditFlags","REG_DWORD",0x2)
                RegWrite($sClassRootFile&"\DefaultIcon","","REG_SZ",$sPath&'\'&$sIcon)
                RegWrite($sClassRootFile&"\shell\open\command","","REG_SZ",$sExecPath&' "%1"')
                If StringInStr($sExt,",") Then
                    $aExts=StringSplit($sExt,",")
                    For $j=1 To $aExts[0]
                        $bNoDefAssoc=StringInStr($sNoDefAssoc,$aExts[$j])<>0
                        If Not $bNoDefAssoc Then
                            _RegDeleteLMCU("\Software\Classes\."&$aExts[$j]&"\OpenWithProgids")
                        EndIf
                        RegWrite($sRegClsApp&"\SupportedTypes",'.'&$aExts[$j],"REG_SZ",'')
                        RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts","Applications\"&$sExec&"_."&$aExts[$j],"REG_DWORD",0)

                        Local $aOWL=_procOWL($sRegExpFiExt&$aExts[$j]&"\OpenWithList",$sExec)
                        If Not @error Then
                            If Not $aOWL[2] Then
                                RegWrite($sRegExpFiExt&$aExts[$j]&"\OpenWithList",$aOWL[0],"REG_SZ",$sExec)
                                RegWrite($sRegExpFiExt&$aExts[$j]&"\OpenWithList","MRUList","REG_SZ",$aOWL[1])
                            EndIf
                        EndIf

                        If $bIsBrowser Then RegWrite($sClientSMIRoot&"\Capabilities\FileAssociations",'.'&$aExts[$j],"REG_SZ",$sAliasSafe&"File")
                        RegWrite($sRegClsApp&"\Capabilities\FileAssociations",'.'&$aExts[$j],"REG_SZ",$sAliasSafe&"File")

                        If Not $bNoDefAssoc Then
                            _RegDeleteLMCU("\Software\Classes\."&$aExts[$j]&"\OpenWithProgids")
                            _RegDeleteLMCU("\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\."&$aExts[$j]&"\OpenWithProgids")
                            _RegDeleteLMCU("\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\."&$aExts[$j]&"\UserChoice")
                            _pushFTA('.'&$aExts[$j],$sAliasSafe&"File")
                        EndIf
                    Next
                Else
                    $bNoDefAssoc=StringInStr($sNoDefAssoc,$sExt)<>0
                    ;ConsoleWrite('+'&StringInStr($sNoDefAssoc,$sExt)&';'&$bNoDefAssoc&';'&$sExt&@CRLF)
                    If Not $bNoDefAssoc Then
                        _RegDeleteLMCU("\Software\Classes\."&$sExt&"\OpenWithProgids")
                    EndIf
                    RegWrite($sRegClsApp&"\SupportedTypes",'.'&$sExt,"REG_SZ",'')
                    RegWrite("HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts","Applications\"&$sExec&"_."&$sExt,"REG_DWORD",0)

                    If $bIsBrowser Then RegWrite($sClientSMIRoot&"\Capabilities\FileAssociations",'.'&$sExt,"REG_SZ",$sAliasSafe&"File")
                    RegWrite($sRegClsApp&"\Capabilities\FileAssociations",'.'&$sExt,"REG_SZ",$sAliasSafe&"File")

                    ; Handle OpenWithList
                    Local $aOWL=_procOWL($sRegExpFiExt&$sExt&"\OpenWithList",$sExec) ; [0,1,2] [sLtrNext,sLtrLstNew,bExecExists]
                    If Not @error Then
                        If Not $aOWL[2] Then
                            RegWrite($sRegExpFiExt&$sExt&"\OpenWithList",$aOWL[0],"REG_SZ",$sExec)
                            RegWrite($sRegExpFiExt&$sExt&"\OpenWithList","MRUList","REG_SZ",$aOWL[1])
                        EndIf
                    EndIf

                    ; Reset Assoc and consider OpenWith app candidate only if not protected type.
                    If Not $bNoDefAssoc Then
                        _RegDeleteLMCU("\Software\Classes\."&$sExt&"\OpenWithProgids")
                        _RegDeleteLMCU("\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\."&$sExt&"\OpenWithProgids")
                        _RegDeleteLMCU("\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\."&$sExt&"\UserChoice")
                        _pushFTA('.'&$sExt,$sAliasSafe&"File")
                    EndIf
                EndIf
            EndIf
        EndIf
    EndIf
    $sAutoRun=_getEntry($aRegAppEntries,"AutoRun")
    If $sAutoRun<>"" Then
        ;ConsoleWrite($sExecPath&@CRLF)
        Switch $sAutoRun
            Case "PostShell"
                RegWrite("HKLM\Software\Microsoft\Windows\CurrentVersion\Run",$sAlias,"REG_SZ",$sExecPath)
            Case "Boot"
                Run($sExecPath,$sPath,@SW_SHOW)
        EndSwitch
    EndIf
Next

Func _RegWriteLMCU($sKey,$sValName,$sType,$sVal)
    ;RegWrite("HKLM"&$sKey,$sValName,$sType,$sVal)
    RegWrite("HKCU"&$sKey,$sValName,$sType,$sVal)
EndFunc

Func _RegDeleteLMCU($sKey)
    RegDelete("HKLM"&$sKey)
    RegDelete("HKCU"&$sKey)
EndFunc

; Set Default programs
;_DebugArrayDisplay($aGlobalAssoc)
For $i=1 To $aGlobalAssoc[0][0]
    If $aGlobalAssoc[$i][2]>1 Then ContinueLoop
    If StringLeft($aGlobalAssoc[$i][0],1)='.' Then
        ;RegWrite("HKCU\Software\Classes\"&$aGlobalAssoc[$i][0],"","REG_SZ",$aGlobalAssoc[$i][1])
        _Set_FTA($aGlobalAssoc[$i][1],$aGlobalAssoc[$i][0])
        ;ConsoleWrite($aGlobalAssoc[$i][1]&','&$aGlobalAssoc[$i][0]&@CRLF)
    Else
        ;RegWrite("HKCU\Software\Classes\"&$aGlobalAssoc[$i][0],"","REG_SZ","URL:"&$aGlobalAssoc[$i][1])
        ;$sRegOWPid="Software\Classes\"&$aGlobalAssoc[$i][0]&"\OpenWithProgids"
        ;RegWrite("HKCU\"&$sRegOWPid)
        ;RegWrite("HKCU\Software\Classes\"&$aGlobalAssoc[$i][0],"URL Protocol","REG_SZ","")
        ;Local $hKey = _WinAPI_RegOpenKey($HKEY_CURRENT_USER, $sRegOWPid)
        ;Local $iRegNone = _WinAPI_RegSetValue($hKey, $aGlobalAssoc[$i][1], $REG_NONE, "", 0)
        ;_WinAPI_RegCloseKey($hKey)
        _Set_PTA($aGlobalAssoc[$i][1],$aGlobalAssoc[$i][0])
        ;ConsoleWrite($aGlobalAssoc[$i][1]&','&$aGlobalAssoc[$i][0]&@CRLF)
    EndIf

Next

; Notify Everybody
_WinAPI_shellChangeNotify($SHCNE_ASSOCCHANGED, $SHCNF_IDLIST, 0, 0)
;DllCall("user32.dll", "int", "SendMessage", "hwnd", $HWND_BROADCAST, "int", $WM_SETTINGCHANGE, "wparam", 0, "lparam", "HKLM\Microsoft\Windows\CurrentVersion\App Paths")
Exit

Func _pushFTA($sExt,$sProgId)
    Global $aGlobalAssoc
    For $i=1 To $aGlobalAssoc[0][0]
        If $aGlobalAssoc[$i][0]=$sExt Then
            $aGlobalAssoc[$i][1]&='|'&$sProgId
            $aGlobalAssoc[$i][2]+=1
            Return
        EndIf
    Next
    $iFTA=UBound($aGlobalAssoc,1)
    ReDim $aGlobalAssoc[$iFTA+1][3]
    $aGlobalAssoc[$iFTA][0]=$sExt
    $aGlobalAssoc[$iFTA][1]=$sProgId
    $aGlobalAssoc[$iFTA][2]=1
    $aGlobalAssoc[0][0]=$iFTA
EndFunc

Func _procOWL($sKey,$sExec)
    Static Local $aLetters=StringSplit("a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z",',')
    Local $k=1,$iMax=0,$iLtr=0,$iLtrMax=0,$sLtr=""
    Local $aKeys[][2]=[[0,'']]
    Local $aRet[4];sLtrNext,sLtrLstNew,bHasExec
    $bHasExec=False
    Do
        $sVal=RegEnumVal($sKey,$k)
        If @error<>0 Then ExitLoop
        $iMax=UBound($aKeys,1)
        ReDim $aKeys[$iMax+1][2]
        $aKeys[$iMax][0]=$sVal
        $aKeys[$iMax][1]=RegRead($sKey,$sVal)
        $k+=1
    Until @Error
    $aKeys[0][0]=$iMax
    $iLtrMax=0
    $sLtr=""
    If $iMax Then
        _ArraySort($aKeys)
        For $k=1 To $aKeys[0][0]
            If StringLower($aKeys[$k][0])="mrulist" Then ContinueLoop
            If $aKeys[$k][1]=$sExec Then $bHasExec=True
            $iLtr=0
            For $m=1 To $aLetters[0]
                If $aLetters[$m]<>$aKeys[$k][0] Then ContinueLoop
                $iLtr=$m
                ExitLoop
            Next
            If $iLtr>$iLtrMax Then $iLtrMax=$iLtr
            $sLtr&=$aKeys[$k][0]
        Next
    EndIf
    If $iLtrMax+1>$aLetters[0] Then Return SetError(1,0,0); Letter is beyond z
    $aRet[0]=$aLetters[$iLtrMax+1]
    $sLtr&=$aLetters[$iLtrMax+1]
    $aRet[1]=$sLtr
    $aRet[2]=$bHasExec
    Return SetError(0,0,$aRet)
EndFunc

Func _getEntry(ByRef $vArr, $sKey)
    If Not IsArray($vArr) Then Return ""
	For $i=1 to $vArr[0][0]
		if $vArr[$i][0]<>$sKey Then ContinueLoop
        If StringRegExp($vArr[$i][1],"(?i)^(1|True|Yes)$") Then Return True
        If StringRegExp($vArr[$i][1],"(?i)^(0|False|No)$") Then Return False
		Return $vArr[$i][1]
	Next
	Return ""
EndFunc

Func _StrJoin($a,$s)
    Local $r=""
    For $i=1 To $a[0]
        $r&=$a[$i]
        If $i<$a[0] Then $r&=$s
    Next
    Return $r
EndFunc

Func _EnvSet($s)
    Local $a,$b,$e
    $m=StringRegExp($s,"^([^&=]+)(&?=)(.+)$",1)
    If @error Then Return
    $mae=StringRegExp($m[0],"%([^%]+)%",1)
    If Not @error Then $mae=$mae[0]
    $mav=StringRegExp($m[0],"\$([A-Za-z0-9_]+)",1)
    If Not @error Then $mav=$mav[0]
    $mbe=StringRegExp($m[2],"%([^%]+)%",1)
    If Not @error Then $mbe=$mbe[0]
    $mbv=StringRegExp($m[2],"\$([A-Za-z0-9_]+)",1)
    If Not @error Then $mbv=$mbv[0]
    $p=0
    If $mae Then
        If $mbe Then Return
        $e=$mae
        $a=EnvGet($mae)
        $b=StringReplace($m[2],'$'&$mbv,Eval($mbv))
    ElseIf $mav Then
        If $mbv Then Return
        $b=StringReplace($m[0],'$'&$mav,Eval($mav))
        $a=EnvGet($mbe)
        $e=$mbe
        $p=1
    Else
        Return
    EndIf
    If StringInStr($m[1],'&') Then
        If $p Then
            _EnvVarSet($e,$b&$a)
        Else
            _EnvVarSet($e,$a&$b)
        EndIf
    Else
        _EnvVarSet($e,$b)
    EndIf
EndFunc

;~ [HKEY_CLASSES_ROOT\AppID\7zFM.exe]
;~ "AppID"="{8EEC1D19-363F-4A92-832E-A6C250124685}"

;~ [HKEY_CLASSES_ROOT\AppID\{8EEC1D19-363F-4A92-832E-A6C250124685}]
;~ @="7-Zip v23.01"
;~ "AccessPermission"=hex:01,00,04,80,44,00,00,00,54,00,00,00,00,00,00,00,14,00,\
;~   00,00,02,00,30,00,02,00,00,00,00,00,14,00,03,00,00,00,01,01,00,00,00,00,00,\
;~   05,0a,00,00,00,00,00,14,00,03,00,00,00,01,01,00,00,00,00,00,05,12,00,00,00,\
;~   01,02,00,00,00,00,00,05,20,00,00,00,20,02,00,00,01,02,00,00,00,00,00,05,20,\
;~   00,00,00,20,02,00,00
;~ "LaunchPermission"=hex:01,00,04,80,30,00,00,00,40,00,00,00,00,00,00,00,14,00,\
;~   00,00,02,00,1c,00,01,00,00,00,01,00,14,00,1f,00,00,00,01,01,00,00,00,00,00,\
;~   01,00,00,00,00,01,02,00,00,00,00,00,05,20,00,00,00,20,02,00,00,01,02,00,00,\
;~   00,00,00,05,20,00,00,00,20,02,00,00
;~ "RunAs"=""

;~ $_iEnvType = 0 - Sets Enviroment Variable for all profiles
;~ $_iEnvType = 1 = Set Process Enviornment Variable
;~ $_iEnvType = 2 = Set System Enviornment Variable
;~ $_iEnvType = 3 = Set User Enviornment Variable
;~ $_iEnvType = 4 = Set Volatile Enviornment Variable

Func _EnvVarSet($_sEnvVarName = "", $_sEnvVarValue = "", $_iEnvVarType = 3)
    Local $oEnvVarType, $aEnvVarType[5] = [4, "PROCESS", "SYSTEM", "USER", "VOLATILE"]
    Local $oWshShell = ObjCreate("WScript.Shell")
    Switch $_iEnvVarType
        Case 0
            For $i = 1 To $aEnvVarType[0]
                $oEnvVarType = $oWshShell.Environment($aEnvVarType[$i])
                $oEnvVarType($_sEnvVarName) = $_sEnvVarValue
            Next
        Case 1 To 4
            $oEnvVarType = $oWshShell.Environment($aEnvVarType[$_iEnvVarType])
             $oEnvVarType($_sEnvVarName) = $_sEnvVarValue
        Case Else
            Return SetError(1)
    EndSwitch
EndFunc

; #FUNCTION# ====================================================================================================================
; Name ..........: _EnvVarGet
; Description ...: Get Environment Variables
; Syntax ........: _EnvVarGet($_sEnvVarGet[, $_iEnvVarType = 3[, $_bExpVarValue = False]])
; Parameters ....: $_sEnvVarGet         - Environment variable name
;                : $_iEnvVarType        - [optional] Environment variable type. Default is 3.
;                :  - 0 - Returns Enviroment variable from all profile types
;                :  - 1 - Process Enviornment Variable
;                :  - 2 - System Enviornment Variable
;                :  - 3 - User Enviornment Variable
;                :  - 4 - Volatile Enviornment Variable
;                : $_bExpVarValue       - [optional] Expand Environment Variables within result. Default is False.
; Return values .:
;                : Flag: $_iEnvVarType
;                :  - 0 - Returns Enviroment variable from all profile types as an array
;                :  - 1 - Process Enviornment Variable as a string
;                :  - 2 - System Enviornment Variable as a string
;                :  - 3 - User Enviornment Variable as a string
;                :  - 4 - Volatile Enviornment Variable as a string
; Author ........: Subz
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func _EnvVarGet($_sEnvVarGet, $_iEnvVarType = 3, $_bExpVarValue = False)
    Local $iExpandEnvStrings = Opt("ExpandEnvStrings")
    Local $sEnvVarValue, $aEnvVarValue[5] = [4]
    Local $oEnvVarType, $aEnvVarType[5] = [4, "PROCESS", "SYSTEM", "USER", "VOLATILE"]
    Local $oWshShell = ObjCreate("WScript.Shell")
    Switch $_iEnvVarType
        Case 0
            If $_bExpVarValue == True Then Opt("ExpandEnvStrings", 1)
            For $i = 1 To $aEnvVarType[0]
                $oEnvVarType = $oWshShell.Environment($aEnvVarType[$i])
                $aEnvVarValue[$i] = $oEnvVarType($_sEnvVarGet)
            Next
            Opt("ExpandEnvStrings", $iExpandEnvStrings)
            Return $aEnvVarValue
        Case 1 To 4
            If $_bExpVarValue == True Then Opt("ExpandEnvStrings", 1)
            $oEnvVarType = $oWshShell.Environment($aEnvVarType[$_iEnvVarType])
            $sEnvVarValue = $oEnvVarType($_sEnvVarGet)
            Opt("ExpandEnvStrings", $iExpandEnvStrings)
            Return $sEnvVarValue
        Case Else
            Return SetError(1, 0, "")
    EndSwitch
EndFunc
