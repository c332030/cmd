@echo off
color 2e
title Think �����Ż�����ר��
echo.
echo Windows Xp Sp3
echo -----------------
echo         -�����Ż�-
echo.
rem DISABLED ���� AUTO �Զ� DEMAND �ֶ� start=���пո�
rem Windows Xp Sp3 �Դ������� 83 ��   
rem �������ʱ����[SC] OpenService FAILED 1060:��˵������ʧ�� ��û�д˷���

rem ========================================================================================================
echo.
echo Alerter 
rem ΢��֪ͨѡȡ��ʹ���߼������ϵͳ����ʾ�����ֹͣ�������ʹ��ϵͳ����ʾ�ĳ��򽫲����յ�֪ͨ��
rem ���䣺һ����ü������������Ҫ���ͻ���ռ����ϵͳ�������ľ�ʾ(Administrative Alerts)��
rem ������ļ�������ھ���������
rem ΢��Ծ��������������Ϊ��֪ͨ��ѡ�û��ͼ�����й�ϵͳ����������������ϵͳ���ִ����������ܼ�ʱ
rem ���û�����ͨ�档������ͨӦ����Ա������������������ֹ��IE���ִ���Ҫ���ʹ��󱨸�֮��Ի���ĳ��֣�
rem ��Ϊ��Щ���󱨸����������˵�����ô�������ѡ�������������֮�� 
rem ���棺Workstation 
rem ���飺��ͣ�� 
sc config   Alerter start= DISABLED

rem ========================================================================================================
echo.
echo Application Layer Gateway Service 
rem ΢���ṩ�����������������������������ǽ�ĵ�����ͨѶЭ������֧�� 
rem ���䣺����㲻ʹ���������������� (ICS) �ṩ��̨���������������ȡ����������������ǽ (ICF) �������Թص� 
rem ���棺Internt Connection Firewall (ICF) / Internet Connection Sharing (ICS) 
rem Ϊinternet���ӹ����internet���ӷ���ǽ�ṩ������Э������֧�������û����internet���ӹ���
rem ��windows xp���÷���ǽ�����Խ�ֹ�����������Ӱ�����繲����Ĺرհ�,ֻ��һ������������ռ���ڴ���Դ1.5MB
rem ���飺��ͣ�� 
sc config   ALG start= DISABLED

rem ========================================================================================================
echo.
echo Application Management (Ӧ�ó������) 
rem ΢���ṩָ�ɡ����С��Լ��Ƴ��������װ���� 
rem ���䣺����˵�������װ����ķ��� 
rem ���飺�ֶ� 
sc config   AppMgmt start= DEMAND

rem ======================================================================================================== 
echo.
echo Automatic Updates 
rem ΢��������Ҫ Windows ���µ����ؼ���װ�����ͣ�ô˷���,
rem ���ԣ��ֶ��Ĵ� Windows Update ��վ�ϸ��²���ϵͳ�� 
rem ���䣺���� Windows �ڱ����Զ�����֮�£��� Microsoft Servers �Զ��������ظ����޲����� 
rem ���飺��ͣ��
sc config   wuauserv start= DISABLED

rem ========================================================================================================
echo.
echo Background Intelligent Transfer Service 
rem ΢��ʹ�����õ�����Ƶ�����������ݡ� 
rem ���䣺���� Via HTTP1.1 �ڱ����������ϵĶ��������� Windows Update �����Դ�Ϊ����֮һ
rem ���䣺ĳƪ����˵������Ҫ�˷��� ��֪���ǲ��� ������ 
rem ���棺remote Procedure Call (RPC) �� Workstation 
rem ���飺�ر� 
sc config   BITS start= DISABLED

rem ========================================================================================================
echo.
echo ClipBook (������) 
rem ΢�����ü������������Դ�����Ϣ����Զ�̼������������������ֹͣ��
rem �����������������޷���Զ�̼����������Ϣ������������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺�Ѽ������ڵ���Ϣ������̨���������һ����ü���������ò��� 
rem ���棺Network DDE 
rem ���飺��ͣ�� 
sc config   ClipSrv start= DISABLED

rem ========================================================================================================
echo.
echo COM+ Event System (COM+ �¼�ϵͳ) 
rem ΢��֧�֡�ϵͳ�¼�֪ͨ���� (SENS)�����������¼��Զ���ɢ�����ĵ� COM �����
rem �������ֹͣ��SENS ��رգ����޷��ṩ���뼰ע��֪ͨ�� 
rem ���䣺��Щ��������õ� COM+ ������� BootVis �� optimize system Ӧ�ã����¼�����������ʾ��DCOM û������ 
rem ���棺remote Procedure Call (RPC) �� System Event Notification 
rem ���飺�ֶ�  
sc config   EventSystem start= DEMAND

rem ========================================================================================================
echo. 
echo COM+ System Application 
rem ΢������ COM+ ������趨��׷�١����ֹͣ�˷��񣬴󲿷ֵ� COM+ ������޷��ʵ�����������˷���ͣ�ã�
rem �κ���ȷ�������ķ����޷������� 
rem ����: ���COM+ Event System ��һ̨������ô COM+ System Application ����˾����
rem ���¼�����������ʾ�� DCOM û������ 
rem ���棺remote Procedure Call (RPC) 
rem ���飺 �ֶ� 
sc config   COMSysApp start= DEMAND

