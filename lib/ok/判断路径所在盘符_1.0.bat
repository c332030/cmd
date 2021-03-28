echo.
set /p folder=�������ļ���·����

set DriveLetter=%folder:~0,2%

if %folder:~1,1%==C set DriveLetter=%folder:~1,2%

echo %DriveLetter%
pause