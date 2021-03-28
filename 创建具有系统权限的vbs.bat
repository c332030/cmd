echo Set UAC = CreateObject^("Shell.Application"^) > getadmin.vbs
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> getadmin.vbs

pause