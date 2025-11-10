@echo off
md %temp%\FOptimizer
cd %temp%\FOptimizer
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
echo =-= [5] Windows Update Options                                                 =-=
echo =-= [6] Windows 10 Specific Tweaks                                             =-=
echo =-= [7] Windows 11 Specific Tweaks                                             =-=
echo =-= [8] Graphics\GPU Tweaking Apps                                             =-=
echo =-= [9] Optimization Tools App Installers                                      =-=
echo =-=                                                                            =-=
echo =-=                                                                            =-=
echo =-= [!] Restart System For Best Results                                        =-=
echo =-=                                                                            =-=
echo =-= [0] Exit Script (Cleans Temporary Files)                                   =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
set /p s=Number: 
if '%s%'=='1' (goto sysopt) else if '%s%'=='2' (goto useropt) else if '%s%'=='3' (goto privtw) else if '%s%'=='4' (goto userint) else if '%s%'=='5' (goto wuopt) else if '%s%'=='6' (goto w10st) else if '%s%'=='7' (goto w11st) else if '%s%'=='8' (goto gputwapp) else if '%s%'=='9' (goto toolsinst)
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
echo =-= -Categories-                                                               =-=
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
echo =-= -Categories-                                                               =-=
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

:: User Optimizations Section

:useropt
title Floppi's Optimizer - User Optimizations
set s=
cls
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Floppi's Optimizer =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -User Optimizations-                                                       =-=
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo =-= -Categories-                                                               =-=
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



:privtw
title Floppi's Optimizer - Privacy Tweaks
cls
pause
goto startmenu



:userint
title Floppi's Optimizer - User Interface Settings
cls
pause
goto startmenu



:wuopt
title Floppi's Optimizer - Windows Update Options
cls
pause
goto startmenu



:w10st
title Floppi's Optimizer - Windows 10 Specific Tweaks
cls
pause
goto startmenu



:w11st
title Floppi's Optimizer - Windows 11 Specific Tweaks
cls
pause
goto startmenu



:gputwapp
title Floppi's Optimizer - Graphics\GPU Tweaking Apps
cls
pause
goto startmenu



:toolsinst
title Floppi's Optimizer - Optimization Tools App Installer
cls
pause
goto startmenu

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
