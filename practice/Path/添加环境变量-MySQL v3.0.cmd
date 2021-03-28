@echo off


reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "MySQL_Home" /t REG_EXPAND_SZ /d "%~dp0\"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%%MySQL_Home%%bin;%Path%"

echo.
echo ������Ч

pause >nul