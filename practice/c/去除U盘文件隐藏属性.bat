@echo off

echo.
echo ���Ҽ��Թ���ԱȨ������!
echo.
set /p Drive=������U���̷�:

%Drive%:

attrib /s /d -s -h

del /f /s /q *.lnk
del /s /s /q *.vbs

pause