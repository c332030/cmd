::@echo off
chkntfs /t:2
bcdedit /timeout 3
powercfg -h off



::Offline Files
net stop CscService
sc config CscService start= demand

::SQL Server VSS Writer	�ṩͨ�� Windows VSS �����ṹ����/��ԭ Microsoft SQL server �Ľӿ�
net stop SQLWriter
sc config SQLWriter start= demand

::SQL Server (SQLEXPRESS)	�ṩ���ݵĴ洢��������ܿط��ʣ����ṩ���ٵ�������
net stop MSSQL$SQLEXPRESS
sc config MSSQL$SQLEXPRESS start= demand

::igfxCUIService1.0.0.0		Intel ���
net stop cphs
sc config cphs start= demand

::IP Helper	IPV6...
::net stop iphlpsvc
sc config iphlpsvc start= demand

::Background Intelligent Transfer Service	ʹ�ÿ�����������ں�̨�����ļ���Windows ���»� MSN Explorer����
net stop BITS
sc config BITS start= demand

::Windows Biometric Service	Windows ����ʶ�����ʹ�ͻ���Ӧ�ó����ܹ����񡢱Ƚϡ����ݺʹ洢�����������ݣ�������ֱ�ӷ����κ�����ʶ��Ӳ����ʾ�����÷���������ĳ����Ȩ SVCHOST �����С�
net stop WbioSrvc
sc config WbioSrvc start= demand

::Distributed Link Tracking Client	ά��ĳ��������ڻ�ĳ�������еļ������ NTFS �ļ�֮������ӡ�
net stop TrkWks
sc config TrkWks start= demand

::Shell Hardware Detection	Ϊ�Զ�����Ӳ���¼��ṩ֪ͨ��
::net stop ShellHWDetection
::sc config ShellHWDetection start= demand


::Print Spooler		���ļ����ص��ڴ湩�Ժ��ӡ
::net stop Spooler
::sc config Spooler start= demand

::Software Protection		���� Windows �� Windows Ӧ�ó�����������֤�����ء���װ��ʵʩ��
sc config sppsvc start= demand

::clr_optimization_v4.0.30319_64	Microsoft .NET Framework NGEN
sc config clr_optimization_v4.0.30319_64 start= demand

::clr_optimization_v4.0.30319_32	Microsoft .NET Framework NGEN
sc config clr_optimization_v4.0.30319_32 start= demand

::����
sc config bthserv start= demand



::Windows Firewall	����ǽ
::net stop MpsSvc
::sc config MpsSvc start= disabled
::sc delete MpsSvc

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

::Windows Search		����
net stop WSearch
sc config WSearch start= disabled

::Superfetch		����Ԥ��
net stop SysMain
sc config SysMain start= disabled



::ICS
net stop SharedAccess
sc config SharedAccess start= disabled

::Problem Reports and Solutions Control Panel Support	�˷���Ϊ�鿴�����ͺ�ɾ�������ⱨ��ͽ����������������ϵͳ�����ⱨ���ṩ֧�֡�
net stop wercplsupport
sc config wercplsupport start= disabled

::Diagnostic Policy Service	��ϲ��Է��������� Windows ����������⡢���ѽ��ͽ������
net stop DPS
sc config DPS start= disabled

::Program Compatibility Assistant Service	�������������
net stop PcaSvc
sc config PcaSvc start= disabled


::Windows ����	�ṩ Windows ���ݺͻ�ԭ���ܡ�
net stop SDRSVC
sc config SDRSVC start= disabled


::HomeGroup Listener	ʹ���ؼ��������������ͥ��ļ���������ú�ά�������
net stop HomeGroupListener
sc config HomeGroupListener start= disabled

::HomeGroup Provider	ִ�����ͥ������ú�ά����ص���������
net stop HomeGroupProvider
sc config HomeGroupProvider start= disabled

::Windows Media Player Network Sharing Service	ʹ��ͨ�ü��弴���豸���������粥�Ż���ý���豸���� Windows Media Player ý���
net stop WMPNetworkSvc
sc config WMPNetworkSvc start= disabled

::NVIDIA Display Driver Service
::net stop nvsvc
::sc config nvsvc start= disabled