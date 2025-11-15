Global $g_sDwmAppPath=@SystemDir&"\InfinitySys\AeroGlass"
Global $g_sDwmApp="DWMBlurGlass.exe"
Global $g_iDwmAppPid=-1

Func doDWM($iKill=0)
    Local $iWinWait=Opt("WinWaitDelay")
    Opt("WinWaitDelay",25)
    ;If $iKill Then
    ;    While ProcessExists("dwm.exe")
    ;        ProcessClose("dwm.exe")
    ;        Sleep(125)
    ;    WEnd
    ;EndIf
    ;RunWait($g_sDwmAppPath&'\'&$g_sDwmApp&" loaddll",$g_sDwmAppPath)
    $iPid=Run($g_sDwmAppPath&'\'&$g_sDwmApp&" runhost",$g_sDwmAppPath)
    $hWnd=WinWait("DWMBlurGlass Error","",5000)
    If $hWnd Then
      WinSetState($hWnd,"",@SW_HIDE)
      While WinExists($hWnd)
        WinActivate($hWnd)
        ControlClick($hWnd,"",4)
        Sleep(25)
      WEnd
    EndIf
    $g_iDwmAppPid=Run($g_sDwmAppPath&'\'&$g_sDwmApp,$g_sDwmAppPath,@SW_HIDE)
    $hWnd=WinWait("[REGEXPTITLE:(?i)(DWMBlurGlass.*); CLASS:MiaoUI_Windows]","",10000)
    If IsHWnd($hWnd) Then WinSetState($hWnd,"",@SW_HIDE)
    While ProcessExists("DWMBlurGlass.exe")
      RunWait("taskkill /f /im DWMBlurGlass.exe")
    WEnd
    WinWaitClose($hWnd,"",10000)
    Opt("WinWaitDelay",$iWinWait)
    ;RunWait("X:\Windows\System32\InfinitySys\AeroGlass\DWMBlurGlass.exe loaddll","X:\Windows\System32\InfinitySys\AeroGlass")
EndFunc
