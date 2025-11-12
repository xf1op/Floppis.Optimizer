@echo off
set Fdir=%temp%\FOptimizer
md %Fdir%
cd %Fdir%
color 0a
:startmenu
mode 82,21
title Floppi's Optimizer - Main Menu
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Main Menu-                                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Categories-                                                               =-=
echo =-=                                                                            =-=
echo =-= [1] System Optimizations                                                   =-=
echo =-= [2] User Optimizations                                                     =-=
echo =-= [3] Privacy Tweaks                                                         =-=
echo =-= [4] User Interface Settings                                                =-=
echo =-= [5] Network Tweaks                                                         =-=
echo =-= [6] Graphics\GPU Tweaking Apps                                             =-=
echo =-= [7] Optimization Tools Installer                                           =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [!] Restart System For Best Results                                        =-=
echo =-=                                                                            =-=
echo =-= [0] Exit Script (Cleans Temporary Files)                                   =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto sysopt) else if '%s%'=='2' (goto useropt) else if '%s%'=='3' (goto privtw) else if '%s%'=='4' (goto userint) else if '%s%'=='5' (goto nwkt) else if '%s%'=='6' (goto gputwapp) else if '%s%'=='7' (goto toolsinst)
if not '%s%'=='0' goto startmenu
goto ext

:: System Optimizations Section

:sysopt
title Floppi's Optimizer - System Optimizations
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -System Optimizations-                                                     =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Windows Priority Separation                                            =-=
echo =-= [2] System Responsiveness                                                  =-=
echo =-= [3] System Service Management                                              =-=
echo =-= [4] System Memory Compression                                              =-=
echo =-= [5] Serialize Timer Expiration Settings                                    =-=
echo =-= [6] Boot Configuration Data (BCD) Tweaks                                   =-=
echo =-= [7] Process Grouping Tweaks                                                =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto winps) else if '%s%'=='2' (goto sysr) else if '%s%'=='3' (goto syssrvmg) else if '%s%'=='4' (goto sysmc) else if '%s%'=='5' (goto sertimex) else if '%s%'=='6' (goto bcdtw) else if '%s%'=='7' (goto pgtw)
if not '%s%'=='0' goto sysopt
goto startmenu

:winps
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Windows Priority Separation-                              =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-=  Win32PrioritySeparation is a registry key that allows to  =-=
echo =-=   adjust priority of foreground and background processes   =-=
echo =-=      which impacts overall performance of the system.      =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] 24 Hex 36 Dec (Best Performance)                       =-=
echo =-= [2] 28 Hex 40 Dec (Best Low Latency)                       =-=
echo =-= [3] 26 Hex 38 Dec (Default)                                =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto wps1) else if '%s%'=='2' (goto wps2) else if '%s%'=='3' (goto wps3)
if not '%s%'=='0' goto winps
mode 82,21
goto sysopt

:wps1
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x24 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto winps

:wps2
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x28 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto winps

:wps3
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 0x26 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto winps

:sysr
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -System Responsiveness-                                    =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-=  SystemResponsiveness is a registry key that allows change =-=
echo =-=    of CPU usage on low-level processes that are running    =-=
echo =-=              in the background of the system.              =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] a Hex 10 Dec (Better Performance)                      =-=
echo =-= [2] 14 Hex 20 Dec (Default)                                =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto sr1) else if '%s%'=='2' (goto sr2)
if not '%s%'=='0' goto sysr
mode 82,21
goto sysopt

:sr1
cls
echo Changing Registry Value...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0xa /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sysr

:sr2
cls
echo Changing Registry Value...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0x14 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sysr

:syssrvmg
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -System Service Management-                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Windows Search                                                         =-=
echo =-= [2] Diagnostics                                                            =-=
echo =-= [3] Sysmain (Prefetcher)                                                   =-=
echo =-= [4] IP Helper (Enable For Teredo)                                          =-=
echo =-= [5] DiagTrack (Enable To Fix Xbox Achievements)                            =-=
echo =-= [6] Server + Workstation                                                   =-=
echo =-= [7] Windows Push Notifications                                             =-=
echo =-= [8] Shell Hardware Detection                                               =-=
echo =-= [9] Human Interface Device Service (Disable For Less Input Lag)            =-=
echo =-= [10] Windows Update Functionality                                          =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go Back                                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto ssm1) else if '%s%'=='2' (goto ssm2) else if '%s%'=='3' (goto ssm3) else if '%s%'=='4' (goto ssm4) else if '%s%'=='5' (goto ssm5) else if '%s%'=='6' (goto ssm6) else if '%s%'=='7' (goto ssm7) else if '%s%'=='8' (goto ssm8) else if '%s%'=='9' (goto ssm9) else if '%s%'=='10' (goto ssm10)
if not '%s%'=='0' goto syssrvmg
goto sysopt

