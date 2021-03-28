echo.
set /p folder=�������ļ���·����



if %folder:~2,2%==:\ (
set DriveLetter=%folder:~1,2%
) else (
set DriveLetter=%folder:~0,2%
)

echo %DriveLetter%
pause