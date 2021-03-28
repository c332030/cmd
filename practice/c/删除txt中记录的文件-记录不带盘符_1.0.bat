@echo off

if not exist File.txt (
echo.
echo File.txt������
pause
exit
)

rem �� File.txt ��ȡ�ļ���ɾ�������ļ�
for /f "delims=" %%i in (File.txt) do (
takeown /f  %%i >> Log.txt
icacls  %%i /grant administrators:F >> Log.txt
del /f /q %%i >> Log.txt
)