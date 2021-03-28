Win7�Ż�
1 - ����win7ϵͳ����
2 - �޸���ͼƬ����
3 - ����explorer����
4 - ��ʱ�ػ�/ȡ���ػ�
5 - �����������ʷͼ��
6 - ȥ����ݷ�ʽС��ͷ
7 - �ָ���ݷ�ʽС��ͷ
8 - ����/�Ż�ϵͳ����
9 - ���ͼƬλ�������ļ���

mode con cols=35 lines=20
title win7 ������
@echo off
color 3f 
:main
cls
echo.  	     
echo        ������������������������
echo        ح  win7  �ռ�������  ح
echo        ح====================ح 
echo        ح  ������     �� ��  ح
echo        ������������������������
echo. 
echo      1 - ����win7ϵͳ����
echo      2 - �޸���ͼƬ����
echo      3 - ����explorer����
echo      4 - ��ʱ�ػ�/ȡ���ػ�
echo      5 - �����������ʷͼ��
echo      6 - ȥ����ݷ�ʽС��ͷ
echo      7 - �ָ���ݷ�ʽС��ͷ
echo      8 - ����/�Ż�ϵͳ����
echo      9 - ���ͼƬλ�������ļ���
echo      0 - �˳� 
echo.
echo.
set choice=
set /p choice=������[���+�س�]:
if /i '%choice%'=='1' goto main1
if /i '%choice%'=='2' goto main2
if /i '%choice%'=='3' goto main3
if /i '%choice%'=='4' goto main4
if /i '%choice%'=='5' goto main5
if /i '%choice%'=='6' goto main6
if /i '%choice%'=='7' goto main7
if /i '%choice%'=='8' goto main8
if /i '%choice%'=='9' goto main9
if /i '%choice%'=='0' goto end
cls
echo 
echo.
pause
goto main

:end
exit

:main1
cls
echo ��������ϵͳ���е������ļ�...
del /f /s /q %systemdrive%\*.log 2>nul
del /f /s /q %systemdrive%\*.bak 2>nul 
del /f /s /q %systemdrive%\*.chk 2>nul
del /f /s /q %systemdrive%\*.tmp 2>nul
del /f /s /q %systemdrive%\*._mp 2>nul
del /f /s /q %systemdrive%\*.ftg 2>nul
del /f /s /q %systemdrive%\*.gid 2>nul
del /f /s /q %systemdrive%\*.pnf 2>nul
del /f /s /q %systemdrive%\thumbs.db 2>nul
rd /s /q %windir%\temp md %windir%\temp 2>nul
del /f /s /q %systemdrive%\recycled\*.* 2>nul
del /f /s /q %windir%\prefetch\*.* 2>nul
del /f /q %userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.* 2>nul
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*" 2>nul
echo �� һ
echo ɾ����ʱ�ļ�
echo.
echo **********************************
echo.
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
rd /s /q %windir%\temp & md %windir%\temp
del /f /s /q "%userprofile%\local settings\temp\*.*" 
del /f /s /q %windir%\prefetch\*.* 
echo.
echo **********************************
echo.
echo �� ��
echo ɾ����־�ļ�
echo ɾ�����������ļ�
echo ɾ������ɨ�����µ���ʱ�ļ�
echo ɾ�������ļ�
echo ɾ���ɱ����ļ�
echo.
echo **********************************
echo.
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %windir%\*.bak 
del /f /s /q %systemdrive%\*.old 
echo.
echo **********************************


echo.
echo �� ��
echo ɾ���Զ����º����µ����
echo.
echo **********************************
echo.
rd /s /q %windir%\SoftwareDistribution\Download & md %windir%\SoftwareDistribution\Download
echo.

echo **********************************
echo.
echo �� ��
echo ɾ��������������ʱ�ļ�
echo.
echo **********************************
echo.
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
echo.
echo **********************************
echo.
echo �� ��
echo ����˽������
echo.
echo **********************************
echo.
del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*" 
echo.

cls
d:
cd\
echo ���������������е������ļ�...
del /f /s /q *.log 2>nul
del /f /s /q *.tmp 2>nul
del /f /s /q thumbs.db 2>nul
e:
cd\
del /f /s /q *.log 2>nul
del /f /s /q *.tmp 2>nul
del /f /s /q thumbs.db 2>nul
f:
cd\
del /f /s /q *.log 2>nul
del /f /s /q *.tmp 2>nul
del /f /s /q thumbs.db 2>nul
g:
cd\
del /f /s /q *.log 2>nul
del /f /s /q *.tmp 2>nul
del /f /s /q thumbs.db 2>nul
goto main

