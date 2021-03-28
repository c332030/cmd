@echo off
::�������������ļ��н��д���

echo.
set /p folder=�������ļ���·����


rem �����ļ��� File.txt

for /r %folder% %%i in (*.*) do (
fsutil hardlink list "%%i" >> File.txt
)



rem �ж�·�������̷�

if %folder:~1,2%==C: (
set DriveLetter=%folder:~1,2%
) else (
set DriveLetter=%folder:~0,2%
)



rem �� File.txt ��ȡ�ļ���ɾ�������ļ�

for /f "delims=" %%i in (File.txt) do (
takeown /f  "%DriveLetter%%%i" >> Log.txt
icacls  "%DriveLetter%%%i" /grant administrators:F >> Log.txt
echo.
del /f /q "%DriveLetter%%%i" 2>> Log.txt
)