@echo off
SetLocal EnableDelayeDexpansion
title windows7 x64ĸ������ v4.13f by xianfly
:0000
cls
echo=
echo    windows7ĸ������ PE��
echo=
echo    ������������Ч������PE������ȣ�ȱ���������
echo=
echo    �Ƽ�ʹ�ã��ڴ�ϵͳ���������� ����๦��PE��
echo=
echo    ����֧����Ϣ����鿴��http://hi.baidu.com/xianfly
echo=
echo=
echo    �������install.wim�������D�̸�Ŀ¼
echo=
echo    ��Ҫһ����ʱ������10GB���ң�����ѡ��D��
echo=
echo    ���ȣ����÷������߸�ʽ����ʱ����
echo=
set/p wait=��������ʱ�����̷�������ð�ţ����س���������ʼ��
For %%I In (C E F G H I J K L M N O P Q R S T U V W X Y Z) Do If /i "%wait%"=="%%I"  Set Par=%%I:
If Not "%Par%"=="" goto 1111
echo=
echo ������󣬰����������
pause>nul
goto 0000

:1111
cls
echo=
echo ���ڼ��ؾ������Ժ�......
imagex /apply d:\install.wim 1 %Par% /verify
echo=
echo ��ʼ����Լ2-5���ӣ����Ժ�......
echo=
echo �������Ҳ����ļ�(���ļ���)���������ڣ�����������
echo ���������������PE������ȣ�ȱ���������Ƽ�ʹ�á��ڴ�ϵͳ��
echo=
cd /d %Par%
rd /s /q "%Par%\Windows\winsxs\Backup"
rd /s /q "%Par%\Windows\assembly\NativeImages_v2.0.50727_32"
rd /s /q "%Par%\Windows\assembly\NativeImages_v2.0.50727_64"
for /f %%a in ('dir /b /ad /s %Par%\Windows\assembly\^|sort /r') do rd /q %%a 2>nul
rd /s /q "%Par%\windows\Microsoft.NET\Framework\v2.0.50727\repository"
rd /s /q "%Par%\windows\Microsoft.NET\Framework64\v2.0.50727\repository"
rd /s /q "%Par%\Program Files (x86)\Windows Defender"
rd /s /q "%Par%\Program Files\Windows Defender"
rd /s /q "%Par%\ProgramData\Microsoft\Windows Defender"
rd /s /q "%Par%\Users\administrator\Favorites"
rd /s /q "%Par%\Windows\Boot\EFI\cs-CZ"
rd /s /q "%Par%\Windows\Boot\EFI\da-DK"
rd /s /q "%Par%\Windows\Boot\EFI\de-DE"
rd /s /q "%Par%\Windows\Boot\EFI\el-GR"
rd /s /q "%Par%\Windows\Boot\EFI\es-ES"
rd /s /q "%Par%\Windows\Boot\EFI\fi-FI"
rd /s /q "%Par%\Windows\Boot\EFI\fr-FR"
rd /s /q "%Par%\Windows\Boot\EFI\hu-HU"
rd /s /q "%Par%\Windows\Boot\EFI\it-IT"
rd /s /q "%Par%\Windows\Boot\EFI\ja-JP"
rd /s /q "%Par%\Windows\Boot\EFI\ko-KR"
rd /s /q "%Par%\Windows\Boot\EFI\nb-NO"
rd /s /q "%Par%\Windows\Boot\EFI\nl-NL"
rd /s /q "%Par%\Windows\Boot\EFI\pl-PL"
rd /s /q "%Par%\Windows\Boot\EFI\pt-BR"
rd /s /q "%Par%\Windows\Boot\EFI\pt-PT"
rd /s /q "%Par%\Windows\Boot\EFI\ru-RU"
rd /s /q "%Par%\Windows\Boot\EFI\sv-SE"
rd /s /q "%Par%\Windows\Boot\EFI\tr-TR"
rd /s /q "%Par%\Windows\Boot\EFI\zh-HK"
rd /s /q "%Par%\Windows\Boot\EFI\zh-TW"
rd /s /q "%Par%\windows\ime\IMEJP10"
rd /s /q "%Par%\windows\ime\imesc5"
rd /s /q "%Par%\windows\ime\IMETC10"
rd /s /q "%Par%\windows\rescache"
rd /s /q "%Par%\Windows\System32\0409"
rd /s /q "%Par%\Windows\System32\IME\IMEJP10"
rd /s /q "%Par%\Windows\System32\IME\imekr8"
rd /s /q "%Par%\Windows\System32\IME\IMESC5"
rd /s /q "%Par%\Windows\System32\IME\IMETC10"
rd /s /q "%Par%\Windows\System32\Tasks\Microsoft\Windows Defender"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\Enterprise"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\EnterpriseE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\EnterpriseN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomeBasic"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomeBasicE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomeBasicN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomePremium"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomePremiumE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\HomePremiumN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\Professional"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\ProfessionalE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\ProfessionalN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\Starter"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\StarterE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\StarterN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\UltimateE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\_Default\UltimateN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\Enterprise"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\EnterpriseE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\EnterpriseN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomeBasic"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomeBasicE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomeBasicN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomePremium"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomePremiumE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\HomePremiumN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\Professional"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\ProfessionalE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\ProfessionalN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\Starter"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\StarterE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\StarterN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\UltimateE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\eval\UltimateN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\Enterprise"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\EnterpriseE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\EnterpriseN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomeBasic"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomeBasicE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomeBasicN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomePremium"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomePremiumE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\HomePremiumN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\Professional"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\ProfessionalE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\ProfessionalN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\Starter"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\StarterE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\StarterN"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\UltimateE"
rd /s /q "%Par%\Windows\System32\zh-CN\Licenses\OEM\UltimateN"
rd /s /q "%Par%\Windows\SysWOW64\0409"
rd /s /q "%Par%\Windows\SysWOW64\IME\IMEJP10"
rd /s /q "%Par%\Windows\SysWOW64\IME\imekr8"
rd /s /q "%Par%\Windows\SysWOW64\IME\IMESC5"
rd /s /q "%Par%\Windows\SysWOW64\IME\IMETC10"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\Enterprise"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\EnterpriseE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\EnterpriseN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomeBasic"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomeBasicE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomeBasicN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomePremium"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomePremiumE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\HomePremiumN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\Professional"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\ProfessionalE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\ProfessionalN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\Starter"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\StarterE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\StarterN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\UltimateE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\_Default\UltimateN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\Enterprise"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\EnterpriseE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\EnterpriseN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomeBasic"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomeBasicE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomeBasicN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomePremium"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomePremiumE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\HomePremiumN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\Professional"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\ProfessionalE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\ProfessionalN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\Starter"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\StarterE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\StarterN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\UltimateE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\eval\UltimateN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\Enterprise"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\EnterpriseE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\EnterpriseN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomeBasic"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomeBasicE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomeBasicN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomePremium"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomePremiumE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\HomePremiumN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\Professional"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\ProfessionalE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\ProfessionalN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\Starter"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\StarterE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\StarterN"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\UltimateE"
rd /s /q "%Par%\Windows\SysWOW64\zh-CN\Licenses\OEM\UltimateN"
rd /s /q "%Par%\Windows\Web\Wallpaper\Architecture"
rd /s /q "%Par%\Windows\Web\Wallpaper\Characters"
rd /s /q "%Par%\Windows\Web\Wallpaper\Landscapes"
rd /s /q "%Par%\Windows\Web\Wallpaper\Nature"
rd /s /q "%Par%\Windows\Web\Wallpaper\Scenes"
rd /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-windowsdefender-adm_31bf3856ad364e35_6.1.7600.16385_none_8b1ab23c48f41038"
rd /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-winocr-ocrengines_31bf3856ad364e35_6.1.7600.16385_none_ff3a08834cc21b39"
rd /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-winocr-tifffilter_31bf3856ad364e35_6.1.7600.16385_none_8f17e9d40553824d"
rd /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-winocr-tifffilter-adm_31bf3856ad364e35_6.1.7600.16385_none_51e1fd8a288646da"
rd /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-winsatmediasamples_31bf3856ad364e35_6.1.7600.16385_none_0b34d0642122c1c4"
rd /s /q "%Par%\Windows\winsxs\amd64_security-malware-wi..-defender.resources_31bf3856ad364e35_6.1.7600.16385_zh-cn_4cd17fc991c0de27"
rd /s /q "%Par%\Windows\winsxs\amd64_security-malware-windows-defender_31bf3856ad364e35_6.1.7601.17514_none_b5e2b6396ecea306"
rd /s /q "%Par%\Windows\winsxs\amd64_security-malware-windows-defender-events_31bf3856ad364e35_6.1.7600.16385_none_118cf1dcd54a3dea"
rd /s /q "%Par%\Windows\winsxs\wow64_security-malware-wi..-defender.resources_31bf3856ad364e35_6.1.7600.16385_zh-cn_57262a1bc621a022"
rd /s /q "%Par%\Windows\winsxs\wow64_security-malware-windows-defender_31bf3856ad364e35_6.1.7600.16385_none_be064cc3a640e167"