:main2
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo           �����޸�,���Ե�... 
echo.           
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
del %windir%\system32\spool\drivers\color\CalibratedDisplayProfile-?.icc >nul 2>nul 
ping localhost -n 3 >nul 2>nul
goto main

:main3
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo   explorer����������,����رճ���...
echo.           
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
taskkill /f /im Explorer.exe >nul 2>nul
ping localhost -n 3 >nul 2>nul
start "explorer.exe" "%windir%\explorer.exe"
goto main

:main4
cls
set hour=%time:~0,2%
set min=%time:~3,2%
echo  ������������������������������������ 
echo  ح                                ح
echo  ح    %date% %hour%ʱ%min%��    ح
echo  ح                                ح
echo  ������������������������������������
echo.
echo.
echo.
echo.
echo      ===========================
echo            1 - ��ʱ�ػ�
echo            2 - ȡ���ػ�
echo            0 - �˳�
echo      ===========================
echo.
echo.
echo.        
echo.
set ver0=
set /p ver0=������[���+�س�]:
if /i "%ver0%"=="1" goto powerdown
if /i "%ver0%"=="2" goto giveup
if /i "%ver0%"=="0" goto exitd
cls
echo.
echo.
echo   ���Ҫ��21:30�ػ�,�����ʽ:
echo.   
echo   ������ʱ:21
echo   �������:30
echo.
echo.
echo   ����ȷ����ʱ��,������ܲ��ܳɹ�ִ��!
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto main4
:exitd
goto main
:powerdown
cls
echo  ������������������������������������ 
echo  ح                                ح
echo  ح    %date% %hour%ʱ%min%��    ح
echo  ح                                ح
echo  ������������������������������������
echo.
echo.
echo.
echo [24ʱ��]
set /p time1=������ʱ: 
set /p time2=�������:
echo.
if /i "%time1%"=="" goto powerdown
if /i "%time2%"=="" goto powerdown
at %time1%:%time2% shutdown -s -t 0 >nul
echo.
echo ���ĵ��Խ���%time1%:%time2%ʱ�̹ر�
echo.
echo �ڹػ�֮ǰ,��������ʱȡ���ػ��ƻ�
echo.
echo.
echo.
pause
goto main
:giveup
cls
at /del /yes
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    �ػ��ƻ��Ѿ�ȡ��,�����������...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
pause >nul
goto main

:main5
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream /f
goto main3

:main6
copy Empty.ico %systemdrive%\windows >nul
@echo Windows Registry Editor Version 5.00>>D:\tmp.reg
@echo [HKEY_CLASSES_ROOT\piffile]>>D:\tmp.reg
@echo "IsShortcut"="">>D:\tmp.reg 
@echo [HKEY_CLASSES_ROOT\lnkfile]>>D:\tmp.reg
@echo "IsShortcut"="">>D:\tmp.reg
@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons]>>D:\tmp.reg
@echo "29"="C:\\Windows\\Empty.ico,0">>D:\tmp.reg
regedit/s D:\tmp.reg
del D:\tmp.reg
goto main3

:main7
@echo Windows Registry Editor Version 5.00>>D:\tmp.reg
@echo [HKEY_CLASSES_ROOT\piffile]>>D:\tmp.reg
@echo "IsShortcut"="">>D:\tmp.reg 
@echo [HKEY_CLASSES_ROOT\lnkfile]>>D:\tmp.reg
@echo "IsShortcut"="">>D:\tmp.reg
@echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons]>>D:\tmp.reg
regedit/s D:\tmp.reg
del D:\tmp.reg
del %windir%\Empty.ico
goto main3

