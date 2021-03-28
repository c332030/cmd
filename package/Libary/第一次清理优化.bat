cls
@Echo Off
COLOR 2F

rem ACDsee�Ϳ����Ҽ�����
Reg delete HKCR\Directory\shell\ACDBrowse /f
Reg delete HKCR\Directory\shell\kwopen /f
Reg delete HKCR\Directory\shell\kwplaylist /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v Thunder /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v PPAP /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v Kugou7 /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v "PPS Accelerator" /f

rd /s /q "C:\Users\Administrator\Documents" 
rd /s /q "C:\Users\Administrator\Downloads" 
rd /s /q "C:\Users\Administrator\Favorites" 
rd /s /q "C:\Users\Administrator\Music" 
rd /s /q "C:\Users\Administrator\Pictures" 
rd /s /q "C:\Users\Administrator\Saved Games"
rd /s /q "C:\Users\Administrator\Videos"  
rd /s /q "C:\Documents and Settings\Administrator\����ʼ���˵�\����\����Ӱ�������"

del /a /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\��Ѷ���\����AM���԰�.*"
del /a /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\��Ѷ���\QQ2012\��ľ���ֲ���.*"
del /a /f /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\��Ѷ���\QQ2012\���� 711���վ.*"
del /a /f /q "C:\Users\Administrator\Desktop\WebQQ.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Ѹ��.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\�������ֺ� 2010.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\�������ֺ� 2010.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\PPTV �������.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���������2.*"
del /a /f /q "%UserProfile%\Application Data\Microsoft\Internet Explorer\Quick Launch\����Ӱ��.*"
del /a /f /q "C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\��������� 2.*"


del /a /f /q "%UserProfile%\����\PPTV����Ӱ��.*"
del /a /f /q "C:\Users\Public\Desktop\PPTV����Ӱ��.*"
del /a /f /q "C:\Users\Public\Desktop\���������ļ���.*"
del /a /f /q "%UserProfile%\����\ǧǧ����.*"
del /a /f /q "%UserProfile%\����\������Ϸ.*"
del /a /f /q "%UserProfile%\����\���������ļ���.*"
del /a /f /q "%UserProfile%\����\һ��GHOST.*"
del /a /f /q "C:\Documents and Settings\All Users\����\Ѹ�׿���-��Ѹ���Ӱ��.*"
del /a /f /q "C:\Users\Administrator\Desktop\������Ϸ.*"
del /a /f /q "C:\Users\Administrator\Desktop\���������ļ���.*"
del /a /f /q "C:\Documents and Settings\Administrator\Application Data\Microsoft\Internet Explorer\Quick Launch\Ѹ��.*"
del /a /f /q "C:\Documents and Settings\Administrator\Application Data\Microsoft\Internet Explorer\Quick Launch\QQӰ��.*"
del /a /f /q "%ProgramFiles%\PPLiveVA\PPLiveVA.url"
del /a /f /q "%ProgramFiles%\PPLive\PPLive.url"
del /a /f /q "C:\Documents and Settings\Administrator\����ʼ���˵�\����\�������ֺ� 2010.*"
del /a /f /q "C:\Documents and Settings\Administrator\����ʼ���˵�\�������ֺ� 2010.*"
del /a /f /q "C:\Documents and Settings\Administrator\����ʼ���˵�\����\ǧǧ����\���� ��ɫ���ذ�.*"
del /a /f /q "C:\Documents and Settings\All Users\����\PPTV����Ӱ��.*"
del /a /f /q "C:\WINDOWS\system32\pptv.*"
del /a /f /q "D:\My Documents\Desktop\���������ļ���.*"
del /a /f /q "D:\My Documents\Desktop\360����ܼ�.*"
del /a /f /q "C:\Documents and Settings\Administrator\����\360����ܼ�.*"
del /a /f /q "%SystemDrive%\WINDOWS\Tasks\SogouImeMgr.job"
del /a /f /q "C:\Documents and Settings\Administrator\����\С�ڱ�һ���ָ�.*"
del /a /f /q "C:\Users\Administrator\Desktop\С�ڱ�һ���ָ�.*"
del /a /f /q "C:\Users\Administrator\Desktop\��Ƶ�豸.*"

exit
