::rem ����Ϊ�ֶ�
::sc config  "������" start= DEMAND

::rem ����Ϊ�Զ�
::sc config  "������" start= AUTO

::rem ��������
::net start "������"

::rem ֹͣ����
::net stop "������" 

::rem ���÷���
::sc config "������" start= disabled


::��װ��
::Windows Firewall
::Windows	Installer
::Spp Notification Services
::Software Protection	sppsvc �Զ��ӳ�











@echo off
chkntfs /t:2
bcdedit /timeout 3
powercfg -h off

::Offline Files
net stop CscService
sc config CscService start= demand

::SQL Server VSS Writer	�ṩͨ�� Windows VSS �����ṹ����/��ԭ Microsoft SQL server �Ľӿ�
net stop SQLWriter
sc config SQLWriter start= demand

::igfxCUIService1.0.0.0		Intel �Կ�����ͼ��
net stop igfxCUIService1.0.0.0
sc config igfxCUIService1.0.0.0 start= demand

::igfxCUIService1.0.0.0		Intel ���
net stop cphs
sc config cphs start= demand

::NVIDIA Display Driver Service
net stop nvsvc
sc config nvsvc start= demand

::IP Helper	IPV6...
net stop CscService
sc config iphlpsvc start= demand

::Windows Search		����
net stop CscService
sc config WSearch start= demand

::Background Intelligent Transfer Service	ʹ�ÿ�����������ں�̨�����ļ���Windows ���»� MSN Explorer����
net stop BITS
sc config BITS start= demand

::10	Downloaded Maps Manager	��Ӧ�ó�����������ص�ͼ�� Windows ����
net stop MapsBroker
sc config MapsBroker start= demand

::2016	Microsoft Office ClickToRun Service	���� Microsoft Office ������ظ��µ���ԴЭ������̨���غ�ϵͳ���ɡ�ʹ���κ� Microsoft Office ���򡢳�ʼ���ذ�װ�Լ����к��������ڼ���Ҫ���д˷���
net stop ClickToRunSvc
sc config ClickToRunSvc start= demand

::10	Windows Biometric Service	Windows ����ʶ�����ʹ�ͻ���Ӧ�ó����ܹ����񡢱Ƚϡ����ݺʹ洢�����������ݣ�������ֱ�ӷ����κ�����ʶ��Ӳ����ʾ�����÷���������ĳ����Ȩ SVCHOST �����С�
net stop WbioSrvc
sc config WbioSrvc start= demand

::10	Distributed Link Tracking Client	ά��ĳ��������ڻ�ĳ�������еļ������ NTFS �ļ�֮������ӡ�
net stop TrkWks
sc config TrkWks start= demand

::Shell Hardware Detection	Ϊ�Զ�����Ӳ���¼��ṩ֪ͨ��
::net stop CscService
::sc config ShellHWDetection start= demand




::Windows Firewall	����ǽ
::net stop MpsSvc
::sc config MpsSvc start= disabled

::Windows Update		�Զ�����
net stop wuauserv
sc config wuauserv start= disabled

::Remote Registry	Զ�̷���ע���
net stop RemoteRegistry
sc config RemoteRegistry start= disabled

::Windows Error Reporting Service	���󱨸�
net stop WerSvc
sc config WerSvc start= disabled

::Security Center	��ȫ����
net stop wscsvc
sc config wscsvc start= disabled

::Windows Time		ʱ��ͬ��
net stop W32Time
sc config W32Time start= disabled

::ICS
net stop SharedAccess
sc config SharedAccess start= disabled

::10	Geolocation Service	�˷��񽫼���ϵͳ�ĵ�ǰλ�ò��������Χ��(���й����¼��ĵ���λ��)��
net stop lfsvc
sc config lfsvc start= disabled

::10	Problem Reports and Solutions Control Panel Support	�˷���Ϊ�鿴�����ͺ�ɾ�������ⱨ��ͽ����������������ϵͳ�����ⱨ���ṩ֧�֡�
net stop wercplsupport
sc config wercplsupport start= disabled

::10	Diagnostic Policy Service	��ϲ��Է��������� Windows ����������⡢���ѽ��ͽ������
net stop DPS
sc config DPS start= disabled

::Program Compatibility Assistant Service	�������������
net stop PcaSvc
sc config PcaSvc start= disabled


::10	Windows Defender Network Inspection Service	������ֹ�������Э���е���֪���·��ֵ�©�������������ͼ
net stop WdNisSvc
sc config WdNisSvc start= disabled

::10	Windows Defender Service	�����û���ֹ�������������Ǳ�ڵ����������
net stop WinDefend
sc config WinDefend start= disabled

::10	Windows ����	�ṩ Windows ���ݺͻ�ԭ���ܡ�
net stop SDRSVC
sc config SDRSVC start= disabled

::10	�Զ�ʱ�����³���	�Զ�����ϵͳʱ��
net stop tzautoupdate
sc config tzautoupdate start= disabled

::10	HomeGroup Listener	ʹ���ؼ��������������ͥ��ļ���������ú�ά�������
net stop HomeGroupListener
sc config HomeGroupListener start= disabled

::10	HomeGroup Provider	ִ�����ͥ������ú�ά����ص���������
net stop HomeGroupProvider
sc config HomeGroupProvider start= disabled

::10	Windows Media Player Network Sharing Service	ʹ��ͨ�ü��弴���豸���������粥�Ż���ý���豸���� Windows Media Player ý���
net stop WMPNetworkSvc
sc config WMPNetworkSvc start= disabled


::1607	delivery optimization	P2P ����
net stop DoSvc
sc config DoSvc start= disabled

::1607	update orchestrator server for windows update
net stop UsoSvc
sc config UsoSvc start= disabled


::1607	Windows ����֪ͨϵͳ����
net stop WpnService
sc config WpnService start= disabled