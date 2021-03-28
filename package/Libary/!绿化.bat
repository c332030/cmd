@ECHO OFF&PUSHD %~DP0 &TITLE �̻�
taskkill /f /im KuGou*>NUL 2>NUL
taskkill /f /im Kadb* >NUL 2>NUL
taskkill /f /im KGUp*>NUL 2>NUL
regsvr32 /s quartz.dll
md "%AppData%\KuGou8" 2>NUL
del/f/q "%tmp%\sadu.exe">NUL 2>NUL
rd /s /q "%AppData%\KugooRadio"2>NUL
rd/s/q "%AppData%\KuGou8\Up"    2>NUL
rd/s/q "%AppData%\KuGou8\UpTemp"2>NUL
rd/s/q "%AppData%\KuGou8\Mobile"2>NUL
rd/s/q "%AppData%\KuGou8\AddIns"2>NUL
rd/s/q "%AppData%\KuGou8\Upgrade"2>NUL
rd/s/q "%AppData%\KuGou8\WebCache"2>NUL
rd/s/q "%AppData%\KuGou8\Upgrade.ini"2>NUL
del/f/q "%tmp%\KGUpdater.exe">NUL 2>NUL
del/f/q "%tmp%\NewUpKuGoo.exe">NUL 2>NUL
del/f/q "%AppData%\KuGou8\SingerImg">NUL 2>NUL
rd/s/q "%AppData%\KuGou8\FanxingAvatarRes"2>NUL
xcopy /e/i/y  "$APPDATA\KuGou8" "%AppData%\KuGou8" >NUL 2>NUL
:Menu
echo.&echo 1.��������ṷ���ֿ�ݷ�ʽ
echo.&echo 2.���ÿṷΪĬ�����ֲ�����
echo.&echo.
set /p a=�������ֻس���
if "%a%"=="1" Goto DesktopLnk
if "%a%"=="2" Goto SetAssoc
:SetAssoc
KuGou.exe -DoAssoc
SET E=���!&GOTO MSGBOX
:DesktopLnk
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\�ṷ����.lnk""):b.TargetPath=""%~dp0KuGou.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")&SET E=���!&GOTO MSGBOX
:MsgBox
if "%1"=="" mshta VBScript:MsgBox("%e%",vbSystemModal,"")(close)&Cls&Goto Menu