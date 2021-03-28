@echo off 
color 0a
title С������----����windows 7ϵͳ�ļ�---
:sta
cls
echo ������������������������
echo ������������������������
echo.���                                      ���
echo.���                                      ���
echo.���  �������޿���-�����ǵ����������!    ���
echo ���                                      ���
echo.���                     ���� ����С��    ���
echo ������������������������
echo ������������������������      
echo ==============================================
echo �����ļ��ڼ䣬�ٶ��ɵ����ļ���С����
echo �ھ���ǰ��ȷ���û��Ƿ���߹���Ա
echo ��û������β��Ϣʱ����رձ�����
echo ==============================================

echo    ����������ʾѡ��ִ�е������������(1-6):
echo --------1.�����Ҽ�����ԱȨ��-----------------
echo --------2.����Ҽ�����Ȩ��-------------------
echo --------3.ִ���ļ�����ԱȨ��-----------------
echo --------4.ִ��ϵͳ�ļ�����-------------------
echo --------5.ȫ�Զ�ϵͳ����(��Լ15����)---------
echo --------6.�˳����ʳ���-----------------------


set/p xg=�������:
if "%xg%"=="1" goto gl

if "%xg%"=="2" goto cgl

if "%xg%"=="3" goto qx

if "%xg%"=="4" goto cs

if "%xg%"=="5" goto ytl

if "%xg%"=="6" goto ex
:ex
exit
:gl
@echo Windows Registry Editor Version 5.00>>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\*\shell\runas]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\*\shell\runas\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\exefile\shell\runas2]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\exefile\shell\runas2\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%%1\" && icacls \"%%%1\" /grant administrators:F">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%%1\" && icacls \"%%%1\" /grant administrators:F">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\Directory\shell\runas]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\Directory\shell\runas\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t">>Sample.reg
regedit /s Sample.reg
del Sample.reg /s /q /a /f
cls
echo ��ɼ����Ҽ�����ԱȨ��,����������ؽ���..............

pause>nul&&goto sta

:cgl
@echo Windows Registry Editor Version 5.00>>clsr.reg
echo.>>clsr.reg
@echo [-HKEY_CLASSES_ROOT\*\shell\runas]>>clsr.reg
echo.>>clsr.reg
@echo [-HKEY_CLASSES_ROOT\Directory\shell\runas]>>clsr.reg
regedit /s clsr.reg
del clsr.reg /s /q /a /f
cls
echo �������Ҽ�����Ȩ��,����������ؽ���..............

pause>nul&&goto sta

:qx
takeown /f "%windir%\System32\DriverStore\FileRepository" /r /d y
icacls "%windir%\System32\DriverStore\FileRepository" /grant:r administrators:(oi)(ci)(f) /t
takeown /f "%windir%\inf" /r /d y
icacls "%windir%\inf" /grant:r administrators:(oi)(ci)(f) /t
takeown /f "%windir%\winsxs" /r /d y
icacls "%windir%\winsxs" /grant:r administrators:(oi)(ci)(f) /t
cls

echo ����ļ�����ԱȨ��,����������ؽ���..............

pause>nul&&goto sta

:cs
cd /d %windir%\System32\DriverStore\FileRepository
cd . >winsxsjs.txt& findstr /iv "." winsxsjs.txt > winsxsjs.txt
for /d %%i in (*ati*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*nv*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*brmf*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*mdm*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*ph3*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*ph6*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*wia*.inf*) do @echo %%~fi >> winsxsjs.txt
for /f "delims=" %%i in (winsxsjs.txt) do rd %%i /s /q
del winsxsjs.txt /s /q /a /f

cd /d %windir%\winsxs
cd . >winsxszh.txt& findstr /iv "." winsxszh.txt > winsxszh.txt
for /d %%i in (*ati*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*nv*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*brmf*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*mdm*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*ph3*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*ph6*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*wia*.inf*) do @echo %%~fi >> winsxszh.txt
for /f "delims=" %%i in (winsxszh.txt) do rd %%i /s /q
del winsxszh.txt /s /q /a /f

cd /d %windir%\inf
cd . >inf.txt& findstr /iv "." inf.txt > inf.txt
for /r %%i in (*ati*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*nv*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*brmf*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*mdm*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*ph3*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*ph6*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*wia*.inf*) do @echo %%~fi >> inf.txt
for /f "delims=\ tokens=4" %%i in (inf.txt) do del %%i /s /q /a /f
del inf.txt /s /q /a /f


