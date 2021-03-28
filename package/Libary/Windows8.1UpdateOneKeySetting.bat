@ECHO off
TITLE Windows 8.1 Update һ���Ż�����
COLOR 0a

set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO setting
) else (
GOTO admin
)

:setting
echo.
echo.
echo.
echo.
ECHO                              һ���Ż����Ͽ�ʼ��
echo.
echo                          �����˳�360�Ȱ�ȫ�������
echo.
echo                        �벻Ҫ���ִ�й����еġ�ʧ�ܡ�
echo.
ECHO                              �޷��ָ��������ģ�
echo.
echo                              �벻Ҫ��;�ر�Ŷ��
echo.
echo                              ��Ȼ�㶮��......
echo.
ECHO                              ���������
echo.
ECHO                            ���������ʼһ���Ż���
pause>nul


echo �Ż���ʼ

echo ����ֹͣ��������
sc stop WMPNetworkSvc
ping -n 3 127.0.0.1>nul
sc stop wsearch
sc config WMPNetworkSvc start= disabled
sc config wsearch start= disabled
echo ���


ECHO ��ֹwindow���ʹ��󱨸�
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /d 1 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /d 0 /t REG_DWORD /f
echo ���

ECHO �ر�Windows Defender
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
echo ���

ECHO �ر�Windows����ǽ
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /d 0 /t REG_DWORD /f
sc stop MpsSvc
sc config MpsSvc start=disabled
echo ���

ECHO ������Դ�ƻ��������ܡ�
powercfg.exe -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo ���

ECHO �ر��û��˻�����(UAC)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /d 0 /t REG_DWORD /f
echo ���

ECHO �Ƴ��Ҽ��˵��е�SkyDrive Pro
reg delete "HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\SPFS.ContextMenu" /f
echo ���

ECHO ��������ƻ�����������
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\SkyDrive\Routine Maintenance Task"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\SkyDrive\Idle Sync Maintenance Task"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\Diagnosis\Scheduled"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\Defrag\ScheduledDefrag"
SCHTASKS /Change /DISABLE /TN "\GoogleUpdateTaskMachineUA"
SCHTASKS /Change /DISABLE /TN "\GoogleUpdateTaskMachineCore"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn"
SCHTASKS /Change /DISABLE /TN "\AdobeAAMUpdater-1.0-%computername%-%username%"
SCHTASKS /Change /DISABLE /TN "\Microsoft\Office\Office 15 Subscription Heartbeat"
echo ���

ECHO ��ֹ���м�����Զ�ά���ƻ�
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /d 0 /t REG_DWORD /f
echo ���

:next4
ECHO �رճ������������
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /d 1 /t REG_DWORD /f
sc stop PcaSvc
sc config PcaSvc start= disabled
echo ���

ECHO ��ֹһ�����ʹ������
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /d 1 /t REG_DWORD /f
echo ���

ECHO ������ʾ����̨���ԡ�
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /t REG_DWORD /f
echo ���

ECHO �ӳ����� Superfetch ����
sc config "SysMain" start= delayed-auto
echo ���

ECHO �ر� IPv6
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TCPIP6\Parameters" /v "DisabledComponents" /d 255 /t REG_DWORD /f
echo ���

ECHO �رտͻ�������Ƽƻ�
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /d 0 /t REG_DWORD /f
echo ���

ECHO ���ز�����������������
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAHealth" /d 1 /t REG_DWORD /f
echo ���

ECHO �ر��Զ�����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /d 255 /t REG_DWORD /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /d 255 /t REG_DWORD /f
echo ���

ECHO �ر�SmartscreenӦ��ɸѡ��
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /d off /t REG_SZ /f
echo ���

ECHO ������������ʾ�����ڼ���
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /d "yyyy'��'M'��'d'��', dddd" /t REG_SZ /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "yyyy/M/d/ddd" /t REG_SZ /f
echo ���

ECHO ����ϵͳ�Դ��������浽����
rd /s /q %userprofile%\pictures\Screenshots
mklink /j %userprofile%\pictures\Screenshots %userprofile%\desktop
echo ���

ECHO �رմ�����Ƭ����ƻ�
SCHTASKS /Change /DISABLE /TN "\Microsoft\Windows\Defrag\ScheduledDefrag"
echo ���

ECHO ȥ��UACС����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
del "%userprofile%\AppData\Local\iconcache.db" /f /q
echo ���

echo ��IE����׷�ٹ���(Do Not Track)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "DoNotTrack" /d "1" /t REG_DWORD /f
taskkill /f /im iexplore.exe
ECHO ���

gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer

COLOR 0a
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                          ��ϲ��ȫ���Ż������Ѿ�ִ�����
echo.
echo.
echo.
echo                              ���������Ϸ���������¼
echo.
echo.
echo.
echo                               ���������������ϵͳ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause>nul
shutdown -r -t 0

:admin
CLS
COLOR 0a
MODE con: COLS=30 LINES=8
ECHO ����ʧ�ܡ�
echo ���Ҽ����Թ���Ա������С�
ECHO ��������˳�...
PAUSE >nul
exit
