@echo off
title ����رոô���,ϵͳ����׼����...

echo.
echo ����رոô���
echo.

takeown /f %windir%\Panther
icacls %windir%\Panther /grant administrators:F /t

rd /s /q %windir%\Panther

del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.bak
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.ftg
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.pnf
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.resources
del /f /s /q %systemdrive%\*.lrc


del /f /s /q %systemdrive%\thumbs.db
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\prefetch\*.*
del /f /q %userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.*
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\local settings\temp\*.*"

rd /s /q %windir%\temp md %windir%\temp
