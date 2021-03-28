@echo off
taskkill /f /im DrMain.exe
taskkill /f /im DrUpdate.exe
taskkill /f /im DrClient.exe

rename %systemdrive%\Drcom\DrUpdateClient\DrClient.exe DrClient3.exe

reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f /v "%systemdrive%\Drcom\DrUpdateClient\DrClient3.exe" /t REG_SZ /d "WINXPSP2"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v "Drcom2" /t REG_SZ /d "%systemdrive%\Drcom\DrUpdateClient\DrClient3.exe"

start %systemdrive%\Drcom\DrUpdateClient\DrMain.exe
start %systemdrive%\Drcom\DrUpdateClient\DrClient3.exe