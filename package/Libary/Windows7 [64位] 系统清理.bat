@shift
title [��ͨ��] Windows7 [64λ] ϵͳ���� [С������]
@echo off
:main
cls           
echo  ------------------------------------------------------------------------------
echo         [��ͨ��] Windows7 [64λ] ϵͳ���� [С������] 
echo  ------------------------------------------------------------------------------
echo   ��ǿ��������.��ǿ�Ż����棬�޸���һ�汾BUG��
echo.
echo  ------------------------------------------------------------------------------
echo                     [windows7 64λ]                      �汾�ţ�[beta]2.0.14.0
echo  ------------------------------------------------------------------------------
echo.
echo              [1] -  ����ϵͳ��������Сϵͳռ�ÿռ�
echo              [2] -  ����ע��IE 9���
echo              [3] -  ̨ʽ����/�Ż�ϵͳ����
echo              [4] -  �ʼǱ�����/�Ż�ϵͳ����
echo              [5] -  DNS���á�LSP�޸�
echo              [6] -  ����ϵͳͼ�껺��
echo              [0] -  �˳�
echo.
echo                     11��1�շ���14�汾�������ڴ���
echo.
echo                                              [��ͨ��]  �����2012��9��28��18:40
echo  ------------------------------------------------------------------------------
echo                                                     ����Dos����ӿ�Ч�ʣ���Bat��
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
pause
goto main

:end
exit

:main1
cls
echo windows 7�����������������������Ե�......
powercfg -h off
del /f /s /q %systemdrive%\*.log 2>nul
del /f /s /q %systemdrive%\*.bak 2>nul 
del /f /s /q %systemdrive%\*.chk 2>nul
del /f /s /q %systemdrive%\*.tmp 2>nul
del /f /s /q %systemdrive%\*._mp 2>nul
del /f /s /q %systemdrive%\*.ftg 2>nul
del /f /s /q %systemdrive%\*.gid 2>nul
del /f /s /q %systemdrive%\*.pnf 2>nul
del /f /s /q %systemdrive%\*.old 2>nul
del /f /s /q %systemdrive%\*.$$$ 2>nul
del /f /s /q %systemdrive%\*.@@@ 2>nul
del /f /s /q %systemdrive%\*.syd 2>nul
del /f /s /q %systemdrive%\*.gts 2>nul
del /f /s /q %systemdrive%\thumbs.db 2>nul
rd /s /q %windir%\temp md %windir%\temp 2>nul
del /f /s /q %systemdrive%\recycled\*.* 2>nul
del /f /s /q %windir%\prefetch\*.* 2>nul
del /f /q %userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.* 2>nul
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*" 2>nul
cls
d:
cd\
echo windows 7���������������������������е������ļ�...
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
regsvr32 actxprxy.dll /s 
regsvr32 shdocvw.dll /s 
Regsvr32 URLMON.DLL /s 
Regsvr32 actxprxy.dll /s 
Regsvr32 shdocvw.dll /s 
regsvr32 oleaut32.dll /s 
rundll32.exe advpack.dll /DelNodeRunDLL32 C:\WINNT\System32\dacui.dll 
rundll32.exe advpack.dll /DelNodeRunDLL32 C:\WINNT\Catroot\icatalog.mdb 
regsvr32 setupwbv.dll /s 
regsvr32 wininet.dll /s 
regsvr32 comcat.dll /s 
regsvr32 shdoc401.dll /s 
regsvr32 shdoc401.dll /i /s 
regsvr32 asctrls.ocx /s 
regsvr32 oleaut32.dll /s 
regsvr32 shdocvw.dll /I /s 
regsvr32 shdocvw.dll /s 
regsvr32 browseui.dll /s 
regsvr32 browseui.dll /I /s 
regsvr32 msrating.dll /s 
regsvr32 mlang.dll /s 
regsvr32 hlink.dll /s 
regsvr32 mshtml.dll /s 
regsvr32 mshtmled.dll /s 
regsvr32 urlmon.dll /s 
regsvr32 plugin.ocx /s 
regsvr32 sendmail.dll /s 
regsvr32 comctl32.dll /i /s 
regsvr32 inetcpl.cpl /i /s 
regsvr32 mshtml.dll /i /s 
regsvr32 scrobj.dll /s 
regsvr32 mmefxe.ocx /s 
regsvr32 proctexe.ocx mshta.exe /s 
regsvr32 corpol.dll /s 
regsvr32 jscript.dll /s 
regsvr32 msxml.dll /s 
regsvr32 imgutil.dll /s 
regsvr32 thumbvw.dll /s 
regsvr32 cryptext.dll /s 
regsvr32 rsabase.dll /s 
regsvr32 triedit.dll /s 
regsvr32 dhtmled.ocx /s 
regsvr32 inseng.dll /s 
regsvr32 iesetup.dll /i /s 
regsvr32 hmmapi.dll /s 
regsvr32 cryptdlg.dll /s 
regsvr32 actxprxy.dll /s 
regsvr32 dispex.dll /s 
regsvr32 occache.dll /s 
regsvr32 occache.dll /i /s 
regsvr32 iepeers.dll /s 
regsvr32 wininet.dll /i /s 
regsvr32 urlmon.dll /i /s 
regsvr32 digest.dll /i /s 
regsvr32 cdfview.dll /s 
regsvr32 webcheck.dll /s 
regsvr32 mobsync.dll /s 
regsvr32 pngfilt.dll /s 
regsvr32 licmgr10.dll /s 
regsvr32 icmfilter.dll /s 
regsvr32 hhctrl.ocx /s 
regsvr32 inetcfg.dll /s 
regsvr32 trialoc.dll /s 
regsvr32 tdc.ocx /s 
regsvr32 MSR2C.DLL /s 
regsvr32 msident.dll /s 
regsvr32 msieftp.dll /s 
regsvr32 xmsconf.ocx /s 
regsvr32 ils.dll /s 
regsvr32 msoeacct.dll /s 
regsvr32 wab32.dll /s 
regsvr32 wabimp.dll /s 
regsvr32 wabfind.dll /s 
regsvr32 oemiglib.dll /s 
regsvr32 directdb.dll /s 
regsvr32 inetcomm.dll /s 
regsvr32 msoe.dll /s 
regsvr32 oeimport.dll /s 
regsvr32 msdxm.ocx /s 
regsvr32 dxmasf.dll /s 
regsvr32 laprxy.dll /s 
regsvr32 l3codecx.ax /s 
regsvr32 acelpdec.ax /s 
regsvr32 mpg4ds32.ax /s 
regsvr32 voxmsdec.ax /s 
regsvr32 danim.dll /s 
regsvr32 Daxctle.ocx /s 
regsvr32 lmrt.dll /s 
regsvr32 datime.dll /s 
regsvr32 dxtrans.dll /s 
regsvr32 dxtmsft.dll /s 
regsvr32 vgx.dll /s 
regsvr32 WEBPOST.DLL /s 
regsvr32 WPWIZDLL.DLL /s 
regsvr32 POSTWPP.DLL /s 
regsvr32 CRSWPP.DLL /s 
regsvr32 FTPWPP.DLL /s 
regsvr32 FPWPP.DLL /s 
regsvr32 FLUPL.OCX /s 
regsvr32 wshom.ocx /s 
regsvr32 wshext.dll /s 
regsvr32 vbscript.dll /s 
regsvr32 scrrun.dll mstinit.exe /setup /s 
regsvr32 msnsspc.dll /SspcCreateSspiReg /s 
regsvr32 msapsspc.dll /SspcCreateSspiReg /s 
goto main100

