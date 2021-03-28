::@echo off

if not exist bin (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%~dp0;%Path%"
) else (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%~dp0bin;%Path%"
)

pause