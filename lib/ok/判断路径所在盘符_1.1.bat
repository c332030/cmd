echo.
set /p folder=�������ļ���·����



if %folder:~1,1%==C (
set DriveLetter=%folder:~1,2%
) else (
set DriveLetter=%folder:~0,2%
)

echo %DriveLetter%
pause