:ssm1
set s=
cls
echo = Windows Search - Service that indexes file content through search on taskbar.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto wsd) else if '%s%'=='2' (goto wse)
if not '%s%'=='0' goto ssm1
goto syssrvmg

:wsd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:wse
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm2
set s=
cls
echo = Diagnostics - Services that diagnose your system whenever you need to.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto dd) else if '%s%'=='2' (goto de)
if not '%s%'=='0' goto ssm2
goto syssrvmg

:dd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:de
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v Start /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v Start /t REG_DWORD /d 3 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm3
set s=
cls
echo = Sysmain - Preloads files from disk to ram speeding up app loading.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto sd) else if '%s%'=='2' (goto se)
if not '%s%'=='0' goto ssm3
goto syssrvmg

:sd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sysmain" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:se
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sysmain" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm4
set s=
cls
echo = IP Helper - Provides tunnel connectivity using IPv6 transition technologies.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto id) else if '%s%'=='2' (goto ie)
if not '%s%'=='0' goto ssm4
goto syssrvmg

:id
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:ie
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:ssm5
set s=
cls
echo = DiagTrack - Sends usage information to microsoft. (enable for xbox achiev.)
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto dtd) else if '%s%'=='2' (goto dte)
if not '%s%'=='0' goto ssm5
goto syssrvmg

:dtd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagtrack" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:dte
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagtrack" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm6
set s=
cls
echo = Server and Workstation - Services used mainly by windows servers.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto swd) else if '%s%'=='2' (goto swe)
if not '%s%'=='0' goto ssm6
goto syssrvmg

:swd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:swe
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v Start /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm7
set s=
cls
echo = Windows Push Notifications - Shows pop up of notifications on screen above taskbar.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto wpnd) else if '%s%'=='2' (goto wpne)
if not '%s%'=='0' goto ssm7
goto syssrvmg

:wpnd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wpnservice" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wpnuserservice" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:wpne
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wpnservice" /v Start /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wpnuserservice" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm8
set s=
cls
echo = Shell Hardware Detection - Automatically opens\runs pendrive files\folder.
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto shwd) else if '%s%'=='2' (goto shwe)
if not '%s%'=='0' goto ssm8
goto syssrvmg

:shwd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shellHWDetection" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:shwe
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shellHWDetection" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm9
set s=
cls
echo = Human Interface Device - Activates hotkeys, multimedia keys, etc. (mostly useless)
echo.
echo = -Options-
echo = [1] Disable (Recommended)
echo = [2] Enable (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto hd) else if '%s%'=='2' (goto he)
if not '%s%'=='0' goto ssm9
goto syssrvmg

:hd
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:he
cls
echo Changing Service State...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v Start /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:ssm10
set s=
cls
echo = Windows Update - Updates that are provided by microsoft or other brands.
echo.
echo = -Options-
echo = [1] Disable Functionality (Recommended)
echo = [2] Enable Functionality (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto wupd) else if '%s%'=='2' (goto wupe)
if not '%s%'=='0' goto ssm10
goto syssrvmg

:wupd
cls
echo Changing Service State...
sc config "usosvc" start=disabled
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v FlightSettingsMaxPauseDays /t REG_DWORD /d 0xE38 /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseFeatureUpdatesEndTime /t REG_SZ /d "2099-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseQualityUpdatesEndTime /t REG_SZ /d "2099-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseUpdatesExpiryTime /t REG_SZ /d "2099-01-01T12:00:00Z" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v SetDisableUXWUAccess /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg
:wupe
cls
echo Changing Service State...
sc config "usosvc" start=demand
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v FlightSettingsMaxPauseDays /t REG_DWORD /d 0xE38 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v SetDisableUXWUAccess /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto syssrvmg

