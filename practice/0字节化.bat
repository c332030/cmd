@echo off

echo.
set /p Folder=��������Ҫ 0 �ֽڻ����ļ��У�

echo.

for /r %Folder% %%i in (*.*) DO type nul > %%i


pause >nul