rem ========================================================================================================
echo.
echo Computer Browser (����������) 
rem ΢��ά�������ϸ��µļ�����嵥����������嵥�ṩ����Ϊ������ļ���������ֹͣ�������
rem ����嵥�����ᱻ���»�ά��,���ͣ����������������������ķ����޷������� 
rem ���䣺һ���ͥ�ü��������Ҫ��������ļ����Ӧ��������֮�ϣ������ڴ��͵��������б�Ҫ����������ٶ���
rem ���䣺������Ҫ�˷��� ������   ����������������Եķ��񣬵�����Ҳ��Ӱ�����
rem ���棺Server �� Workstation 
rem ���飺��ͣ�� 
sc config   Browser start= DISABLED

rem ========================================================================================================
echo.
echo Cryptographic Services 
rem ΢���ṩ�����������: ȷ�� Windows ����ǩ�µ� [���Ŀ¼���ݿ����]; 
rem �����������������Ƴ������θ�ƾ֤��Ȩƾ֤�� [�ܱ����ĸ�Ŀ¼����]; 
rem �Լ�Э��ע������������ȡ��ƾ֤�� [��Կ����]������������ֹͣ����Щ��������޷���ȷ������
rem ���䣺�򵥵�˵���� Windows Hardware Quality Lab (WHQL)΢���һ����֤��
rem �������ʹ�� Automatic Updates �����������Ҫ��� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺ͣ��  360���鿪�� �ǾͿ�����
sc config   CryptSvc start= AUTO

rem ========================================================================================================
echo.
echo DCOM Server Process Launcher
rem Ϊ DCOM �����ṩ��������
rem �������ؿ� ��Ȼ����ִ��� "RPC������������" ʹϵͳ���ȶ��� �Ƚ��鷳
rem ���飺�Զ�
sc config   DcomLaunch start= AUTO

rem ========================================================================================================
echo.
echo DHCP Client (DHCP �ͻ���) 
rem ΢��͸����¼������ IP ��ַ�� DNS ���������������趨�� 
rem ���䣺ʹ�� DSL/Cable ��ICS �� IPSEC ���˶���Ҫ�����ָ����̬ IP 
rem ���棺AFD ����֧�ֻ�����NetBT��SYMTDI��TCP/IP Protocol Driver �� NetBios over TCP/IP 
rem ���飺�Զ� 
sc config   Dhcp start= AUTO

rem ========================================================================================================
echo.
echo Distributed Link Tracking Client (�ֲ�ʽ����׷�ٿͻ���) 
rem ΢��ά��������л���������ͬ������� NTFS ����������ᡣ 
rem ���䣺���ھ���������������Ϣ�������ڵ���A�и��ļ�����B���˸����ӣ�����ļ��ƶ��ˣ�������񽫻������Ϣ��
rem ռ��4���ڴ档 (һ���û��ò��������Թرգ�����ҵ�û��ͱ�ر���)  ռ��4���ڴ�
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ�� 
sc config   TrkWks start= DISABLED

rem ========================================================================================================
echo.
echo Distributed Transaction Coordinator (�ֲ�ʽ����Э����) 
rem ΢��Э����Խ�����Դ����Ա�Ľ��ף��������ݿ⡢ѶϢ���м�����ϵͳ������˷���ֹͣ����Щ���׽����ᷢ��
rem �������ͣ�� ���κ������������ķ����޷������� 
rem ���䣺������˵�ģ�һ���ͥ�ü�����ò�̫�������������õ� Message Queuing 
rem ���棺remote Procedure Call (RPC) �� Security Accounts Manager 
rem ���飺��ͣ�� 
sc config   MSDTC start= DISABLED

rem ========================================================================================================
echo.
echo DNS Client (DNS �ͻ���) 
rem ΢����������ȡ��̨���������������ϵͳ (DNS) ���ơ�
rem ���ֹͣ���������̨��������޷����� DNS ���Ʋ�Ѱ�� Active rem Directory �������վ��λ�á�
rem ���ͣ����������������������ķ����޷������� 
rem ���䣺������˵�ģ�DNS�������� IPSEC��Ҫ�õ�  
rem ���棺TCP/IP Protocol Driver 
rem ���飺�Զ�          �������ٵ� ���鿪��
sc config   Dnscache start= AUTO

rem ========================================================================================================
echo.
echo Error Reporting Service 
rem ΢�������ִ���ڷǱ�׼�����еķ����Ӧ�ó���Ĵ��󱨸档 
rem ���䣺΢���Ӧ�ó�����󱨸�       �عصķ��� ��Ȼ������
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��  
sc config   ERSvc start= DISABLED

rem ========================================================================================================
echo.
echo Event Log (�¼���¼�ļ�) 
rem ΢������ Windows Ϊ���ĳ����������������¼�ѶϢ�������¼��������м��ӡ���������ܱ�ֹͣ�� 
rem ���䣺�����¼�ѶϢ��ʾ���¼�������֮��   �ؿ��ķ��� ��Ȼϵͳ���ȶ�   �������ƽ� services.exe 
rem ���棺Windows Management Instrumentation 
rem ���飺�Զ�
sc config   Eventlog start= AUTO

rem ========================================================================================================
echo.
echo Extensible Authentication Protocol Service
rem �� Windows �ͻ����ṩ����չ�����֤Э�����
rem �Ƽ����ֶ�            �������ٶ���  ���Ƿ��б�Ҫ�ر�
sc config   EapHost start= DEMAND

