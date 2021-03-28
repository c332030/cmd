@echo off & color 1a
set pp=WanDrv.exe
title ����%pp%
echo.
set /p=���ڲ��� <nul
for %%i in (H I J K L M N O P Q R S T U V W X Y Z G F E D C)do (
  if exist %%i:\  (
     cd /d %%i:\
     set /p=%%i: <nul
     for /f "delims=" %%j in ('dir /b /a -d /s "%pp%" 2^>nul')do (
        echo.
        echo ��%%~fj�ҵ�%pp%,׼��������       
        start /wait "" "%%~fj"
        exit /b
)))
cls
echo.
echo δ�ҵ�%pp%,��������˳�...
pause >nul