@echo off

if not exist File.txt (
echo.
echo File.txt������
pause
exit
) else (
echo.
echo �뽫��������� File.txt ������ϵͳ�����̷�
pause
)

rem �� File.txt ��ȡ�ļ���ɾ�������ļ�
for /f "delims=" %%i in (File.txt) do (
takeown /f  %~d0%%i >> Log.txt
icacls  %~d0%%i /grant administrators:F >> Log.txt
del /f /q %~d0%%i >> Log.txt
)