cd /d %windir%\System32\DriverStore\FileRepository
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /f %%i in ('dir *prn*.inf* /b') do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do rd %%i /s /q
del prnms.txt /s /q /a /f

cd /d %windir%\winsxs
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /f %%i in ('dir *prn*.inf* /b') do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do rd %%i /s /q
del prnms.txt /s /q /a /f

cd /d %windir%\inf
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /r %%i in (*prn*.inf*) do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do del %%i /s /q /a /f
del prnms.txt /s /q /a /f
cls
echo ���ϵͳ�ļ�����,����������ؽ���..............

pause>nul&&goto sta


:ytl
@echo Windows Registry Editor Version 5.00>>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\*\shell\runas]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\*\shell\runas\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\exefile\shell\runas2]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\exefile\shell\runas2\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%%1\" && icacls \"%%%1\" /grant administrators:F">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%%1\" && icacls \"%%%1\" /grant administrators:F">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\Directory\shell\runas]>>Sample.reg
@echo @="����Աȡ������Ȩ">>Sample.reg
@echo "NoWorkingDirectory"="">>Sample.reg
echo.>>Sample.reg
@echo [HKEY_CLASSES_ROOT\Directory\shell\runas\command]>>Sample.reg
@echo @="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t">>Sample.reg
@echo "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t">>Sample.reg
regedit /s Sample.reg
del Sample.reg /s /q /a /f

takeown /f "%windir%\System32\DriverStore\FileRepository" /r /d y
icacls "%windir%\System32\DriverStore\FileRepository" /grant:r administrators:(oi)(ci)(f) /t
takeown /f "%windir%\inf" /r /d y
icacls "%windir%\inf" /grant:r administrators:(oi)(ci)(f) /t
takeown /f "%windir%\winsxs" /r /d y
icacls "%windir%\winsxs" /grant:r administrators:(oi)(ci)(f) /t


cd /d %windir%\System32\DriverStore\FileRepository
cd . >winsxsjs.txt& findstr /iv "." winsxsjs.txt > winsxsjs.txt
for /d %%i in (*ati*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*nv*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*brmf*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*mdm*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*ph3*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*ph6*.inf*) do @echo %%~fi >> winsxsjs.txt
for /d %%i in (*wia*.inf*) do @echo %%~fi >> winsxsjs.txt
for /f "delims=" %%i in (winsxsjs.txt) do rd %%i /s /q
del winsxsjs.txt /s /q /a /f

cd /d %windir%\winsxs
cd . >winsxszh.txt& findstr /iv "." winsxszh.txt > winsxszh.txt
for /d %%i in (*ati*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*nv*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*brmf*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*mdm*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*ph3*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*ph6*.inf*) do @echo %%~fi >> winsxszh.txt
for /d %%i in (*wia*.inf*) do @echo %%~fi >> winsxszh.txt
for /f "delims=" %%i in (winsxszh.txt) do rd %%i /s /q
del winsxszh.txt /s /q /a /f

cd /d %windir%\inf
cd . >inf.txt& findstr /iv "." inf.txt > inf.txt
for /r %%i in (*ati*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*nv*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*brmf*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*mdm*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*ph3*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*ph6*.inf*) do @echo %%~fi >> inf.txt
for /r %%i in (*wia*.inf*) do @echo %%~fi >> inf.txt
for /f "delims=\ tokens=4" %%i in (inf.txt) do del %%i /s /q /a /f
del inf.txt /s /q /a /f


cd /d %windir%\System32\DriverStore\FileRepository
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /f %%i in ('dir *prn*.inf* /b') do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do rd %%i /s /q
del prnms.txt /s /q /a /f

cd /d %windir%\winsxs
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /f %%i in ('dir *prn*.inf* /b') do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do rd %%i /s /q
del prnms.txt /s /q /a /f

cd /d %windir%\inf
cd . >prnms.txt& findstr /iv "." prnms.txt > prnms.txt
for /r %%i in (*prn*.inf*) do @echo %%~fi >> prnms.txt
for /f %%i in ('dir *prnms*.inf* /b') do findstr /iv %%i prnms.txt > rnms.txt&move /y rnms.txt prnms.txt
for /f "delims=" %%i in (prnms.txt) do del %%i /s /q /a /f
del prnms.txt /s /q /a /f
cls
echo ϵͳ�������.....

pause>nul&&goto sta