rem ========================================================================================================
echo. 
echo Fast User Switching Compatibility
rem Ϊ�ڶ��û�����ҪЭ����Ӧ�ó����ṩ��������RPC
rem ���ǿ�ʼ-ע���е��û��л�
rem ���飺�ر� 
sc config   FastUserSwitchingCompatibility start= DISABLED

rem ========================================================================================================
echo.
echo Health Key and Certificate Management Service
rem ������֤�����Կ(�� NAP ʹ��)
rem ���飺�ֶ�          �ٶ�һ���Ƿ��б�Ҫ�ر�
sc config   hkmsvc start= DEMAND

rem ========================================================================================================
echo.
echo Help and Support 
rem ΢����˵����֧�������ܹ�����̨�������ִ�С�����������ֹͣ�����޷�ʹ��˵����֧�����ġ�
rem ���䣺�����ʹ�þ͹��˰�               �عصķ����� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��  
sc config   helpsvc start= DISABLED

rem ========================================================================================================
echo.
echo Http SSL
rem �˷���ͨ����ȫ�׽��ֲ�(SSL)ʵ�� HTTP ����İ�ȫ���ı�����Э��(HTTPS)��
rem ����˷��񱻽��ã��κ��������ķ����޷�������
rem ���飺�ֶ�        ĳЩ��������Ҫ
sc config   HTTPFilter start= DEMAND

rem ========================================================================================================
echo.
echo Human Interface Device Access 
rem ΢�����ö����Ի��ӿ�װ�� (HID) ��ͨ�������ȡ��HID װ��������ά����������̡�Զ�̿��ơ��Լ�����
rem ��ý��װ�������ȶ���Ŀ��Ŧ��ʹ�á�����������ֹͣ�����������ƵĿ��Ŧ�����������á�
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��                      �عصķ���
sc config   HidServ start= DISABLED

rem ========================================================================================================
echo.
echo IMAPI CD-Burning COM Service 
rem ΢��ʹ�� Image Mastering Applications Programming Interface (IMAPI) ���������¼�ơ�
rem ����������ֹͣ������������rem �޷�¼�ƹ��̡�����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ����XP���ϵ�CD-R��CD-RW�������Ϸŵ���¼���ܿ�ϧ�Ȳ�����¼����ص������Լӿ�Nero�Ŀ����ٶȡ�
rem ���飺��ͣ��                ����
sc config   ImapiService start= DISABLED

rem ========================================================================================================
echo.
echo Indexing Service (��������) 
rem ΢��������Զ�̼�������������ݺ͵�������; ͸�����ԵĲ�ѯ�����ṩ���ٵ�����ȡ�� 
rem ���䣺�򵥵�˵��������ӿ��Ѳ��ٶȣ���������Ӧ�ú����˺�Զ�̼��������Ѱ�� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��                 �� ����Ҫ���� 
sc config   CiSvc start= DISABLED

rem ========================================================================================================
echo. 
echo IPSEC Services (IP ��ȫ�Է���) 
rem ΢������ IP ��ȫ��ԭ������ ISAKMP/Oakley (IKE) �� IP ��ȫ���������� 
rem ���䣺Э�������������紫�͵����ݡ�IPSec Ϊһ��Ҫ���ڣ�Ϊ����˽������ (VPN) ���ṩ��ȫ�ԣ�
rem �� VPN ������֯������������ȫ�ش������ݡ���ĳЩ������Ҳ����Ҫ������һ��ʹ���ߴ󲿷��ǲ�̫��Ҫ�� 
rem ���棺IPSEC driver��remote Procedure Call (RPC)��TCP/IP Protocol Driver 
rem ���飺�ֶ�           �ٶ�һ����   �����ǹر��ǻ��ֶ�   
sc config   PolicyAgent start= DEMAND

rem ======================================================================================================== 
echo.
echo Logical Disk Manager (�߼����̹���Ա) 
rem ΢����⼰������Ӳ�̴��̣��Լ����ʹ�������Ϣ���߼����̹���ϵͳ��������Թ��趨��
rem ����������ֹͣ����̬����״̬���趨��Ϣ���ܻ��ʱ��
rem ����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ����: ���̹���Ա������̬�������,����ʾ���̿��ÿռ�Ⱥ�ʹ��Microsoft Management Console(MMC)����̨�Ĺ��� 
rem ���棺Plug and Play��remote Procedure Call (RPC)��Logical Disk Manager Administrative Service 
rem ���飺�Զ�
sc config   dmserver start= AUTO

rem ========================================================================================================
echo.
echo Logical Disk Manager Administrative Service (�߼����̹���Աϵͳ�������) 
rem ΢���趨Ӳ�̴��̼�������������ִֻ���趨����Ȼ���ֹͣ�� 
rem ���䣺ƽʱ������û�á���"���������"��Microsoft Management Console�����MMC��ʱ��
rem ����Կ���"���̹���"����ʱ�ͻ�������������Ϊ�ֶ�
rem ���棺Plug and Play��remote Procedure Call (RPC)��Logical Disk Manager 
rem ���飺�ֶ�       
sc config   dmadmin start= DEMAND

rem ========================================================================================================
echo.
echo Messenger 
rem ΢���ڿͻ��˼�������֮�䴫�����紫�ͼ� [Alerter] ����ѶϢ��
rem ��������� Windows Messenger �޹ء����ֹͣ�������Alerter ѶϢ�����ᱻ���䡣
rem ���ͣ����������������������ķ����޷������� 
rem ���䣺��������֮�以�ഫ����ʾѶϢ�Ĺ��ܣ��� net send ���ܣ��粻�뱻ɧ�Ż��ɹ��� 
rem ���棺NetBIOS Interface��Plug and Play��remote Procedure Call (RPC)��Workstation 
rem ���飺��ͣ��                  �عصķ���  
sc config   Messenger start= DISABLED

