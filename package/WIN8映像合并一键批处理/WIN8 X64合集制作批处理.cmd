@echo off
color 2f

ECHO.
ECHO     ##------------------------------------------------##
ECHO     ##    ������������WIN8 ���������ģ�64λ�ϼ�����   ##
ECHO     ##------------------------------------------------##
ECHO.
ECHO            **��������Ӧʹ�ù���Ա�������**
ECHO.
ECHO     ��ѡ������Ŀ¼��Ӧ�������ض��ļ��к��ļ���
ECHO     1��$OEM$�ļ��С�X64WIN8ISO�ļ��� 
ECHO     2��$OEM$�������$$�ļ��С�imagex.exe��oscdimg.exe��ei.cfg��product.ini��
ECHO     3��Ӧ����WIN8 PRO[��VL]ԭ��ISO������ȫ����ȡ��X64WIN8ISO�ļ�����
ECHO.
ECHO     ˵��
ECHO     a����Ҫ������ҵ�棬�����ȸ�����instll.wim��������Ŀ¼��������Ϊx64ent.wim
ECHO     b����Ҫ����Server2012�������İ桢��׼���GUI�棬�����ȸ�����ԭ��instll.wim��������Ŀ¼��������Ϊx64Ser.wim
ECHO     c����δ������x64ent.wim�������Զ��Թ���   
ECHO     d������Խ��汾����������ڲ�������ʱ���пռ�Խ��
ECHO.
ECHO    Ӧ��֤���㹻�Ŀ��пռ䣨25G���ϣ���Ϊ���������������ļ���Ӧ�÷��ڴ˷�����
SET /P PART=.  (C��D��E��F��G��H��I...)��ѡ��
ECHO.
ECHO     �������������ʼ�Զ��������ڿ�ʼ��
pause >nul

IF NOT EXIST %PART%:\X64WIN8ISO goto end
IF NOT EXIST %PART%:\X64WIN8ISO\sources\install.wim goto end
IF NOT EXIST %PART%:\$OEM$ goto end
IF NOT EXIST %PART%:\$OEM$\imagex.exe goto end
IF NOT EXIST %PART%:\$OEM$\oscdimg.exe goto end
IF NOT EXIST %PART%:\$OEM$\product.ini goto end
IF NOT EXIST %PART%:\$OEM$\ei.cfg goto end
IF NOT EXIST %PART%:\$OEM$\$$ goto end
IF EXIST %PART%:\install.wim (
rename %PART%:\install.wim old_install.wim
)
IF EXIST %PART%:\tempwim (
rename %PART%:\tempwim old_temp
)

cls

ECHO.
ECHO     ##------------------------------------------------##
ECHO     ##    ������������WIN8 ���������ģ�64λ�ϼ�����   ##
ECHO     ##------------------------------------------------##
ECHO.
ECHO.
ECHO -------------------׼��������ӳ��������------------------------
ECHO.
md %PART%:\tempwim
move %PART%:\X64WIN8ISO\sources\install.wim %PART%:\
%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 1 "Windows 8 רҵ�� 64λ" "Windows 8 רҵ�� 64λ"
%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 2 "Windows 8 ��׼�� 64λ" "Windows 8 ��׼�� 64λ"

ECHO.
ECHO -------------------������ Win8 Core ӳ����------------------------
ECHO.
DISM /Mount-Wim /wimfile:%PART%:\install.wim /index:2 /MountDir:%PART%:\tempwim
Dism /Image:%PART%:\tempwim /Set-ProductKey:FB4WR-32NVD-4RW79-XQFWH-CYQG3
DISM /commit-image /MountDir:%PART%:\tempwim

ECHO  ������CORE����ADMINӳ��

xcopy %PART%:\$OEM$\$$ %PART%:\tempwim\windows /e /y
DISM /commit-image /MountDir:%PART%:\tempwim /append
DISM /unmount-Wim /MountDir:%PART%:\tempwim /discard
%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 3 "Windows 8 ��׼�� 64λ [Admin]" "Windows 8 ��׼�� 64λ �������ù���Ա"


ECHO.
ECHO -------------------������ Win8 PRO ��  WMC ӳ����------------------------
ECHO.
ECHO  ������PRO���밲װKEY

DISM /Mount-Wim /wimfile:%PART%:\install.wim /index:1 /MountDir:%PART%:\tempwim
Dism /Image:%PART%:\tempwim /Set-ProductKey:XKY4K-2NRWR-8F6P2-448RF-CRYQH
DISM /commit-image /MountDir:%PART%:\tempwim

ECHO  ����������PRO ADMIN

xcopy %PART%:\$OEM$\$$ %PART%:\tempwim\windows /e /y
DISM /commit-image /MountDir:%PART%:\tempwim /append

ECHO  ���������PRO WMC�汾ADMIN

DISM /Image:%PART%:\tempwim /Set-Edition:ProfessionalWMC
DISM /Image:%PART%:\tempwim /Set-ProductKey:RR3BN-3YY9P-9D7FC-7J4YF-QGJXW
DISM /commit-image /MountDir:%PART%:\tempwim /append

