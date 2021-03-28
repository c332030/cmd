:@echo off


echo.
set /p JavaPath=������ JDK ��װ·����

echo %JavaPath%

pause

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%JavaPath%\bin;%Path%"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "ClassPath" /t REG_EXPAND_SZ /d ".;%JavaPath%\lib\tools.jar;%JavaPath%\lib\dt.jar"

pause