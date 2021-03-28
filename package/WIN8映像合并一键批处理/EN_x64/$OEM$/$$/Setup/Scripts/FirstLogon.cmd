@echo off
set path=%SystemRoot%\ShutDown8.exe
set name="Shutdown options"
set m=%USERPROFILE%\Desktop\%name%.url
echo [InternetShortcut] >>%m%
echo URL="%path%" >>%m%
echo IconIndex=81 >>%m%
echo IconFile=%SystemRoot%\system32\imageres.dll >>%m%

set path1=%SystemRoot%\system32\gpedit.msc
set name1=Gpedit
set m1=%USERPROFILE%\Desktop\%name1%.url
echo [InternetShortcut] >>%m1%
echo URL=%path1% >>%m1%
echo IconIndex=73 >>%m1%
echo IconFile=%SystemRoot%\system32\imageres.dll >>%m1%

del %SystemRoot%\Panther\unattend.xml /f /q >nul
del %0