rem ========================================================================================================
echo. 
echo MS Software Shadow Copy Provider 
rem ΢�������������Ӱ���Ʒ�����ȡ�õ������Ϊ���Ĵ�������Ӱ���ơ�
rem ���ֹͣ������񣬾��޷����������Ϊ���Ĵ�������Ӱ���ơ� 
rem ���䣺������˵�ģ��������ݵĶ������� MS Backup �������Ҫ������� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺 ��ͣ��                �ع��� 
sc config   SwPrv start= DISABLED

rem ========================================================================================================
echo.
echo Net Logon 
rem ΢�� ֧�������ϼ�������˻������¼��� pass-through ��֤�� 
rem ���䣺 �㲻���þ������ϵ������û���¼ 
rem ���棺 Workstation 
rem ���飺 �ֶ�     �ٶ�����������˴˷����Ƿ�ᵼ�¹���ʧ�� ��ӡ���޷������ӡ
sc config   Netlogon start= DEMAND

rem ========================================================================================================
echo. 
echo NetMeetingremote Desktop Sharing (NetMeeting Զ�����湲��) 
rem ΢���þ�����Ȩ��ʹ���߿���ʹ�� NetMeeting ͸����˾�����ڲ����磬��Զ�̷����ⲿ�������
rem ����������ֹͣ�Ļ���Զ�����湲���ܽ��޷�ʹ�á��������ͣ�õĻ����κ��������ķ����޷������� 
rem ���䣺����˵�ģ���ʹ���߿��Խ�������Ŀ���Ȩ�����������ϻ��������ϵ�����ʹ���ߣ�
rem ��������Ӱ�ȫ�Բ���࿪���ţ��͹��˰� 
rem ���飺��ͣ��                        �϶��ǹ��� 
sc config   mnmsrvc start= DISABLED

rem ========================================================================================================
echo.
echo Network Access Protection Agent
rem ���� Windows �ͻ��˲���������ʱ���
rem ���飺�ֶ�               �ٶ�һ������ʲô���� ��ľ�б�Ҫ�ر��أ�
sc config   napagent start= DEMAND

rem ========================================================================================================
echo.
echo Network Connections (��������) 
rem ΢������������Ͳ����������ݼ��еĶ����������ڴ����ݼ��м��Ӿ��������Զ�������� 
rem ���䣺���������������
rem ���棺remote Procedure Call (RPC)��Internet Connection Firewall (ICF) 
rem  Internet Connection Sharing (ICS) 
rem ���飺 �Զ�
sc config   Netman start= AUTO

rem ========================================================================================================
echo.
echo Network DDE (���� DDE) 
rem ΢��Ϊ��̬���ݽ��� (DDE) ������ͬ��ͬ�������ִ�еĳ����ṩ���紫��Ͱ�ȫ�ԡ�
rem ����������ֹͣ��DDE ����Ͱ�ȫ�Խ��޷�ʹ�á�����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺 ǰ���㶼��ֹ��CLIPBOOK ����϶���ֹ��
rem ���棺 Network DDE DSDM��ClipBook 
rem ���飺 ��ͣ�� 
sc config   NetDDE start= DISABLED

rem ========================================================================================================
echo.
echo Network DDE DSDM (���� DDE DSDM) 
rem ΢�� ѶϢ��̬���ݽ��� (DDE) ���繲������������ֹͣ��DDE ���繲���޷�ʹ�á�
rem ���䣺 �����㶼��ֹ�Ļ��� ����϶����Խ�ֹ
rem ���棺 Network DDE 
rem ���飺 ��ͣ��
sc config   NetDDEdsdm start= DISABLED

rem ========================================================================================================
echo.
echo Network Location Awareness (NLA) 
rem ΢�� �ռ�����������趨��λ����Ϣ�������������Ϣ���ʱ֪ͨӦ�ó��� 
rem ���䣺 �����ʹ�� ICF �� ICS ���Թ�����    �еĽ̳�˵�ر� ������
rem ���棺 AFD����֧�ֻ�����TCP/IP Procotol Driver��Internet Connection Firewall (ICF) 
rem  Internet Connection Sharing (ICS) 
rem ���飺 �Զ� 
sc config   Nla start= AUTO

rem ========================================================================================================
echo.
echo Network Provisioning Service
rem Ϊ�Զ������ṩ���������� XML �����ļ���
rem ���飺�ֶ�
sc config   xmlprov start= DEMAND

rem ========================================================================================================
echo. 
echo NT LM Security Support Provider (NTLM ��ȫ��֧���ṩ��) 
rem ΢�� Ϊû��ʹ�������ܵ������Զ�̹��̵��� (RPC) �����ṩ��ȫ�ԡ� 
rem ���䣺 �����ʹ�� Message Queuing ���� Telnet Server �Ǿ͹����� 
rem ���棺 Telnet 
rem ���飺 ��ͣ��
sc config   NtLmSsp start= DISABLED

rem ========================================================================================================
echo. 
echo Performance Logs and Alerts (Ч�ܼ�¼�ļ�����ʾ) 
rem ΢�����������趨���ų̲������ӱ�����Զ�̼�����ռ�Ч�����ݣ�Ȼ������д���¼��Ѷ��
rem ����������ֹͣ���������ռ�Ч����Ϣ������������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺ûʲô��ֵ�ķ��� 
rem ���飺��ͣ�� 
sc config   SysmonLog start= DISABLED