cd . >456654.txt& findstr /iv "." 456654.txt > 456654.txt
cd /d %Par%\windows\System32\DriverStore\FileRepository
for /f %%i in ('dir *prn*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *prnms*.inf* /b /ad') do findstr /iv %%i %Par%\456654.txt > %Par%\456.txt&move /y %Par%\456.txt %Par%\456654.txt
cd /d %Par%\windows\winsxs
for /f %%i in ('dir *prn*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *prnms*.inf* /b /ad') do findstr /iv %%i %Par%\456654.txt > %Par%\456.txt&move /y %Par%\456.txt %Par%\456654.txt
for /f %%i in ('dir *ati*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *nv*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *brmf*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *mdm*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *ph3*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *ph6*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *wia*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
cd /d %Par%\windows\System32\DriverStore\FileRepository
for /f %%i in ('dir *ati*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *nv*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *brmf*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *mdm*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *ph3*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *ph6*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
for /f %%i in ('dir *wia*.inf* /b /ad') do @echo %%~fi>>%Par%\456654.txt
cd /d %Par%\users
cd..
dir /ad /b /s %Par%\windows\winsxs\*hpo*.inf*>>456654.txt
for /f "delims=" %%i in (456654.txt) do rd /s /q "%%i"

del /a /f /s /q "%Par%\windows\boot\fonts\cht_boot.ttf"
del /a /f /s /q "%Par%\windows\boot\fonts\jpn_boot.ttf"
del /a /f /s /q "%Par%\windows\Performance\WinSAT\winsat.log"
del /a /f /s /q "%Par%\windows\PolicyDefinitions\windowsdefender.adml"
del /a /f /s /q "%Par%\Windows\PolicyDefinitions\WindowsDefender.admx"
del /a /f /s /q "%Par%\Windows\PolicyDefinitions\MediaCenter.admx"
del /a /f /s /q "%Par%\Windows\PolicyDefinitions\zh-CN\MediaCenter.adml"
del /a /f /s /q "%Par%\windows\PolicyDefinitions\zh-CN\windowsdefender.adml"
del /a /f /s /q "%Par%\windows\Resources\Themes\architecture.theme"
del /a /f /s /q "%Par%\windows\Resources\Themes\characters.theme"
del /a /f /s /q "%Par%\windows\Resources\Themes\landscapes.theme"
del /a /f /s /q "%Par%\windows\Resources\Themes\nature.theme"
del /a /f /s /q "%Par%\windows\Resources\Themes\scenes.theme"
del /a /f /s /q "%Par%\Windows\System32\Msdtc\MSDTC.LOG"
del /a /f /s /q "%Par%\Windows\Tasks\SCHEDLGU.TXT"
del /a /f /s /q "%Par%\Windows\System32\catroot2\dberr.txt"
del /a /f /s /q "%Par%\Windows\System32\catroot2\edb.chk"
del /a /f /s /q "%Par%\Windows\System32\catroot2\edb.log"
del /a /f /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-i..ed-chinese-csapplet_31bf3856ad364e35_6.1.7600.16385_none_9d765a74fa6fff30\PINTLCSA.dll"
del /a /f /s /q "%Par%\Windows\winsxs\amd64_microsoft-windows-i..lified-chinese-core_31bf3856ad364e35_6.1.7601.17514_none_763763505e93084b\PMIGRATE.dll"
del /a /f /s /q "%Par%\Windows\winsxs\wow64_microsoft-windows-i..ed-chinese-csapplet_31bf3856ad364e35_6.1.7600.16385_none_a7cb04c72ed0c12b\PINTLCSA.dll"
del /a /f /s /q "%Par%\Windows\winsxs\wow64_microsoft-windows-i..lified-chinese-core_31bf3856ad364e35_6.1.7601.17514_none_808c0da292f3ca46\pintlgnt.ime"
del /a /f /s /q "%Par%\Windows\winsxs\wow64_microsoft-windows-i..lified-chinese-core_31bf3856ad364e35_6.1.7601.17514_none_808c0da292f3ca46\PMIGRATE.dll"
del /a /f /q "%Par%\Windows\*.log"
del /a /f /q "%Par%\Users\Administrator\*.log*"
del /a /f /q "%Par%\Users\Administrator\*dat{*.*"
del /a /f /q "%Par%\Users\Default\*.log*"
del /a /f /q "%Par%\Users\Default\*dat{*.*"
del /a /f /q "%Par%\Windows\ServiceProfiles\LocalService\*.log*"
del /a /f /q "%Par%\Windows\ServiceProfiles\LocalService\*dat{*.*"
del /a /f /q "%Par%\Windows\ServiceProfiles\NetworkService\*.log*"
del /a /f /q "%Par%\Windows\ServiceProfiles\NetworkService\*dat{*.*"
del /a /f /q "%Par%\Windows\System32\config\*.log*"
del /a /f /q "%Par%\Windows\System32\config\*}.*"
del /a /f /q "%Par%\Windows\System32\config\systemprofile\*.log*"
del /a /f /q "%Par%\Windows\System32\config\systemprofile\*dat{*.*"
del /a /f /q "%Par%\Windows\System32\SMI\Store\Machine\*.log*"
del /a /f /q "%Par%\Windows\System32\SMI\Store\Machine\*dat{*.*"
del /a /f /q "%Par%\ProgramData\Microsoft\Network\Downloader\*.dat"
del /a /f /q "%Par%\ProgramData\Microsoft\Windows\Ringtones\*.wma"
del /a /f /q "%Par%\Windows\*.log"
del /a /f /q "%Par%\windows\inf\*.pnf"
del /a /f /q "%Par%\windows\Microsoft.NET\Framework\v2.0.50727\nge*.log"
del /a /f /q "%Par%\windows\Microsoft.NET\Framework64\v2.0.50727\nge*.log"
del /a /f /q "%Par%\windows\Resources\Ease of Access Themes\hc*.theme"
del /a /f /q "%Par%\windows\Resources\Themes\architecture.theme"
del /a /f /q "%Par%\windows\Resources\Themes\characters.theme"
del /a /f /q "%Par%\windows\Resources\Themes\landscapes.theme"
del /a /f /q "%Par%\windows\Resources\Themes\nature.theme"
del /a /f /q "%Par%\windows\Resources\Themes\scenes.theme"
del /a /f /q "%Par%\windows\security\logs\*"
del /a /f /q "%Par%\Windows\servicing\Packages\*.7600.16385.cat"
del /a /f /q "%Par%\Windows\servicing\Packages\*.7600.16385.mum"
del /a /f /q "%Par%\Windows\System32\catroot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\*7600.16385.cat"
del /a /f /q "%Par%\Windows\System32\catroot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\*MediaCenter*"
del /a /f /q "%Par%\Windows\System32\*.log"
del /a /f /q "%Par%\Windows\System32\IMJP10*.*"
del /a /f /q "%Par%\Windows\SysWOW64\IMJP10*.*"
del /a /f /q "%Par%\Windows\System32\migration\im*mig.dll"
del /a /f /q "%Par%\Windows\SysWOW64\migration\im*mig.dll"
del /a /f /q "%Par%\Windows\winsxs\ManifestCache\*blobs.bin"
del /a /f /q "%Par%\Windows\winsxs\Manifests\*imejp*.manifest"
del /a /f /q "%Par%\Windows\winsxs\Manifests\*winocr*.manifest"
del /a /f /q "%Par%\Windows\winsxs\Manifests\*MediaCenter*"
del /a /f /q "%Par%\windows\inf\ati*.inf"
del /a /f /q "%Par%\windows\inf\nv*.inf"
del /a /f /q "%Par%\windows\inf\brmf*.inf"
del /a /f /q "%Par%\windows\inf\mdm*.inf"
del /a /f /q "%Par%\windows\inf\ph3*.inf"
del /a /f /q "%Par%\windows\inf\ph6*.inf"
del /a /f /q "%Par%\windows\inf\wia*.inf" 

del /a /f /s /q "%Par%\Windows\System32\catroot\*MediaCenter*.cat"
del /a /f /s /q "%Par%\Windows\System32\catroot\*prnhp00*.cat"
del /a /f /s /q "%Par%\windows\winsxs\*mediacenter*"
del /a /f /s /q "%Par%\Windows\winsxs\Manifests\*prnhp*.inf*.manifest"
del /a /f /s /q "%Par%\ProgramData\Microsoft\Windows\Ringtones\*.wma"
del /a /f /s /q "%Par%\Windows\System32\DriverStore\FileRepository\*.pnf"
del /a /f /s /q "%Par%\Windows\winsxs\*.ani"
del /a /f /s /q "%Par%\Windows\winsxs\*.chm"
del /a /f /s /q "%Par%\Windows\winsxs\*.cur"
del /a /f /s /q "%Par%\Windows\winsxs\*.fon"
del /a /f /s /q "%Par%\Windows\winsxs\*.imd"
del /a /f /s /q "%Par%\Windows\winsxs\*.jpg"
del /a /f /s /q "%Par%\Windows\winsxs\*.log"
del /a /f /s /q "%Par%\Windows\winsxs\*.mid"
del /a /f /s /q "%Par%\Windows\winsxs\*.theme"
del /a /f /s /q "%Par%\Windows\winsxs\*.ttc"
del /a /f /s /q "%Par%\Windows\winsxs\*.ttf"
del /a /f /s /q "%Par%\Windows\winsxs\*.wav"
del /a /f /s /q "%Par%\Windows\winsxs\*.wmv"
del /a /f /s /q "%Par%\Windows\winsxs\*Defender*.*"
del /a /f /s /q "%Par%\Windows\winsxs\FileMaps\*imejp10*.cdf-ms"
del /a /f /s /q "%Par%\Windows\winsxs\FileMaps\*imekr8*.cdf-ms"
del /a /f /s /q "%Par%\Windows\winsxs\FileMaps\*imesc5*.cdf-ms"
del /a /f /s /q "%Par%\Windows\winsxs\FileMaps\*imetc10*.cdf-ms"
del /a /f /s /q "%Par%\Windows\winsxs\imjp*.*"
del /a /f /s /q "%Par%\Windows\winsxs\imkr*.*"
del /a /f /s /q "%Par%\Windows\winsxs\imsc*.*"
del /a /f /s /q "%Par%\Windows\winsxs\imtc*.*"
del /a /f /s /q "%Par%\Windows\winsxs\license.rtf"
for /f %%a in ('dir /b /ad /s %Par%\Windows\winwxs\^|sort /r') do rd /q %%a 2>nul
cd . >123321.txt& findstr /iv "." 123321.txt > 123321.txt
cd . >123.txt& findstr /iv "." 123.txt > 123.txt
dir /a /b /on %Par%\windows\inf\prn*.inf>123321.txt
dir /a /b /on %Par%\windows\inf\prnms*.inf>123.txt
findstr /vg:123.txt 123321.txt >321.txt
for /f "delims=" %%i in (321.txt) do del /a /f /q "%Par%\windows\inf\%%i"
del /q *.txt

md "%Par%\Windows\winsxs\Backup"
md "%Par%\Users\administrator\Favorites"
md "%Par%\Windows\assembly\NativeImages_v2.0.50727_32"
md "%Par%\Windows\assembly\NativeImages_v2.0.50727_64"
md "%Par%\windows\Microsoft.NET\Framework\v2.0.50727\repository"
md "%Par%\windows\Microsoft.NET\Framework64\v2.0.50727\repository"

echo=
echo    �������
:2222
echo=
echo    ��Ҫ�رձ�����
echo=
echo    ���޸�����ϵͳ�ķ�װ���⣨DLL�ļ���ע���
echo=
echo    �޸���ɣ���ִ�����һ���������µ�WIM�ļ�
echo=
set/p wait=�����������������֡�1����
if "%wait%"=="1" goto 3333
echo=
echo ������󣬰����������
pause>nul
goto 2222
echo    
:3333
cls
If Not Exist d:\NewWIM MD d:\NewWIM
echo=
echo    ���������µ�install.wim�����Ժ�......
imagex /capture %Par% "d:\NewWim\install.WIM" "Windows 7 ULTIMATE" /boot /compress maximum /verify
echo=
echo    �µ�install.wim�ڡ�D:\NewWIM����
echo=
echo    QQ����Ⱥ��59596618
echo=
echo    �չ���
echo           ��������˳���
pause>nul
exit