@echo off

if not exist bin (
echo.
echo δ�ҵ� bin Ŀ¼
echo.
echo ��Ѹ�������ŵ� JDK ��װĿ¼���� "C:\Program Files (x86)\Java\jdk1.7.0_79"
echo.
pause
exit
)

if not exist lib (
echo.
echo δ�ҵ� lib Ŀ¼
echo.
echo ��Ѹ�������ŵ� JDK ��װĿ¼���� "C:\Program Files (x86)\Java\jdk1.7.0_79"
echo.
pause
exit
)

echo.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%~dp0bin;%Path%"

echo.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "ClassPath" /t REG_EXPAND_SZ /d ".;%~dp0lib\tools.jar;%~dp0lib\dt.jar"

echo.
pause