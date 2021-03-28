:: �漰�� rasphone.pbk �ļ��ı���� find ���Ҽ��ݱ��������, �˹������ɵĿ���������Ʋ�������.
:: ����������ֵ DialParamsUID, Guid, �����߲�����, ����ϵͳ�Զ�����.
:: �� ncpa.cpl ˢ�²鿴�� ���� rasdial ... ��, ϵͳ���Զ�������صļ�ֵ.
:: Guid �ļ�ֵҲ���� MS �Ĺ��� UUIDGEN ������, ����: http://filediag.com/windows/process/Uuidgen.Exe.html
:: PreviewUserPw=1 ָ�� ��ʾ����, �����֤���.
@echo off & setlocal enableDelayedExpansion
set phoneBook="%AllUsersProfile%\Application Data\Microsoft\Network\Connections\Pbk\rasphone.pbk"
set /a num=0& call :findNum num
find "[PPPoE]" !phoneBook!>nul||set "num="
>>!phoneBook! (
  echo.&echo [PPPoE!num!]
  for /f "delims=" %%a in (%~s0) do (
    if /i "%%a"==":end:phoneBook" set getValue=N
    if /i "!getValue!"=="Y" (echo %%a)
    if /i "%%a"==":phoneBook" set "getValue=Y"
  )
)

(set vbsfn="%temp%\scuttemp.vbs")
>!vbsfn! (
  for /f "delims=" %%a in (%~s0) do (
    if /i "%%a"==":end:genVbs" set getValue=N
    if /i "!getValue!"=="Y" (echo %%a)
    if /i "%%a"==":genVbs" set "getValue=Y"
  )
)
cscript //nologo !vbsfn!
start Control netconnections& rem start ncpa.cpl
start rasphone -d PPPoE!num!
exit /b

:findNum num rem ���ҵ绰����δ�õ���Ŀ��ʶ����
  find "[PPPoE!%1!]" !phoneBook!>nul||exit /b
  set /a %1+=1
goto :findNum
exit /b

:genVbs
Set WshShell = Wscript.CreateObject("Wscript.Shell")
' ����һ����ݷ�ʽ����,����������������ͬ������
strDesktop = WshShell.SpecialFolders("Desktop")
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\\�������!num!.lnk")
' ���ÿ�ݷ�ʽ��ִ��·��
oShellLink.TargetPath = "rasphone.exe"
oShellLink.Arguments = "-d PPPoE!num!"
REM oShellLink.WindowStyle = 1              ' ���з�ʽ
REM oShellLink.Hotkey = ""                  ' ���ÿ�ݷ�ʽ�Ŀ�ݼ�
oShellLink.IconLocation = "rasphone.exe,0"  ' �����ļ��п�ݷ�ʽ��ͼ��·��
oShellLink.Description = "���ӿ������ PPPoE!num!"         ' ���ÿ�ݷ�ʽ������
oShellLink.WorkingDirectory = "::{7007ACC7-3202-11D1-AAD2-00805FC1270E} :{BA126AD7-2166-11D1-B1D0-00805FC1270E}"   ' ��ʼλ��
oShellLink.Save
:end:genVbs


:phoneBook
Encoding=1
Type=5
AutoLogon=0
UseRasCredentials=0
BaseProtocol=1
VpnStrategy=0
ExcludedProtocols=3
LcpExtensions=1
DataEncryption=8
SwCompression=1
NegotiateMultilinkAlways=0
SkipNwcWarning=0
SkipDownLevelDialog=0
SkipDoubleDialDialog=0
DialMode=1
DialPercent=75
DialSeconds=120
HangUpPercent=10
HangUpSeconds=120
OverridePref=15
RedialAttempts=3
RedialSeconds=60
IdleDisconnectSeconds=0
RedialOnLinkFailure=1
CallbackMode=0
CustomDialDll=
CustomDialFunc=
CustomRasDialDll=
AuthenticateServer=0
ShareMsFilePrint=0
BindMsNetClient=0
SharedPhoneNumbers=0
GlobalDeviceSettings=0
PrerequisiteEntry=
PrerequisitePbk=
PreferredPort=
PreferredDevice=
PreferredBps=0
PreferredHwFlow=0
PreferredProtocol=0
PreferredCompression=0
PreferredSpeaker=0
PreferredMdmProtocol=0
PreviewUserPw=1
PreviewDomain=0
PreviewPhoneNumber=0
ShowDialingProgress=1
ShowMonitorIconInTaskBar=1
CustomAuthKey=-1
AuthRestrictions=632
TypicalAuth=1
IpPrioritizeRemote=1
IpHeaderCompression=0
IpAddress=0.0.0.0
IpDnsAddress=0.0.0.0
IpDns2Address=0.0.0.0
IpWinsAddress=0.0.0.0
IpWins2Address=0.0.0.0
IpAssign=1
IpNameAssign=1
IpFrameSize=1006
IpDnsFlags=0
IpNBTFlags=0
TcpWindowSize=0
UseFlags=1
IpSecFlags=0
IpDnsSuffix=

NETCOMPONENTS=
ms_server=0
ms_msclient=0

MEDIA=rastapi
Port=PPPoE5-0
Device=WAN ΢�Ͷ˿� (PPPOE)

DEVICE=rastapi
PhoneNumber=
AreaCode=
CountryCode=1
CountryID=1
UseDialingRules=0
Comment=
LastSelectedPhone=0
PromoteAlternates=0
TryNextAlternateOnFail=1
:end:phoneBook