:sysmc
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -System Memory Compression-                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-= Memory compression is a windows 10/11 feature that usually =-=
echo =-=  helps system to reduce RAM usage but within it there are  =-=
echo =-=        latency and performance issues while gaming.        =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] Disable Compression (Better Performance)               =-=
echo =-= [2] Enable Compression (Default)                           =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto smc1) else if '%s%'=='2' (goto smc2)
if not '%s%'=='0' goto sysmc
mode 82,21
goto sysopt

:smc1
cls
echo Changing Settings...
for /f %%A in ('powershell -command "(Get-MMAgent).MemoryCompression"') do (
    if /i %%A==False (
        echo Memory compression is already disabled.
    ) else (
        :: Additionally disabling prefetcher, prelaunch and page combining
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
        powershell -Command "Disable-MMAgent -ApplicationPreLaunch; Disable-MMAgent -MemoryCompression ; Disable-MMAgent -PageCombining"
        if ErrorLevel 1 (call :adminPerms)
    )
)
timeout /nobreak 3 >nul
goto sysmc

:smc2
cls
echo Changing Settings...
for /f %%A in ('powershell -command "(Get-MMAgent).MemoryCompression"') do (
    if /i %%A==True (
        echo Memory compression is already enabled.
    ) else (
        :: Additionally enabling prefetcher, prelaunch and page combining
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 3 /f
        powershell -Command "Enable-MMAgent -ApplicationPreLaunch; Enable-MMAgent -MemoryCompression ; Enable-MMAgent -PageCombining"
        if ErrorLevel 1 (call :adminPerms)
    )
)
timeout /nobreak 3 >nul
goto sysmc

:sertimex
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Serialize Timer Expiration Settings-                      =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-=  SerializeTimerExpiration is a registry key affecting how  =-=
echo =-=     timer expirations are handled across the processor     =-=
echo =-=        reducing overhead and improving performance.        =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] Enable (Better Performance)                            =-=
echo =-= [2] Remove (Default)                                       =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto stes1) else if '%s%'=='2' (goto stes2)
if not '%s%'=='0' goto sertimex
mode 82,21
goto sysopt

:stes1
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v SerializeTimerExpiration /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sertimex

:stes2
cls
echo Changing Registry Value...
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v SerializeTimerExpiration /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sertimex

:bcdtw
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Boot Configuration Data Tweaks-                                  =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-=   BCD is a tool that changes different options during or   =-=
echo =-=   after the boot which may affect the system performance   =-=
echo =-=                     and configuration.                     =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] Tweak (Better Performance)                             =-=
echo =-= [2] Set To Default                                         =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto bcd1) else if '%s%'=='2' (goto bcd2)
if not '%s%'=='0' goto bcdtw
mode 82,21
goto sysopt

:bcd1
cls
echo Changing BCD options...
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto bcdtw

:bcd2
cls
echo Changing BCD options...
bcdedit /deletevalue {current} useplatformtick
bcdedit /deletevalue {current} disabledynamictick
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto bcdtw

:pgtw
set s=
mode 66,17
cls
echo =-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Process Grouping Tweaks-                                  =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Information-                                              =-=
echo =-=  SvcHostSplitThresholdInKB is a registry key changing how  =-=
echo =-=     much processes are grouped to save ram or split to     =-=
echo =-=            slightly improve system performance.            =-=
echo =-=                                                            =-=
echo =-= -Values-                                                   =-=
echo =-= [1] Split (Minimal Performance Improvement)                =-=
echo =-= [2] Group (Minimum RAM Usage)                              =-=
echo =-= [3] Reset Value To Default                                 =-=
echo =-=                                                            =-=
echo =-=                                                            =-=
echo =-= [0] Go Back                                                =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto pgt1) else if '%s%'=='2' (goto pgt2) else if '%s%'=='3' (goto pgt3)
if not '%s%'=='0' goto pgtw
mode 82,21
goto sysopt

:pgt1
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 0xffffffff /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pgtw

:pgt2
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pgtw

:pgt3
cls
echo Changing Registry Value...
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 0x00380000 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pgtw

:: User optimizations Section

:useropt
title Floppi's Optimizer - User Optimizations
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -User Optimizations-                                                       =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Background Apps Management                                             =-=
echo =-= [2] Game Mode Switch                                                       =-=
echo =-= [3] Game DVR (Game Capture)                                                =-=
echo =-= [4] Hardware Accelerated GPU Scheduling Settings                           =-=
echo =-= [5] Variable Refresh Rate Switch                                           =-=
echo =-= [6] Windows Performance Options                                            =-=
echo =-= [7] Adjust Page File Size                                                  =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto bgapp) else if '%s%'=='2' (goto gms) else if '%s%'=='3' (goto gdvr) else if '%s%'=='4' (goto hagss) else if '%s%'=='5' (goto vrrs) else if '%s%'=='6' (goto wpo) else if '%s%'=='7' (goto pfs)
if not '%s%'=='0' goto useropt
goto startmenu

