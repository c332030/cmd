:at 16:05 /interactive taskmgr.exe

:at 03:00 /every:M,T,W,Th,F,S,Su shutdown -s -t 30

:����һ�������죬ÿ�� 3:00 ִ�� shutdown -s -t 30




:schtasks /create /tn shut /sc daily /tr c:\windows\system32\shutdown.exe -s -t 00 /st 22:00:00
:����һ����Ϊ shut �ļƻ�����ÿ�� 22:00 ִ�� shutdown.exe -s -t 00

:schtasks  /delete /tn "" /f
:ǿ��ɾ��һ����Ϊ taskname �ļƻ�����

:schtasks  /change /tn "" /disable
:����һ����Ϊ taskname �ļƻ�����

:schtasks /delete /tn taskname /enable
:����һ����Ϊ taskname �ļƻ�����

:����Ҫʹ�� schtasks ����ƻ�����Task Scheduler����������������
:net start Schedule




:schtasks  /delete /tn "User_Feed_Synchronization-{E85933D7-67FB-4A3E-B38D-24102AE69FD0}" /f
schtasks  /change /tn "User_Feed_Synchronization-{E85933D7-67FB-4A3E-B38D-24102AE69FD0}" /disable


:VS2015����
schtasks  /change /tn "\Microsoft\VisualStudio\VSIX Auto Update 14" /disable


:Microsoft �ͻ�������Ƽƻ�
schtasks  /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
schtasks  /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks  /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks  /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable


:Windows ���ռ� SmartScreen ɸѡ�����ݵ�����
schtasks  /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable


:NTFS ��״��ɨ��
schtasks  /change /tn "\Microsoft\Windows\Chkdsk\ProactiveScan" /disable


:Office2016���
schtasks  /change /tn "\Microsoft\Office\Office Automatic Updates\VSIX Auto Update 14" /disable
schtasks  /change /tn "\Microsoft\Office\Office ClickToRun Service Monitor" /disable
schtasks  /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
schtasks  /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable


:������ִ��ʱ��ͬ��������
schtasks  /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable

:ά���������ϵ����пͻ��˺ͷ�������ʱ�������ͬ��������˷���ֹͣ��ʱ������ڵ�ͬ���������á�����˷��񱻽��ã��κ���ȷ�������ķ��񶼽�����������
schtasks  /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable



:����ʱ����Ϣ�������ֹͣ��������ĳЩʱ���ı���ʱ����ܲ�׼ȷ��
schtasks  /change /tn "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" /disable



:����ά������
schtasks  /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /disable
:������������

schtasks  /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /disable

:����ɨ������
schtasks  /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /disable

:������֤����
schtasks  /change /tn "\Microsoft\Windows\Windows Defender\Windows Defender Verification" /disable



:�Զ������û��� Windows Ӧ���̵�Ӧ�ó���
schtasks  /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable

:����Ҫʱ���� Windows ���·�����ִ�мƻ��Ĳ���(��ɨ��)��
schtasks  /change /tn "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /disable

:������ SIH �ͻ���(�������������޸�)���Ա��Ⲣ�޸��Լ�����ϰ�װ�� Windows �� Microsoft ������Զ�����������Ҫ��ϵͳ�������������������������޸������������ԡ���������ĸ�����ִ�в�������ִ���޸�������
schtasks  /change /tn "\Microsoft\Windows\WindowsUpdate\sih" /disable

:������ SIH �ͻ��ˣ��Ա�ִ�������������޸�������Ҫ��ϵͳ������Ӷ��Զ����¼�����ϰ�װ�� Windows �� Microsoft ����������ճ� SIH �ͻ��������޷�ִ�����õ���������ʱ������������ܡ�������������Զ�������������Ҳ����������������������ԡ�
schtasks  /change /tn "\Microsoft\Windows\WindowsUpdate\sihboot" /disable



:������������
schtasks  /change /tn "\Microsoft\Windows\DiskCleanup\SilentCleanup" /disable



:�����������
schtasks  /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks  /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataColl" /disable



:������Ϣ�ռ�
schtasks  /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable



:ϵͳ��������ά��
schtasks  /change /tn "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /disable



:ϵͳ��ԭ
schtasks  /change /tn "\Microsoft\Windows\SystemRestore\SR" /disable


:ϵͳ���˹���
schtasks  /change /tn "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /disable


:�Ż����ش洢��������
schtasks  /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable


:Windows �ƻ���ά������ͨ���Զ��޸������ͨ������ȫ����ά��������������Լ����ϵͳִ�ж���ά����
schtasks  /change /tn "\Microsoft\Windows\Diagnosis\Scheduled" /disable


schtasks  /change /tn "\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /disable
schtasks  /change /tn "\Microsoft\Windows\ErrorDetails\ErrorDetailsUpdate" /disable


:λ��֪ͨ
schtasks  /change /tn "\Microsoft\Windows\Location\Notifications" /disable
schtasks  /change /tn "\Microsoft\Windows\Location\WindowsActionDialog" /disable


:����ϵͳ�����ܺ͹���
schtasks  /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable


:�ѻ���ͼ����
schtasks  /change /tn "\Microsoft\Windows\Maps\MapsToastTask" /disable
schtasks  /change /tn "\Microsoft\Windows\Maps\MapsUpdateTask" /disable


:�ƶ�����ʻ�����Ԫ���ݷ�������
schtasks  /change /tn "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /disable


:��֤ Windows �ָ�������
schtasks  /change /tn "\Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /disable


:���������Ƿ�����Զ��Э����صĸ���
schtasks  /change /tn "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /disable


:�Զ����� RetailDemo �ѻ�����
schtasks  /change /tn "\Microsoft\Windows\RetailDemo\CleanupOfflineContent" /disable


:�������ƽ̨����
schtasks  /change /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /disable
schtasks  /change /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /disable
schtasks  /change /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /disable


:�洢�ռ�����
schtasks  /change /tn "\Microsoft\Windows\SpacePort\SpaceAgentTask" /disable
schtasks  /change /tn "\Microsoft\Windows\SpacePort\SpaceManagerTask" /disable


:Windows ����
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\Policy Install" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\Reboot" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\Resume On Boot" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_Display" /disable
schtasks  /change /tn "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_ReadyToReboot" /disable


:�������Զ��������û������ļ���ע������õ�Ԫ���ص�������λ�á�
schtasks  /change /tn "\Microsoft\Windows\User Profile Service\HiveUploadTask" /disable


:Windows Diagnostic Infrastructure Resolution �������ý���ʽ������������ϲ��Է����⵽��ϵͳ���⡣��Ҫʱ��ϲ��Է�������Ӧ���û��Ự�д��������������ϲ��Է���δ���У��������Ҳ��������
schtasks  /change /tn "\Microsoft\Windows\WDI\ResolutionHost" /disable


:���ڴ���Ⱥ򱨸�� Windows ���󱨸�����
schtasks  /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable


:������ɸ����û�����ý����л�����ļ����б���������ļ��İ�ȫȨ�ޡ�
schtasks  /change /tn "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable


:Windows Ӧ���̵���
schtasks  /change /tn "\Microsoft\Windows\WS\License Validation" /disable
schtasks  /change /tn "\Microsoft\Windows\WS\WSTask" /disable



:--------------------------1607---------------------------------
:schtasks  /change /tn "\Microsoft\XblGameSave\XblGameSaveTask" /disable
:schtasks  /change /tn "\Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable

:schtasks  /change /tn "" /disable