rem ========================================================================================================
echo.
echo Plug and Play (�������) 
rem ΢�����ü������ʹ����û�л���ٵ�������ʶ����ӦӲ�������ֹͣ��ͣ��������񽫵���ϵͳ���ȶ��� 
rem ���䣺�Զ������װӲ����(���Ǽ��弴��)
rem ���棺Logical Disk Manager��Logical Disk Manager Administrative Service��Messenger��
rem Smart Card��Telephony��Windows Audio 
rem ���飺�Զ�  �ؿ��ķ���
sc config   PlugPlay start= AUTO

rem ========================================================================================================
echo. 
echo Portable Media Serial Number 
rem ΢�� Retrieves the serial number of any portable music player connected to your computer 
rem ���䣺 ͸���������������ȡ���κ����ֲ�����ţ�ûʲô��ֵ�ķ��� 
rem ���飺 ��ͣ��            �عصķ���  
sc config   WmdmPmSN start= DISABLED

rem ========================================================================================================
echo.
echo Print Spooler (��ӡ�����񻺳崦����) 
rem ΢�������������ڴ����Դ��Ժ��ӡ�� 
rem ���䣺���û�д�ӡ�������Թ��� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺�Զ�
sc config   Spooler start= AUTO

rem ========================================================================================================
echo. 
echo Protected Storage (�ܱ����Ĵ��װ��) 
rem ΢���ṩ�ܱ����Ĵ������������˽�ܽ�Կ�����������ݣ���ֹδ��Ȩ�ķ��񡢴�����ʹ���߽��д�ȡ�� 
rem ���䣺��������������������ķ����� Outlook�����ų�������Ӧ�ó������Ӽܹ��ȵ� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺�Զ� 
sc config   ProtectedStorage start= AUTO

rem ========================================================================================================
echo.
echo QoS RSVP
rem Ϊ������������(QoS)�ĳ���Ϳ���Ӧ�ó����ṩ�����źźͱ���ͨ�ſ��ư�װ���ܡ�
rem ���飺�ر�             ����һ��
sc config   RSVP start= DISABLED

rem ======================================================================================================== 
echo.
echo Remote Access Auto Connection Manager (Զ�̷����Զ���������Ա) 
rem ΢����������յ�Զ�� DNS �� NetBIOS ���ƻ��ַʱ������Զ������������� 
rem ���䣺��Щ DSL/Cable �ṩ�ߣ�������Ҫ�ô������������� 
rem ���棺remote Access Connection Manager��Telephony 
rem ���飺�ֶ� 
sc config   RasAuto start= DEMAND

rem ========================================================================================================
echo. 
echo Remote Access Connection Manager (Զ�̷�����������Ա) 
rem ΢���������������� 
rem ���䣺�㲻���ڳ�����ͼ��ȡ������Ϣʱ�Զ����ӵ�����
rem ���䣺 ������Ҫ�Զ� ������ 
rem ���棺Telephony��Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS)��
rem remote Access Auto rem Connection Manager 
rem ���飺�ֶ�
sc config   RasMan start= DEMAND

rem ========================================================================================================
echo.
echo Remote Desktop Help Session Manager 
rem ΢����������Զ��Э��������˷���ֹͣ�Ļ���Զ��Э�����޷�ʹ�á�
rem ֹͣ�˷���֮ǰ�����Ȳ������ݶԻ����е� [������]��ǩ�� 
rem ���䣺����˵�Ĺ���Ϳ���Զ��Э���������ʹ�ÿ��Թ��� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��
sc config   RDSessMgr start= DISABLED

rem ========================================================================================================
echo.
echo Remote Procedure Call (RPC) (Զ�̹��̵��ã�RPC) 
rem ΢���ṩ�������Ӧ�����Լ����� RPC ���� 
rem ���䣺һЩװ�ö�����������ȥ����        �ؿ��ķ��� ������������� 
rem ���棺̫���ˣ��Լ�ȥ���� 
rem ���飺�Զ� 
sc config   RpcSs start= AUTO

rem ========================================================================================================
echo.
echo Remote Procedure Call (RPC) Locator (Զ�̹��̵��ö�λ����) 
rem ΢������ RPC ���Ʒ������ݿ⡣ 
rem ���䣺����˵�ģ�һ�������Ϻ����õ������Գ��Թ��� 
rem ���棺Workstation 
rem ���飺��ͣ��
sc config   RpcLocator start= DISABLED

rem ========================================================================================================
echo.
echo Remote Registry (Զ�̵�¼����) 
rem ΢������Զ��ʹ�����޸����������ϵĵ�¼�趨��
rem ����������ֹͣ����¼ֻ�������������ϵ�ʹ�����޸ġ�
rem ����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺���ڰ�ȫ�Ե����ɣ����û���ر�����󣬽�����ù���������������ҪԶ��Э���޸���ĵ�¼�趨 
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��                               �϶�����  
sc config   RemoteRegistry start= DISABLED

rem ========================================================================================================
echo.
echo Removable Storage (ж��ʽ���װ��) 
rem ΢�� None 
rem ���䣺 �������� Zip �������������� USB ֮���Яʽ��Ӳ������ Tape ����װ�ã���Ȼ���Գ��Թ��� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺 �ر�                        ��֪��U��֮����Ƿ���Ҫ�� ������
sc config   NtmsSvc start= DISABLED