:main8
cls
echo.
echo.
echo.
echo      ===========================
echo            1 - ���ݷ���
echo. 
echo            2 - �Ż�����
echo. 
echo            0 - �˳�
echo      =========================== 
echo.
echo.
echo.
echo        �������Ż�֮ǰ��������
echo.
echo.
echo.
echo.
echo.
set ver1=
set /p ver1=������[���+�س�]:
if /i "%ver1%"=="1" goto bfser
if /i "%ver1%"=="2" goto yhser
if /i "%ver1%"=="0" goto exitser
:exitser
goto main
:bfser
cls
echo.
echo ���ڱ��ݷ���,����Ż��������������Լ�ʱ
echo �ָ�.���ݻ�����һ���Ե�ǰʱ������������
echo ���ļ�,�ָ�ʱֻҪ˫������.
rem  get current date and time
for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=srv_%%j_%%k_%%l_%%m
for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.bat
rem get all service name
sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt
echo.
echo.
echo.
echo         ���ڱ���,���Ե�...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
rem save service start state into batch file 
echo @echo Restore The Service Start State Saved At %TIME% %DATE% >"%FILENAME%" 
echo @pause >>"%FILENAME%"
for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in ( tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")
echo @pause >>"%FILENAME%"
del tmpsrv.txt
del tmpstype.txt
echo �����ѱ��ݵ�:
echo     %FILENAME%
echo.
echo �����������...&pause >nul
goto main8
:yhser
cls
sc config   AxInstSV= demand
sc config   ALG start= demand
sc config   AppMgmt start= demand
sc config   AudioEndpointBuilder start= auto
sc config   Audiosrv start= auto
sc config   BFE start= auto
sc config   BITS start= demand
sc config   Browser start= demand
sc config   CertPropSvc start= demand
sc config   clr_optimization_v2.0.50727_32 start= demand
sc config   COMSysApp start= demand
sc config   CryptSvc start= auto
sc config   DcomLaunch start= auto
sc config   Dhcp start= auto
sc config   Dnscache start= auto
sc config   dot3svc start= demand
sc config   EapHost start= demand
sc config   EventSystem start= auto
sc config   fdPHost start= demand
sc config   FDResPub start= demand
sc config   FontCache3.0.0.0 start= demand
sc config   gpsvc start= auto
sc config   hidserv start= demand
sc config   hkmsvc start= demand
sc config   idsvc start= demand
sc config   IKEEXT start= demand
sc config   IPBusEnum start= demand
sc config   KeyIso start= demand
sc config   LanmanServer start= auto
sc config   LanmanWorkstation start= auto
sc config   lltdsvc start= demand
sc config   lmhosts start= auto
sc config   MMCSS start= auto
sc config   MpsSvc start= auto
sc config   msiserver start= demand
sc config   napagent start= demand
sc config   Netlogon start= demand
sc config   Netman start= demand
sc config   netprofm start= auto
sc config   NetTcpPortSharing start= disabled
sc config   NlaSvc start= auto
sc config   nsi start= auto
sc config   PlugPlay start= auto
sc config   ProfSvc start= auto
sc config   RasAuto start= demand
sc config   RasMan start= demand
sc config   RemoteAccess start= disabled
sc config   RpcLocator start= demand
sc config   RpcSs start= auto
sc config   SamSs start= auto
sc config   SCardSvr start= demand
sc config   SCPolicySvc start= demand
sc config   SENS start= auto
sc config   SharedAccess start= disabled
sc config   SNMPTRAP start= demand
sc config   SSDPSRV start= demand
sc config   SstpSvc start= demand
sc config   SysMain start= auto
sc config   TapiSrv start= demand
sc config   TBS start= demand
sc config   Themes start= auto
sc config   THREADORDER start= demand
sc config   TrustedInstaller start= demand
sc config   upnphost start= demand
sc config   UxSms start= auto
sc config   vds start= demand
sc config   W32Time start= demand
sc config   wcncsvc start= demand
sc config   WcsPlugInService start= demand
sc config   WinHttpAutoProxySvc start= demand
sc config   Winmgmt start= auto
sc config   Wlansvc start= demand
sc config   wmiApSrv start= demand
sc config   WMPNetworkSvc start= demand
sc config   wscsvc start= auto
sc config   wuauserv start= demand
sc config   wudfsvc start= demand
sc config   WinDefend start= demand
goto main8

:main9
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo           ��������,���Ե�...
echo.           
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Windows Registry Editor Version 5.00>>d:\tmp.reg
echo [-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers\Images]>>d:\tmp.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers\Images]>>d:\tmp.reg
regedit /s d:\tmp.reg
del d:\tmp.reg
ping localhost -n 3 >nul 2>nul
goto main