ECHO  ���������PRO WMC�汾

DEL %PART%:\tempwim\Windows\Panther\unattend.xml /f /q
DEL %PART%:\tempwim\Windows\system32\ToDesktop.scf /f /q
DEL %PART%:\tempwim\Windows\ShutDown8.exe /f /q
RD %PART%:\tempwim\Windows\Setup\Scripts /s /q
DISM /commit-image /MountDir:%PART%:\tempwim /append
DISM /unmount-Wim /MountDir:%PART%:\tempwim /discard

ECHO  �������������µ�PROӳ��������

%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 4 "Windows 8 רҵ�� 64λ [Admin]" "Windows 8 רҵ�� 64λ �������ù���Ա"
%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 5 "Windows 8 רҵ�� 64λ [Admin] [ý������]" "Windows 8 רҵ�� 64λ [ý������] �������ù���Ա"
%PART%:\$OEM$\imagex.exe /info %PART%:\install.wim 6 "Windows 8 רҵ�� 64λ [ý������]" "Windows 8 רҵ�� 64λ [ý������]"


IF EXIST %PART%:\x64ent.wim ( 
   ECHO -------------------������ Win8 Enterprise ӳ����------------------------
   %PART%:\$OEM$\imagex.exe /info %PART%:\x64ent.wim 1 "Windows 8 ��ҵ�� 64λ" "Windows 8 ��ҵ�� 64λ"   
   DISM /Mount-Wim /wimfile:%PART%:\x64ent.wim /index:1 /MountDir:%PART%:\tempwim
   Dism /Image:%PART%:\tempwim /Set-ProductKey:8M9BN-YB7W9-YV3VJ-7WMGG-MKH3V
   DISM /commit-image /MountDir:%PART%:\tempwim
   xcopy %PART%:\$OEM$\$$ %PART%:\tempwim\windows /e /y
   DISM /commit-image /MountDir:%PART%:\tempwim /append
   DISM /unmount-Wim /MountDir:%PART%:\tempwim /discard
   %PART%:\$OEM$\imagex.exe /info %PART%:\x64ent.wim 2 "Windows 8 ��ҵ�� 64λ [Admin]" "Windows 8 ��ҵ�� 64λ �������ù���Ա"
)


ECHO.
ECHO -------------------ӳ�����������ʼ�ϲ�ӳ��------------------------
ECHO.

IF EXIST %PART%:\x64ent.wim ( 
   DISM /Export-Image /SourceImageFile:%PART%:\x64ent.wim /SourceIndex:1 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
)

DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:2 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:1 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:6 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim

IF EXIST %PART%:\x64ent.wim ( 
   DISM /Export-Image /SourceImageFile:%PART%:\x64ent.wim /SourceIndex:2 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
)

DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:3 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:4 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\install.wim /SourceIndex:5 /DestinationImageFile:%PART%:\X64WIN8ISO\sources\install.wim

ECHO ���Server2012�������İ桢��׼���GUI��

IF EXIST %PART%:\x64Ser.wim ( 
   DISM /Export-Image /SourceImageFile:%PART%:\x64Ser.wim /SourceIndex:2 /DestinationImageFile:%PART%:\x64WIN8ISO\sources\install.wim
   DISM /Export-Image /SourceImageFile:%PART%:\x64Ser.wim /SourceIndex:4 /DestinationImageFile:%PART%:\x64WIN8ISO\sources\install.wim
)


copy %PART%:\$OEM$\ei.cfg %PART%:\X64WIN8ISO\sources /y
copy %PART%:\$OEM$\product.ini %PART%:\X64WIN8ISO\sources /y
del %PART%:\install.wim
RD %PART%:\tempwim

cls
echo.
echo     �ɹ��������һinstall.wim����%PART%:\X64WIN8ISO\sourcesĿ¼�ڣ�
echo.
ECHO -------------------����ɿ����ڿ�¼��ISO�ļ� ��------------------------
echo.
echo     �Ƿ�����ISO?  �������������
echo.
echo     �������Ҫ�������رձ����ڡ�
echo.

pause >nul
echo.
%PART%:\$OEM$\oscdimg.exe -u2 -b%PART%:\X64WIN8ISO\boot\etfsboot.com -h -lHRM_CCSA_X64FRE_ZH-CN_DV5 -t8/25/2012,00:00:00 %PART%:\X64WIN8ISO %PART%:\Win8_x64_Nin1.iso
ECHO.
ECHO -------------------��������-------------------
ECHO.
ECHO �����%PART%������Win8_x64_Nin1.iso
ECHO.
ECHO ��������˳�
pause >nul
EXIT

:end 
ECHO.
ECHO     ~_~ ������
ECHO.
ECHO     ���������ļ��к��ļ��Ƿ��ڴ˷����ĸ�Ŀ¼�¡�
ECHO.
ECHO     ��������˳�
pause >nul