rem ========================================================================================================
echo.
echo Routing and remote Access (·�ɺ�Զ�̷���) 
rem ΢���ṩ�����������缰��������Ĺ�˾��·�ɷ��� 
rem ���䣺����˵�ģ��ṩ������������������ VPN ����һ���û��ò��� 
rem ���棺remote Procedure Call (RPC)��NetBIOSGroup 
rem ���飺�ֶ� 
sc config   RemoteAccess start= DEMAND

rem ========================================================================================================
echo.
echo Secondary Logon 
rem ΢�� ������������֤�µ���ʼ��������������ֹͣ������ĵ����ȡ���޷�ʹ�á�
rem ���䣺 ������ʹ���ߴ������ִ�з���� ��Щ�̳�˵��Ҫ�����˷��� ������
rem ����administrator������û�����ָ������Ȩ
rem ���飺 ͣ�� 
sc config   seclogon start= DISABLED

rem ========================================================================================================
echo.
echo Security Accounts Manager (��ȫ���˻�����Ա) 
rem ΢�����汾���˻��İ�ȫ����Ϣ�� 
rem ���䣺�����˺ź�Ⱥ��ԭ��(gpedit.msc)Ӧ�� 
rem ���棺remote Procedure Call (RPC)��Distributed Transaction Coordinator 
rem ���飺�Զ�                 �ٶ��Ƿ���Թر� �رպ�����ʲô���
sc config   SamSs start= AUTO

rem ========================================================================================================
echo.
echo Security Center
rem ����ϵͳ��ȫ���ú�����
rem һ����ȫ���ߵİ�ȫ���ģ����Ľ���
rem ���飺 ��ͣ��
sc config   wscsvc start= DISABLED

rem ========================================================================================================
echo.
echo Server (������) 
rem ΢��͸������Ϊ��̨������ṩ��������ӡ���������ܵ��Ĺ������ֹͣ������񣬽��޷�ʹ����Щ���ܡ�
rem ���ͣ����������������������ķ����޷������� 
rem ���䣺 �򵥵�˵���ǵ����ʹ�ӡ�ķ����������к����������������Ȼ�͹��� 
rem ���棺 Computer Browser 
rem ���飺 �Զ�
sc config   LanmanServer start= AUTO

rem ========================================================================================================
echo.
echo Shell Hardware Detection 
rem ΢��Ϊ�Զ�����Ӳ���¼��ṩ֪ͨ�� 
rem ���䣺һ��ʹ���ڼ��俨����CDװ�á�DVDװ���� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺�ر�  �����Զ����Ź����� 360˵Ҫ���� �Ҿ������� ���� ������ ��˵���������������ٶ�...
sc config   ShellHWDetection start= AUTO

rem ========================================================================================================
echo.
echo Smart Card (�ǻۿ�) 
rem ΢������������������ȡ���ܿ��Ĵ�ȡ������������ֹͣ�������������޷���ȡ���ܿ���
rem ����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺����㲻ʹ�� Smart Card ���ǾͿ��Թ��� 
rem ���棺Plug and Play 
rem ���飺�ر�                       ���������ʲô  ������ �Ƿ���Ҫ�ֶ�
sc config   SCardSvr start= DISABLED

rem ========================================================================================================
echo. 
echo SSDP Discovery Service
rem ��������ͥ�����ϵ� UPnP �豸�ķ���
rem ���飺�ر�            һ��Ҫ���� 
sc config   SSDPSRV start= DISABLED

rem ========================================================================================================
echo.
echo System Event Notification (ϵͳ�¼�֪ͨ) 
rem ΢��׷������ Windows ���롢���硢�͵�Դ�¼���ϵͳ�¼���֪ͨ��Щ�¼��� COM+ �¼�ϵͳ�����ߡ� 
rem ���䣺���������뿪��  �����Ӱ�쿪���ٶȵ� 360���鿪��
rem ���棺COM+ Event System 
rem ���飺����
sc config   SENS start= AUTO

rem ========================================================================================================
echo.
echo System Restore Service
rem ΢��ִ��ϵͳ��ԭ���ܡ�Ҫֹͣ������ӡ��ҵĵ��ԡ��������е�ϵͳ��ԭѡ��ر�ϵͳ��ԭ
rem ���䣺������װ�ٴν��������ϵͳ��ԭ�ֽ��򿪣������������Ҫ�ڽ������������һ��������ʹ��
rem ִ��ϵͳ��ԭ���ܡ� Ҫֹͣ������ӡ��ҵĵ��ԡ��������е�ϵͳ��ԭѡ��ر�ϵͳ��ԭ
rem ���飺��Ȼ�ǹر���  
sc config   srservice start= DISABLED

rem ========================================================================================================
echo.
echo Task Scheduler (�����ų���) 
rem ΢����ʹ�����ܹ��������������趨���Ŷ��Զ��Ĺ�����
rem ���ֹͣ���������Щ�����������Ŷ���ʱ��ʱ������ִ�С�
rem ���䣺�趨�Ŷ��Զ��Ĺ�������һЩ��ʱ����ɨ�顢������ʱɨ�顢���µȵ� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺�Զ� 
sc config   Schedule start= AUTO

rem ========================================================================================================
echo.
echo TCP/IP NetBIOS Helper (TCP/IP NetBIOS Э������) 
rem ΢�� ���� [NetBIOS over TCP/IP (NetBT)] ���� NetBIOS ���ƽ�����֧�֡� 
rem ���䣺 ���������粻ʹ�� NetBios ���� WINS �����ɹر� 
rem ���棺 AFD ����֧�ֻ�����NetBt 
rem ���飺 �Զ�                         �������Ҳ�о��� �Ƿ�Ҫ�ر�
sc config   LmHosts start= AUTO