:bgapp
set s=
cls
echo = Background Apps - Applications that are running in the background.
echo.
echo = -Options-
echo = [1] Disable Background Apps (Recommended)
echo = [2] Enable Background Apps (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto bga1) else if '%s%'=='2' (goto bga2)
if not '%s%'=='0' goto bgapp
goto useropt

:bga1
cls
echo Changing Registry Value...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BackgroundAppGlobalToggle /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto bgapp

:bga2
cls
echo Changing Registry Value...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BackgroundAppGlobalToggle /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto bgapp

:gms
set s=
cls
echo = Game Mode - Windows 10\11 Feature "Prioritizing games" (Fake Information)
echo.
echo = -Options-
echo = [1] Disable Game Mode (Recommended)
echo = [2] Enable Game Mode (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto gmd) else if '%s%'=='2' (goto gme)
if not '%s%'=='0' goto gms
goto useropt

:gmd
cls
echo Changing Game Mode...
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto gms

:gme
cls
echo Changing Game Mode...
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto gms

:gdvr
set s=
cls
echo = Game DVR - Windows 10\11 feature recording games silently.
echo.
echo = -Options-
echo = [1] Disable Game DVR (Recommended)
echo = [2] Enable Game DVR (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto gdvrd) else if '%s%'=='2' (goto gdvre)
if not '%s%'=='0' goto gdvr
goto useropt

:gdvrd
cls
echo Changing Game DVR...
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto gdvr

:gdvre
cls
echo Changing Game DVR...
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto gdvr

:hagss
set s=
cls
echo = Hardware Accelerated GPU Scheduling - Uses GPU for system processes.
echo.
echo = -Options-
echo = [1] Disable HAGS (Recommended)
echo = [2] Enable HAGS (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto hagsd) else if '%s%'=='2' (goto hagse)
if not '%s%'=='0' goto hagss
goto useropt

:hagsd
cls
echo Changing HAGS...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto hagss

:hagse
cls
echo Changing HAGS...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto hagss

:vrrs
set s=
cls
echo = Variable Refresh Rate - Dynamic refresh rate for applications.
echo.
echo = -Options-
echo = [1] Disable VRR 
echo = [2] Enable VRR (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto vrre) else if '%s%'=='2' (goto vrrd)
if not '%s%'=='0' goto vrrs
goto useropt

:vrrd
cls
echo Changing VRR...
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "VRROptimizeEnable=1;" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto vrrs

:vrre
cls
echo Changing VRR...
reg add "HKEY_CURRENT_USER\Software\Microsoft\DirectX\UserGpuPreferences" /v DirectXUserGlobalSettings /t REG_SZ /d "VRROptimizeEnable=0;" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto vrrs

:wpo
cls
echo Launching Performance Options...
echo.
echo Choose your preferred option.
start /wait "" "C:\Windows\System32\SystemPropertiesPerformance.exe"
echo Going back...
timeout /nobreak 3 >nul
goto useropt

:pfs
set s=
cls
echo = Page File - Amount of disk space reserved to off-load ram. (Swap File)
echo.
echo = -Options-
echo = [1] 8GB Page File Size
echo = [2] 4GB Page File Size
echo = [3] 2GB Page File Size
echo = [4] Disable Page File
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto pfs1) else if '%s%'=='2' (goto pfs2) else if '%s%'=='3' (goto pfs3) else if '%s%'=='4' (goto pfs4)
if not '%s%'=='0' goto pfs
goto useropt

:pfs1
cls
echo Changing Page File Size...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys 16 8192" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pfs

:pfs2
cls
echo Changing Page File Size...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys 16 4096" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pfs

:pfs3
cls
echo Changing Page File Size...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys 16 2048" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pfs

:pfs4
cls
echo Changing Page File Size...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto pfs

:: Privacy tweaks section

