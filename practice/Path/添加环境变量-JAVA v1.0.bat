:@echo off


reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%~dp0bin;%Path%"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "ClassPath" /t REG_EXPAND_SZ /d ".;%~dp0lib\tools.jar;%~dp0lib\dt.jar"

pause