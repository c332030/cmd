@echo off
echo ��װϵͳʱ����������������(��������)����
echo ����������Եꡢ��ë�ҡ���ײ˵�����U��PE��å��Ϊ�����Ե�...
del /f /q "%AllUsersProfile%\����ʼ���˵�\����\����\*.*"
del /a /f /s /q "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
del /a /f /s /q "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
del /a /f /s /q "%SystemDrive%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v StartCCC /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /v StartCCC /f
echo ��������ļ���Ŀ¼
del /a /f /q "%SystemRoot%\dndset*.exe"
rd /s /q "%SystemRoot%\dndonce"
del /a /f /q "%SystemRoot%\myset*.exe"
rd /s /q "%SystemRoot%\lmtonce"
del /a /f /q "%SystemRoot%\abcdef*.exe"
rd /s /q "%SystemRoot%\abcdef"
del /a /f /q "%SystemRoot%\Euqvib*.exe"
rd /s /q "%SystemRoot%\Euqvib"
echo �����ɣ�
exit