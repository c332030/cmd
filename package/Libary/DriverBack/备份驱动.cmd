@echo Off
Set Tools=%~dp0Tools
call :slz "%Tools%"
if not %OS%==Windows_NT (color 0c&%Tools%\sleep.exe -k -p "�˳��������Windows NT��XP���ϲ���ϵͳ������" 10&exit)
if not exist "%SystemRoot%\pchealth\helpctr\binaries\msinfo.dll" (
   %Tools%\sleep.exe -k -p "���ڸ������ھ���� Windows XP�Ĳ����ļ�..." 2
   %Tools%\msinfo.exe /s
)
%SystemRoot%\System32\regsvr32 /s "%SystemRoot%\pchealth\helpctr\binaries\msinfo.dll"  >nul 2>nul
sc config winmgmt start= auto >nul 2>nul
net start winmgmt 2>nul
for %%a in (7za.exe,Dev.sfx,Devcon.exe,Sleep.exe) do (
    dir /a-d/b %Tools%\%%a>nul 2>nul||color fc&&echo �ӳ��� %Tools%\%%a δ�ҵ������������أ�&&pause&&exit)
)
cls&color 0b&set count=0

echo �����ռ��豸��Ϣ�����Ե�...
if not exist "%~dp0Dev.Vbs" cls&color fc&echo "%~dp0Dev.Vbs"δ�ҵ���
for /f "tokens=1,2,3,4* delims=��" %%a In ('Cscript //Nologo "%~dp0Dev.Vbs" -y') do call :DevStart "%%~a" "%%~b" "%%~c" "%%~d"&set "aErr=%%~a"
if "%aErr%"=="" cls&color 0e&echo δ�����û����а�װ��������&%Tools%\sleep.exe -k -p "5 ����Զ��˳�" 5&exit
echo.
%Tools%\sleep.exe -p "��������ɣ�һ�������� %count% ���豸����" 3
exit

:DevStart
if "%~1"=="" goto:eof
if "%~1"=="1" exit
if "%~1"=="2" exit
color 0e
setlocal enabledelayedexpansion
if %count% equ 0 cls
set/p=���ڱ���--^> "%~1"<nul
%Tools%\devcon.exe Driverfiles "%~2">nul 2>nul||goto:eof
For /F "skip=1 tokens=*" %%i in ('%Tools%\devcon.exe Driverfiles "%~2"^|find ":\"') do xcopy /h/r/y %%~si "%~3" >nul 2>nul
xcopy /h/r/y "%Systemroot%\Inf\%~4" "%~3" >nul 2>nul
if errorlevel 0 set /a "count=%count%+1"
set "InfName=%~n4"
for /f "tokens=1* delims== " %%k in ('type "%Systemroot%\Inf\%InfName%.inf"^|find /i ".Cat"^|find /v "64"') do set "OemName=%%~nl"
if defined OemName (
   for /f "delims=*" %%a in ('dir /s/b/a-d "%SystemRoot%\system32\CatRoot\%InfName%.cat" 2^>nul') do set "catfile=%%~a"
   if not defined catfile for /f "delims=*" %%k in ('dir /s/b/a-d "%SystemRoot%\%OemName%.cat" 2^>nul') do set "catfile=%%~k"
)
if defined catfile (
   set "InfName=%OemName%"
   xcopy /h/r/y "%catfile%" "%~3\">nul 2>nul
   if errorlevel 0 echo 	��WHQL����ǩ��
   attrib -s -h -r "%~3\%InfName%.*">nul
   copy /y "%~3\Driver.nfo" "%~3\Driver.bak">nul 2>nul
   type "%~3\Driver.bak"|find /v "InfName=">"%~3\Driver.nfo"
   >>"%~3\Driver.nfo" echo InfName=%OemName%.inf&del "%~3\Driver.bak" 2>nul
   move /y "%~3\%InfName%.inf" "%~3\%OemName%.inf">nul 2>nul
   move /y "%~3\%InfName%.cat" "%~3\%OemName%.cat">nul 2>nul
   ) else (
   echo.
)
endlocal&set count=%count%
goto:eof

:slz
if "%~1"=="" goto:eof
set "Tools=%~s1"
goto:eof