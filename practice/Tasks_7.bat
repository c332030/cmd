::schtasks �����޷���������Դ

::936����GBK����Ļ�
::schtasks.exe /query �ᱨ�� 
::����:: �޷���������Դ��

::���� 936 Ϊ 437 �������� ��������У������޷���ӡ����ascii�ַ�������ascii�ַ�����?.
::�ʺ�"?"��

::�鿴cmd ����
::chcp

::chcp 437



::schtasks  /change /tn "" /disable


::ά���������ϵ����пͻ��˺ͷ�������ʱ�������ͬ��������˷���ֹͣ��ʱ������ڵ�ͬ���������á�����˷��񱻽��ã��κ���ȷ�������ķ��񶼽�����������
schtasks  /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable


::This task uploads Customer Experience Improvement Program (CEIP) data for Portable Devices
::schtasks  /change /tn "\WPD\SqmUpload_S-1-5-21-2474319372-2503049825-3414714552-500" /disable


::������Ϣ�ռ�
schtasks  /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable


::ϵͳ��ԭ
schtasks  /change /tn "\Microsoft\Windows\SystemRestore\SR" /disable


::ϵͳ���˹���
schtasks  /change /tn "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /disable


::������ɨ��
::schtasks  /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable


::360AP
::schtasks  /change /tn "\360safe\360APMainProg" /disable


::VisualStudio ����
schtasks  /change /tn "\Microsoft\VisualStudio\VSIX Auto Update 14" /disable


::Windows Defender
schtasks  /change /tn "\Microsoft\Windows Defender\MP Scheduled Scan" /disable
schtasks  /change /tn "\Microsoft\Windows Defender\MpIdleTask" /disable


::Microsoft �ͻ�������Ƽƻ�
schtasks  /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks  /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks  /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks  /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable


::Bluetooth
schtasks  /change /tn "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /disable


::��Ƭ����
schtasks  /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable


::Windows �ƻ���ά������
schtasks  /change /tn "\Microsoft\Windows\Diagnosis\Scheduled" /disable


::λ�û
schtasks  /change /tn "\Microsoft\Windows\Location\Notifications" /disable


::����ϵͳ�����ܺ͹���
schtasks  /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable


::����Ϊ Windows HotStart ���õ�Ӧ�ó���
schtasks  /change /tn "\Microsoft\Windows\MobilePC\HotStart" /disable


::����������
::schtasks  /change /tn "\Microsoft\Windows\MUI\LPRemove" /disable


::ϵͳ�����û�ģʽ����
schtasks  /change /tn "\Microsoft\Windows\Multimedia\SystemSoundsService" /disable


::����ҵ���������ڲ��ҿɵ��¸��������ĵ�������ϵͳ��
schtasks  /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable


::Microsoft �ɿ��Է����������ڴ���ϵͳ�ɿ������ݡ�
schtasks  /change /tn "\Microsoft\Windows\RAC\RacTask" /disable


::Ϊ�����ƶ��Ե� VPN �����ṩ�л�֧��(��������ӿڲ�����ʱ)��
schtasks  /change /tn "\Microsoft\Windows\Ras\MobilityManager" /disable


::���������Ƿ�����Զ��Э����صĸ���
schtasks  /change /tn "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /disable


::Windows SideShow
schtasks  /change /tn "\Microsoft\Windows\SideShow\AutoWake" /disable
schtasks  /change /tn "\Microsoft\Windows\SideShow\GadgetManager" /disable
schtasks  /change /tn "\Microsoft\Windows\SideShow\SessionAgent" /disable
schtasks  /change /tn "\Microsoft\Windows\SideShow\SystemDataProviders" /disable


::���������ָ����ʱ�����������������ƽ̨����
schtasks  /change /tn "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /disable


::�� UPnPHost ��������Ϊ�Զ�����
schtasks  /change /tn "\Microsoft\Windows\UPnP\UPnPHostConfig" /disable


::Windows Diagnostic Infrastructure Resolution �������ý���ʽ������������ϲ��Է����⵽��ϵͳ���⡣��Ҫʱ��ϲ��Է�������Ӧ���û��Ự�д��������������ϲ��Է���δ���У��������Ҳ��������
schtasks  /change /tn "\Microsoft\Windows\WDI\ResolutionHost" /disable


::���ڴ���Ⱥ򱨸�� Windows ���󱨸�����
schtasks  /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable


::������ɸ����û�����ý����л�����ļ����б���������ļ��İ�ȫȨ�ޡ�
schtasks  /change /tn "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /disable


::This scheduled task notifies the user that Windows Backup has not been configured.
schtasks  /change /tn "\Microsoft\Windows\WindowsBackup\ConfigNotification" /disable

::Flash Update
schtasks  /change /tn "\Adobe Flash Player PPAPI Notifier" /disable



::-------------��ǰ�ѽ���------------------------
::Windows �������
schtasks  /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks  /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable


::������Ϣ�ռ���
schtasks  /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable


::���ܸ��ٿ�������:: ��̨���õ������
schtasks  /change /tn "\Microsoft\Windows\PerfTrack\BackgroundConfigSurveyor" /disable

::Windows �ҳ�����
schtasks  /change /tn "\Microsoft\Windows\Shell\WindowsParentalControls" /disable
schtasks  /change /tn "\Microsoft\Windows\Shell\WindowsParentalControlsMigration" /disable


::�������Զ��������û������ļ���ע������õ�Ԫ���ص�������λ�á�
schtasks  /change /tn "\Microsoft\Windows\User Profile Service\HiveUploadTask" /disable
