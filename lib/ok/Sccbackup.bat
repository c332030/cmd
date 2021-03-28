takeown /f %windir%\winsxs\Backup
icacls %windir%\winsxs\Backup /grant administrators:F /t
for /r %windir%\winsxs\Backup %%i in (*.*) DO (
takeown /f  %%i
icacls  %%i /grant administrators:F
type nul > %%i
)
del %0
exit
