:@echo off
::����Ҫ������ļ����ٽ��д���

echo.
set backup=%~dp0

echo.
set /p folder=�������ļ���·����

rem ����ϵͳ�����̷�����""ʱ
%folder:~0,2%
%folder:~1,2%

rem ��
cd %folder%

rem �����ļ��� File.txt
for /r . %%i in (*.*) do (
fsutil hardlink list "%%i" >> File.txt
)

rem �� File.txt ��ȡ�ļ���ɾ�������ļ�
for /f "delims=" %%i in (File.txt) do (
takeown /f  %~d0%%i >> %backup%Log.txt
icacls  %~d0%%i /grant administrators:F >> %backup%Log.txt
del /f /q %~d0%%i >> %backup%Log.txt
)

rem �ƶ��ļ���������Ŀ¼
move File.txt %backup%