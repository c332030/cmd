@echo off
Set Tools=%~dp0Tools
call :slz "%Tools%"
for %%a in (Devcon.exe,Sleep.exe) do (
    dir /a-d/b %Tools%\%%a>nul 2>nul||color fc&&echo �ӳ��� %Tools%\%%a δ�������������أ�&&pause&&exit)
)
setlocal enabledelayedexpansion
for /f "delims=*" %%a in ('dir /s/a-d/b Driver.nfo 2^>nul') do call :Update "%%a"&set "Ini=%%a"
if not defined Ini color 0c&echo ��ȡ Drivers ��Ŀ¼�� Driver.nfo ����&%Tools%\Sleep.exe 5&exit
%Tools%\sleep.exe -k -p "10 ����Զ��˳�" 10
exit

:Update
set "FilePath=%~dp1"
for /f "tokens=*" %%i in (%~s1) do set "%%i"
color 0e
echo ���ڸ���--^> "%DeviceName%"
%Tools%\Devcon.exe update "%FilePath%%InfName%" "%HardWareID%" >nul 2>nul
if %errorlevel%==0 echo �豸�����ѳɹ����¡�&echo.
if %errorlevel%==1 echo �豸�����Ѹ��£���Ҫ���������������ã�&echo.
if %errorlevel%==2 echo ����ʧ�ܣ�ԭ��δ��ȷ�жϳ�Ӳ��ID�����޷����ʸ�Ӳ��ID��&echo.
if %errorlevel%==3 echo DevCon�﷨����&echo.
goto:eof

:slz
if "%~1"=="" goto:eof
set "Tools=%~s1"
goto:eof