:privtw
title Floppi's Optimizer - Privacy Tweaks
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Privacy Tweaks-                                                           =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Change App Access To Various Things                                    =-=
echo =-= [2] Data Collecting System Services                                        =-=
echo =-= [3] Telemetry Options                                                      =-=
echo =-= [4] Content Delivery Manager                                               =-=
echo =-= [5] Windows Privacy Settings                                               =-=
echo =-= [6] Windows Recall Functionality                                           =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto caat) else if '%s%'=='2' (goto dcss) else if '%s%'=='3' (goto to) else if '%s%'=='4' (goto cdm) else if '%s%'=='5' (goto wps) else if '%s%'=='6' (goto wrf)
if not '%s%'=='0' goto privtw
goto startmenu

:caat
set s=
cls
echo = Allow Apps Access ex. Documents - Allows apps to use or monitor your documents.
echo.
echo = -Options-
echo = [1] Disable Apps Access Everything (Recommended)
echo = [2] Enable Apps Access Everything (Default)
echo.
echo = [!] This will not disable microphone, camera and screenshot capturing.
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto caat1) else if '%s%'=='2' (goto caat2)
if not '%s%'=='0' goto caat
goto privtw

:caat1
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\systemAIModels" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v Value /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\systemAIModels" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v Value /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v Value /t REG_SZ /d "Deny" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto caat

:caat2
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\systemAIModels" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v Value /t REG_SZ /d "Allow" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\systemAIModels" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v Value /t REG_SZ /d "Allow" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v Value /t REG_SZ /d "Allow" /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto caat

:dcss
set s=
cls
echo = Data Collecting Services - Services that collect user data to microsoft.
echo.
echo = -Options-
echo = [1] Disable Services (Recommended)
echo = [2] Enable Services (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto dcss1) else if '%s%'=='2' (goto dcss2)
if not '%s%'=='0' goto dcss
goto privtw

:dcss1
cls
echo Changing Registry Values...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v Status /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v Start /t REG_DWORD /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dcss

:dcss2
cls
echo Changing Registry Values...
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v Start /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v Status /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v Start /t REG_DWORD /d 3 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dcss

:to
set s=
cls
echo = Telemetry - Data collection and tracking that is sent to microsoft.
echo.
echo = -Options-
echo = [1] Disable Telemetry (Recommended)
echo = [2] Enable Telemetry (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto to1) else if '%s%'=='2' (goto to2)
if not '%s%'=='0' goto caat
goto privtw

:to1
cls
echo Changing Registry Values...
reg add "HKCU\Policies\Microsoft\Windows\CloudContent" /v DisableTailoredExperiencesWithDiagnosticData /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowDeviceNameInTelemetry /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto to

:to2
cls
echo Changing Registry Values...
reg add "HKCU\Policies\Microsoft\Windows\CloudContent" /v DisableTailoredExperiencesWithDiagnosticData /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowDeviceNameInTelemetry /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto to

:cdm
set s=
cls
echo = Content Delivery Manager - Delivers personalized content, app suggestion, etc.
echo.
echo = -Options-
echo = [1] Disable CDM (Recommended)
echo = [2] Enable CDM (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto cdm1) else if '%s%'=='2' (goto cdm2)
if not '%s%'=='0' goto caat
goto privtw

:cdm1
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v ContentDeliveryAllowed /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContentEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v FeatureManagementEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v OemPreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenOverlayEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-202913Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-202914Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280797Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280811Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280812Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280813Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280814Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280815Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280810Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280817Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310091Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310092Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310093Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310094Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314558Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314559Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314562Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314563Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314566Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314567Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338380Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338387Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338381Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338382Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338386Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338393Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-346480Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-346481Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353695Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353697Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353698Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353699Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000044Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000045Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000105Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000106Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000161Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000162Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000163Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000164Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000165Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000166Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEverEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RemediationRequired /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000326Enabled /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto cdm

:cdm2
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v ContentDeliveryAllowed /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContentEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v FeatureManagementEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v OemPreInstalledAppsEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenOverlayEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-202913Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-202914Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280797Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280811Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280812Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280813Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280814Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280815Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280810Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-280817Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310091Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310092Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310093Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-310094Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314558Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314559Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314562Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314563Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314566Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-314567Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338380Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338387Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338381Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338382Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338386Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338393Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-346480Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-346481Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353694Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353695Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353697Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353698Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353699Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000044Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000045Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000105Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000106Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000161Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000162Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000163Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000164Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000165Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000166Enabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEverEnabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RemediationRequired /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-88000326Enabled /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto cdm

:wps
cls
echo Disable everything in "Windows permissions"!
timeout /nobreak 3 >nul
echo Launching Windows Privacy Settings...
start "" ms-settings:privacy
timeout /nobreak 3 >nul
goto privtw