rem ========================================================================================================
echo. 
echo Telephony (�绰����) 
rem ΢��Ϊ����������ϼ����ɾ����������ӵ�����ִ�д˷���ķ������ϣ�
rem ���Ƶ绰����װ�ú� IP Ϊ�����������ĳ����ṩ�绰���� API (TAPI) ֧�֡� 
rem ���䣺һ��Ĳ��ŵ��ƽ��������һЩ DSL/Cable �����õ�       ���ŷ���(�����Ŀ�����ò��ţ���ô������)
rem ���棺Plug and Play��remote Procedure Call (RPC)��remote Access Connection Manager��
rem remote Access Auto Connection rem Manager 
rem ���飺�ֶ� 
sc config   TapiSrv start= DEMAND

rem ========================================================================================================
echo. 
echo telnet
REM ����Զ���û���¼���˼���������г��򣬲�֧�ֶ��� TCP/IP Telnet �ͻ����������� UNIX �� Windows �ļ������
rem ����˷���ֹͣ��Զ���û��Ͳ��ܷ��ʳ����κ�ֱ���������ķ��񽫻�����ʧ��
rem ���飺��ͣ��               ���Խ�ֹ�ķ���
sc config   TlntSvr start= DISABLED

rem ========================================================================================================
echo. 
echo Terminal Services (�ն˻�����) 
rem ΢�������λʹ���߻������ӵ�ͬһ����������������ʾ������Զ�̼������Ӧ�ó���
rem Զ������ļ�ǿ (����ϵͳ����Ա�� RD)�����л�ʹ���ߡ�Զ��Э�����ն˻��������� 
rem ���䣺Զ���������Զ��Э���Ĺ��ܣ�����Ҫ�͹��� 
rem ���棺remote Procedure Call (RPC)��Fast User Switching Compatibility��InteractiveLogon 
rem ���飺��ͣ��
sc config   TermService start= DISABLED

rem ========================================================================================================
echo.
echo Themes 
rem ΢�� �ṩʹ���߾���������� 
rem ���䣺 �ܶ���ʹ�ò������⣬�������û��ʹ�õ��ˣ��ǾͿ��Թر� 
rem ���飺 �Զ�  
sc config   Themes start= AUTO

rem ========================================================================================================
echo.
echo Uninterruptible Power Supply (���ϵ繩��ϵͳ) 
rem ΢���������ӵ���̨������Ĳ��ϵ��Դ��Ӧ (UPS)�� 
rem ���䣺���ϵ��Դ��Ӧ (UPS)һ�������õ��𣿳�����ĵ�Դ��Ӧ���о߱��˹��ܣ���Ȼ�͹��� 
rem ���飺��ͣ�� 
sc config   UPS start= DISABLED

rem ========================================================================================================
echo.
echo Universal Plug and Play Device Host
rem Ϊ����ͨ�ü��弴���豸�ṩ֧��
rem ���飺�ֶ�                  �еĽ̳�˵�ر�  ������
rem UPNPhostΪUPnP�豸�ṩ����֧�֡���Ȼͨ������¹رռ��ɣ�
rem ������ĳЩU���������Ͳ����������ֶ������̷�����Ϊ�ֶ�
sc config   upnphost start= DEMAND

rem ========================================================================================================
echo. 
echo Volume Shadow Copy 
rem ΢������ִ�����ڱ��ݺ�����Ŀ�ĵĴ�������Ӱ���ơ�
rem ����������ֹͣ����Ӱ���ƽ��޷����ڱ��ݣ����ݿ��ܻ�ʧ�ܡ�
rem ���䣺������˵�ģ��������ݵĶ������� MS Backup �������Ҫ������� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺��ͣ��
sc config   VSS start= DISABLED

rem ========================================================================================================
echo.
echo WebClient 
rem ΢������ Windows Ϊ���ĳ�������������ȡ���Լ��޸�������Ϊ���ĵ��������ֹͣ���������Щ���ܽ��޷�ʹ
rem ���䣺ʹ�� WebDAV �����������ݼ����ص����е� Web ���񣬻��ڰ�ȫ�Ե����ɣ�����Գ��Թر� 
rem ���棺WebDav Client Redirector 
rem ���飺��ͣ��
sc config   WebClient start= DISABLED

rem ========================================================================================================
echo.
echo Windows Audio 
rem ΢���������� Windows Ϊ���������Ѷװ�á�����������ֹͣ����Ѷװ�ú�Ч�����޷�����������
rem ����������ͣ�ã��κ���ȷ���������ķ����޷������� 
rem ���䣺 �����û���������Թ����� 
rem ���棺 Plug and Play��remote Procedure Call (RPC) 
rem ���飺 �Զ� 
sc config   AudioSrv start= AUTO

rem ========================================================================================================
echo. 
echo Windows Firewall/Internet Connection Sharing (ICS) 
rem ΢��Ϊ���ļ��������С�Ͱ칫�������ṩ�����ַת�롢Ѱַ�����ƽ��������/���ֹ���ŵķ��� 
rem ���䣺����㲻ʹ����������������(ICS)���� XP �ں�����������������ǽ(ICF)����Թص� 
rem ���棺Application Layer Gateway Service��Network Connections��Network Location Awareness(NLA)��
rem remote Access Connection rem Manager 
rem ���飺 �Զ�            ϵͳ���õķ���ǽ��  �ٶ����Ƿ���Թر� ���ֻ�Ƿ���ǽ�Ϳ��Թر�
sc config   SharedAccess start= AUTO

