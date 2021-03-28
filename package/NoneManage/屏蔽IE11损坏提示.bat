@ECHO OFF&TITLE �̻�
Pushd %~dp0
:Menu
Cls
If Not "%1"=="" (Set c=%1&Goto Goto)
Echo.&Echo 1.����IE11����ʾ
Echo.&Echo 2.�ָ�IE11����ʾ
Echo.
:Menu
Set /p a=�����룺
If "%a%"=="1" Goto ����IE11����ʾ
If "%a%"=="2" Goto �ָ�IE11����ʾ
Echo.&Echo ������Ч�����������룡
pause >nul
Goto Menu
: ����IE11����ʾ
if exist "%windir%\System32\drivers\etc\hosts_" (Echo.&Echo �����ι�!���������!&PAUSE >NUL 2>NUL
Goto Menu
)
(
xcopy /i/s/y "%windir%\System32\drivers\etc\hosts" "%windir%\System32\drivers\hosts����\"
echo       ���ո� >> %windir%\System32\drivers\etc\hosts
echo #����IE11����ʾ >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 ieonline.microsoft.com >> %windir%\System32\drivers\etc\hosts
ren "%windir%\System32\drivers\hosts����\hosts" "hosts_"
xcopy /i/s/y "%windir%\System32\drivers\hosts����\hosts_" "%windir%\System32\drivers\etc\"
rd/s/q "%windir%\System32\drivers\hosts����\"
)
Echo.&Echo ��ɣ���������أ�&PAUSE >NUL 2>NUL
Goto Menu
: �ָ�IE11����ʾ
if not exist "%windir%\System32\drivers\etc\hosts_" (Echo.&Echo δ���ι�,�޷��ָ�!���������!&PAUSE >NUL 2>NUL
Goto Menu)
(
del /f /q "%windir%\System32\drivers\etc\hosts"
ren "%windir%\System32\drivers\etc\hosts_" "hosts"
)
Echo.&Echo ���,��������أ�&PAUSE >NUL 2>NUL
Goto Menu