:wrf
set s=
cls
echo = Windows Recall - A thing that may steal your personal information.
echo.
echo = -Options-
echo = [1] Disable Recall (Recommended)
echo = [2] Enable Recall (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto wrf1) else if '%s%'=='2' (goto wrf2)
if not '%s%'=='0' goto wrf
goto privtw

:wrf1
cls
echo Disabling Recall Functionality...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v AllowRecallEnablement /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v AllowRecallExport /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableAIDataAnalysis /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableClickToDo /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableSettingsAgent /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto privtw

:wrf2
cls
echo Enabling Recall Functionality...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v AllowRecallEnablement /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v AllowRecallExport /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableAIDataAnalysis /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableClickToDo /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v DisableSettingsAgent /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto privtw

:: User interface settings section

:userint
title Floppi's Optimizer - User Interface Settings
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -User Interface Settings-                                                  =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Change Windows Theme And Apps Theme                                    =-=
echo =-= [2] Change Dragging Width And Height                                       =-=
echo =-= [3] Change Searchbar Options                                               =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto wtaat) else if '%s%'=='2' (goto dwah) else if '%s%'=='3' (goto sbo)
if not '%s%'=='0' goto userint
goto startmenu

:wtaat
set s=
cls
echo = Windows Theme - It's either dark or light. Whatever you prefer!
echo.
echo = -Options-
echo = [1] Dark Theme
echo = [2] Light Theme
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto wtaat1) else if '%s%'=='2' (goto wtaat2)
if not '%s%'=='0' goto wtaat
goto userint

:wtaat1
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto wtaat

:wtaat2
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto wtaat

:dwah
set s=
cls
echo = Dragging - When you want to drag a window by moving mouse for X pixels.
echo.
echo = -Options-
echo = [1] 8 Pixels (For Fast Mouses)
echo = [2] 6 Pixels
echo = [3] 4 Pixels (Default)
echo = [4] 2 Pixels
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto dwah1) else if '%s%'=='2' (goto dwah2) else if '%s%'=='3' (goto dwah3) else if '%s%'=='4' (goto dwah4)
if not '%s%'=='0' goto dwah
goto userint

:dwah1
cls
echo Changing Registry Values...
reg add "HKCU\Control Panel\Desktop" /v DragWidth /t REG_SZ /d 8 /f
reg add "HKCU\Control Panel\Desktop" /v DragHeight /t REG_SZ /d 8 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dwah

:dwah2
cls
echo Changing Registry Values...
reg add "HKCU\Control Panel\Desktop" /v DragWidth /t REG_SZ /d 6 /f
reg add "HKCU\Control Panel\Desktop" /v DragHeight /t REG_SZ /d 6 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dwah

:dwah3
cls
echo Changing Registry Values...
reg add "HKCU\Control Panel\Desktop" /v DragWidth /t REG_SZ /d 4 /f
reg add "HKCU\Control Panel\Desktop" /v DragHeight /t REG_SZ /d 4 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dwah

:dwah4
cls
echo Changing Registry Values...
reg add "HKCU\Control Panel\Desktop" /v DragWidth /t REG_SZ /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v DragHeight /t REG_SZ /d 2 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto dwah

:sbo
set s=
cls
echo = Search Options - Internet search, history, dynamic search, etc.
echo.
echo = -Options-
echo = [1] Disable Search Settings (Recommended)
echo = [2] Enable Search Settings (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto sbo1) else if '%s%'=='2' (goto sbo2)
if not '%s%'=='0' goto sbo
goto userint

:sbo1
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v ActivityHistoryEnabled /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsAADCloudSearchEnabled /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDeviceSearchHistoryEnabled /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_SZ /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsMSACloudSearchEnabled /t REG_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCloudSearch /t REG_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowSearchToUseLocation /t REG_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v ConnectedSearchUseWeb /t REG_SZ /d 0 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sbo

:sbo2
cls
echo Changing Registry Values...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v ActivityHistoryEnabled /t REG_SZ /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_SZ /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsAADCloudSearchEnabled /t REG_SZ /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDeviceSearchHistoryEnabled /t REG_SZ /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsDynamicSearchBoxEnabled /t REG_SZ /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v IsMSACloudSearchEnabled /t REG_SZ /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCloudSearch /t REG_SZ /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_SZ /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowSearchToUseLocation /t REG_SZ /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v ConnectedSearchUseWeb /t REG_SZ /d 1 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto sbo

