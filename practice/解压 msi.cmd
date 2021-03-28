@echo off

echo.
set /p msiPath=������ msi �ļ�·����

echo.
set /p exPath=�������ѹ·����

echo.
msiexec /a %msiPath% /qb TARGETDIR=%exPath%

pause >nul