rem ========================================================================================================
echo.
echo Windows Image Acquisition (WIA) (WindowsӰ��ȡ�ó���) 
rem ΢��Ϊɨ���Ǻ���������ṩӰ��ߢȡ���� 
rem ���䣺���ɨ���Ǻ���������ڲ�����֧��WIA���ܵĻ����ǾͿ���ֱ�ӿ���ͼ��������Ҫ��������������
rem ����û��ɨ���Ǻ����������ʹ���ߴ�ɹ���  ������������ �������ֶ����ǽ��ú�  ���þ����� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺����
sc config   stisvc start= DISABLED

rem ========================================================================================================
echo.
echo Windows Installer (Windows ��װ����) 
rem ΢�����ݰ����� .MSI �����ڵ�ָʾ����װ���޸��Լ��Ƴ������ 
rem ���䣺��һ��ϵͳ����Э��ʹ������ȷ�ذ�װ���趨��׷�١��������Ƴ��������
rem �ɹ���Ӧ�ó������Ͱ�װ�ı�׼��ʽ������׷�����絵��Ⱥ�顢��¼��Ŀ����ݷ�ʽ����� 
rem ���棺remote Procedure Call (RPC) 
rem ���飺�ֶ�
sc config   MSIServer start= DEMAND

rem ========================================================================================================
echo.
echo Windows Management Instrumentation
rem ΢���ṩ���ýӿڼ�����ģ�ͣ��Դ�ȡ�йز���ϵͳ��װ�á�Ӧ�ó��򼰷���Ĺ�����Ϣ��
rem ������������ֹͣ��������� Windows rem ������޷�����������
rem ������������ͣ�ã��������������ķ��񶼽��޷������� 
rem ���䣺����˵�ģ���һ���ṩһ����׼�Ļ����ṹ�����Ӻ͹���ϵͳ��Դ�ķ����ɲ����㶯�� 
rem ���棺Event Log��remote Procedure Call (RPC) 
rem ���飺�Զ�          ���ܹ�Ү
sc config   winmgmt start= AUTO

rem ========================================================================================================
echo.
echo Windows Management Instrumentation Driver Extensions (Windows Management Instrumentation ������������) 
rem ΢�� �ṩϵͳ������Ϣ����/ȡ���������� 
rem ���䣺 Windows Management Instrumentation �����죬�ṩ��Ϣ�õ� 
rem ���飺 �ֶ�
sc config   Wmi start= DEMAND

rem ========================================================================================================
echo.
echo Windows Time (Windows ʱ���趨) 
rem ΢��ά�������������пͻ��˼������������ݼ�ʱ��ͬ������
rem ����������ֹͣ�����޷��������ڼ�ʱ��ͬ����������������ͣ�ã���������ķ��񶼻�ֹͣ�� 
rem ���䣺�����ʱУ׼�õģ�û��Ҫ�͹��� 
rem ���飺��ͣ�� 
sc config   W32Time start= DISABLED

rem ========================================================================================================
echo.
echo Wired AutoConfig
rem �˷�������̫���ӿ���ִ�� IEEE 802.1X ���
rem ���飺�ֶ�          ����
sc config   Dot3svc start= DEMAND

rem ========================================================================================================
echo.
echo Wireless Zero Configuration 
rem ΢��Ϊ 802.11 ���俨�ṩ�Զ��趨 
rem ���䣺�Զ�������������װ�ã�����֮�����˵������������ʹ�������������俨װ�ã�
rem ��ô����б�Ҫʹ����������������� 
rem ���棺NDIS Usermode I/O Protocol��remote Procedure Call (RPC) 
rem ���飺�Զ�
sc config   WZCSVC start= AUTO

rem ========================================================================================================
echo. 
echo WMI Performance Adapter 
rem ΢�� �ṩ���� WMIHiPerf �ṩ�ߵ�Ч�����ӿ���Ϣ�� 
rem ���䣺 �������� ���Թر� ռ��6���ڴ�
rem ���棺remote Procedure Call (RPC) 
rem ���飺 ��ͣ��
sc config   WmiApSrv start= DISABLED

rem ========================================================================================================
echo.
echo Workstation (����վ) 
rem ΢��������ά����Զ�̷������Ŀͻ����������������ֹͣ���������Щ�������޷�ʹ�á�
rem ���ͣ����������������������ķ����޷������� 
rem ���䣺 ����������������Ҫ��һЩ���� 
rem ���棺 Alerter��Background Intelligent Transfer Service��Computer Browser��Messenger��Net Logon��
rem remote Procedure Call rem (RPC) Locator 
rem ���飺 �Զ�
sc config   lanmanworkstation start= AUTO

rem ========================================================================================================
echo.
rem ���·���Ϊ��ϵͳ���� һ��Ϊ��������
echo Office Source Engine (office 2003)
rem �ɱ������ڸ��º��޸��İ�װ�ļ������������ذ�װ������º� Watson ���󱨸�ʱ����ʹ��
rem ���飺�ֶ� 
sc config   ose start= DEMAND

rem ========================================================================================================
echo.
echo                                                                       �Ż����
echo                                                                  -------------
echo                                                                  MADE By:Think
pause