:: Network tweaks section

:nwkt
title Floppi's Optimizer - Network Tweaks
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Network Tweaks-                                                           =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Optimize UDP Connection                                                =-=
echo =-= [2] Manage TCP Auto-Tuning                                                 =-=
echo =-= [3] DNS Switcher                                                           =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto nwkt1) else if '%s%'=='2' (goto nwkt2) else if '%s%'=='3' (goto nwkt3)
if not '%s%'=='0' goto nwkt
goto startmenu

:nwkt1
set s=
cls
echo = UDP - Fast, lightweight protocol for sending data.
echo.
echo = -Options-
echo = [1] Optimize For Normal Routers
echo = [2] Optimize For Routers With Jumbo Packets
echo = [3] Remove Optimization (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto udp1) else if '%s%'=='2' (goto udp2) else if '%s%'=='3' (goto udp3)
if not '%s%'=='0' goto nwkt1
goto nwkt

:udp1
cls
echo Changing UDP Settings...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v FastSendDatagramThreshold /t REG_DWORD /d 1500 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt1

:udp2
cls
echo Changing UDP Settings...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v FastSendDatagramThreshold /t REG_DWORD /d 64000 /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt1

:udp3
cls
echo Changing UDP Settings...
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v FastSendDatagramThreshold /f
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt1

:nwkt2
set s=
cls
echo = TCP Auto-Tuning - Tunes your internet for best download speed.
echo.
echo = -Options-
echo = [1] Turn Off Auto-Tuning (Best\Gaming)
echo = [2] Turn On Auto-Tuning (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto tcp1) else if '%s%'=='2' (goto tcp2)
if not '%s%'=='0' goto nwkt2
goto nwkt

:tcp1
cls
echo Changing TCP Auto-Tuning...
netsh int tcp set global autotuning=disabled
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt2

:tcp2
cls
echo Changing TCP Auto-Tuning...
netsh int tcp set global autotuning=normal
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt2

:nwkt3
set s=
cls
echo = DNS - Is responsible to assigning domain names. Allowing you to use internet.
echo.
echo = -Options-
echo = [1] Switch to cloudflare DNS (Best?)
echo = [2] Switch to google DNS
echo = [3] Switch to automatic DNS (Default)
echo.
echo = [0] Go Back
echo.
set /p s=Number: 
if '%s%'=='1' (goto dns1) else if '%s%'=='2' (goto dns2) else if '%s%'=='3' (goto dns3)
if not '%s%'=='0' goto nwkt3
goto nwkt

:dns1
cls
echo Changing DNS...
ipconfig /flushdns
powershell -Command "Set-DNSClientServerAddress \"*\" -ServerAddresses (\"1.1.1.1\", \"1.0.0.1\")"
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt3

:dns2
cls
echo Changing DNS...
ipconfig /flushdns
powershell -Command "Set-DNSClientServerAddress \"*\" -ServerAddresses (\"8.8.8.8\", \"8.8.4.4\")"
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt3

:dns3
cls
echo Changing DNS...
ipconfig /flushdns
powershell -Command "Set-DNSClientServerAddress \"*\" -ResetServerAddresses"
if ErrorLevel 1 (call :adminPerms)
timeout /nobreak 3 >nul
goto nwkt3

:: Graphics tweaking apps section

:gputwapp
title Floppi's Optimizer - Graphics Tweaking Apps
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Graphics Tweaking Apps-                                                   =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Install MSI Afterburner                                                =-=
echo =-= [2] Install EVGA Precision X                                               =-=
echo =-= [3] Install Asus GPU Tweak                                                 =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto gta1) else if '%s%'=='2' (goto gta2) else if '%s%'=='3' (goto gta3)
if not '%s%'=='0' goto gputwapp
goto startmenu

:gta1
cls
echo Downloading MSI Afterburner...
powershell -Command "Invoke-WebRequest -Uri 'https://download-2.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1763090956~acl=/*~hmac=51deed9a8fd1c00752d6553389bd13b5f08df49395a069a49abd211115d4d796' -OutFile '%Fdir%\Afterburner.zip'"
echo Extracting zip...
tar -xf "%Fdir%\Afterburner.zip"
timeout /nobreak 2 >nul
echo Starting Installer...
for %%F in ("%Fdir%\MSIAfterburner*.exe") do start "" "%%F"
goto gputwapp