:main3
cls
echo.
echo.
echo.
echo      ===========================
echo           ��1�� - ���ݷ���
echo. 
echo           ��2�� - �Ż�����
echo. 
echo           ��0��- �˳�
echo      =========================== 
echo.
echo.
echo.
echo        win7̨ʽ�Ż��������������������
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
echo         win7̨ʽ�Ż����������������ڱ���,���Ե�...
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
echo win7̨ʽ�Ż�����������������ѱ��ݵ�:
echo     %FILENAME%
echo.
echo �����������...&pause >nul
goto main3
:yhser
cls
echo win7̨ʽ�Ż������������������Ż�����
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
goto main

:main4
cls
echo.
echo.
echo.
echo      ===========================
echo           ��1�� - ���ݷ���
echo. 
echo           ��2�� - �Ż�����
echo. 
echo           ��0�� - �˳�
echo      =========================== 
echo.
echo.
echo.
echo        win7�ʼǱ��Ż��������������������
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
echo         win7�ʼǱ��Ż����������������ڱ���,���Ե�...
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
echo win7�ʼǱ��Ż�����������������ѱ��ݵ�:
echo     %FILENAME%
echo.
echo �����������...&pause >nul
goto main3
:yhser
cls
echo win7�ʼǱ��Ż������������������Ż�����
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
sc config   wmiApSrv start= demand
sc config   WMPNetworkSvc start= demand
sc config   wscsvc start= auto
sc config   wuauserv start= demand
sc config   wudfsvc start= demand
sc config   WinDefend start= demand
goto main

:main5
cls
ipconfig /flushdns
netsh int ip reset
netsh winsock reset
goto main

:main6
cls
rem �ر�Windows��ǳ���explorer

taskkill /f /im explorer.exe

rem ����ϵͳͼ�껺�����ݿ�

attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"

del /f "%userprofile%\AppData\Local\IconCache.db"

attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"

del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"

rem ���� ϵͳ���̼����ͼ��

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream

rem ����Windows��ǳ���explorer

start explorer
goto main








:main100
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

