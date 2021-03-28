@echo off

echo.
set /p Tmp=�������̷���

icacls "%Tmp%:\System Volume Information" /grant administrators:F /t
rd /s /q "%Tmp%:\System Volume Information"

:pause