:gta2
cls
echo Downloading EVGA Precision X
powershell -Command "Invoke-WebRequest -Uri 'https://cdn.evga.com/software/EVGA_Precision_X1_1.3.7.0.zip' -OutFile '%Fdir%\PrecisionX.zip'"
echo Extracting zip...
tar -xf "%Fdir%\PrecisionX.zip"
timeout /nobreak 2 >nul
echo Starting Installer...
for %%F in ("%Fdir%\EVGA Precision*.exe") do start "" "%%F"
goto gputwapp

:gta3
cls
echo Downloading EVGA Precision X
powershell -Command "Invoke-WebRequest -Uri 'https://dlcdnets.asus.com/pub/ASUS/Graphic%20Card/Unique_Applications/GPU-Tweak-III-v2045.zip' -OutFile '%Fdir%\AsusTweak.zip'"
echo Extracting zip...
tar -xf "%Fdir%\AsusTweak.zip"
timeout /nobreak 2 >nul
echo Starting Installer...
for %%F in ("%Fdir%\GPU Tweak*.exe") do start "" "%%F"
goto gputwapp

:: Tool installing section

:toolsinst
title Floppi's Optimizer - Optimization Tools Installer
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Optimization Tools Installer-                                             =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Options-                                                                  =-=
echo =-=                                                                            =-=
echo =-= [1] Install Mem Reduct                                                     =-=
echo =-= [2] Install Process Lasso                                                  =-=
echo =-= [3] Download Windows Privacy Dashboard                                     =-=
echo =-= [4] Download O^&O ShutUp10++                                                =-=
echo =-= [5] Download O^&O AppBuster                                                 =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [0] Go To Main Menu                                                        =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto ti1) else if '%s%'=='2' (goto ti2) else if '%s%'=='3' (goto ti3) else if '%s%'=='4' (goto ti4) else if '%s%'=='5' (goto ti5)
if not '%s%'=='0' goto toolsinst
goto startmenu

:ti1
cls
echo Downloading Mem Reduct...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/henrypp/memreduct/releases/download/v.3.5.2/memreduct-3.5.2-setup.exe' -OutFile '%Fdir%\memreduct.exe'"
timeout /nobreak 2 >nul
echo Starting Installer...
start "" memreduct.exe
timeout /nobreak 3 >nul
goto toolsinst

:ti2
cls
echo Downloading Process Lasso...
powershell -Command "Invoke-WebRequest -Uri 'https://dl.bitsum.com/files/processlassosetup64.exe' -OutFile '%Fdir%\processlasso.exe'"
timeout /nobreak 2 >nul
echo Starting App...
start "" processlasso.exe
timeout /nobreak 3 >nul
goto toolsinst

:ti3
cls
echo Downloading Windows Privacy Dashboard...
powershell -Command "Invoke-WebRequest -Uri 'https://wpd.app/get/latest.zip' -OutFile '%Fdir%\wpd.zip'"
echo Extracting zip...
tar -xf "%Fdir%\wpd.zip"
timeout /nobreak 2 >nul
echo Starting App...
for %%F in ("%Fdir%\WPD*.exe") do start "" "%%F"
timeout /nobreak 3 >nul
goto toolsinst

:ti4
cls
echo Downloading O^&O ShutUp10++...
powershell -Command "Invoke-WebRequest -Uri 'https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe' -OutFile '%Fdir%\OOSU.exe'"
timeout /nobreak 2 >nul
echo Starting App...
start "" OOSU.exe
timeout /nobreak 3 >nul
goto toolsinst


:ti5
cls
echo Downloading O^&O AppBuster...
powershell -Command "Invoke-WebRequest -Uri 'https://dl5.oo-software.com/files/ooappbuster/OOAPB.exe' -OutFile '%Fdir%\OOAB.exe'"
timeout /nobreak 2 >nul
echo Starting App...
start "" OOAB.exe
timeout /nobreak 3 >nul
goto toolsinst

:: Exit Section

:ext
cd %temp%
rd %temp%\FOptimizer /s /q
exit

:adminPerms
echo.
echo Would you like to restart script as Administrator?
echo [y] Yes   ^|   [ ] Continue
set /p s=Letter: 
if /i '%s%'=='y' (
    :: Relaunch the script with admin rights
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit
)
goto startmenu
