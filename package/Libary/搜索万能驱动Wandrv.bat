@echo off
echo ������������װ��������������ʼ�ж�ϵͳ... 
ver|find /i "5.1" && goto xp
ver|find /i "5.2" && goto xp
ver|find /i "6.1" && goto win7
ver|find /i "6.2" && goto win8
ver|find /i "6.3" && goto win8

:xp
msg  %username% /time:2  ��ǰ����ϵͳ��Windows XP/2003 ,�����������������������Ժ�... 
set "str=[Winxp.x86]WanDrv6.exe"
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
  for /f "delims=" %%b in ('dir %%a:\ /s/b^|find "%str%" /i') do (
    start /w "" "%%b"
    exit
)
)
set ezdrv5=[WinXP.x86]EzDrv5.ini
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
  for /f "delims=" %%a in ('dir /a-d /b /s "%%a:\%ezdrv5%" 2^>nul') do (
    cd /d %%~dpa"
    cd..
    start /w "" "wandrv.exe"
    exit
  )
)
exit

rem �ж�32λ��64λϵͳ
:win7 
msg  %username% /time:2  ��ǰ����ϵͳ��Windows 7 ,�����ж�32λ��64λϵͳ�����Ժ�... 
if /i %PROCESSOR_IDENTIFIER:~0,3%=="x86" goto Wandrv86
if /i %PROCESSOR_IDENTIFIER:~0,3%=="AMD64" goto Wandrv64

:Wandrv64
rem ָ�����������ļ� 
msg  %username% /time:1  ��ǰ��64λ����ϵͳ ,������������64λ Win7ϵͳ�����������������Ժ�...  
set "str=[Win7.x64]WanDrv6.exe"
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
if exist %%a: ( 
for /f "delims=" %%b in ('dir /s/b/a-d "%%a:\%str%" 2^>nul') do ( 
if not "%%b"=="" ( 
start /w "" "%%b"
exit
)
)
)
)
set ezdrv5=[Win7.x64]EzDrv5.ini
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
  for /f "delims=" %%a in ('dir /a-d /b /s "%%a:\%ezdrv5%" 2^>nul') do (
    cd /d %%~dpa"
    cd..
    start /w "" "wandrv.exe"
    exit
  )
)
exit

:Wandrv86
rem ָ�����������ļ� 
msg  %username% /time:2  ��ǰ��32λ����ϵͳ ,������������32λ Win7ϵͳ�����������������Ժ�...  
set "str=[Win7.x86]WanDrv6.exe"
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
if exist %%a: ( 
for /f "delims=" %%b in ('dir /s/b/a-d "%%a:\%str%" 2^>nul') do ( 
if not "%%b"=="" ( 
start /w "" "%%b"
exit
)
)
)
)
set ezdrv5=[Win7.x86]EzDrv5.ini
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
  for /f "delims=" %%a in ('dir /a-d /b /s "%%a:\%ezdrv5%" 2^>nul') do (
    cd /d %%~dpa"
    cd..
    start /w "" "wandrv.exe"
    exit
  )
)
exit

:win8 
msg  %username% /time:2  ��ǰ����ϵͳ��Windows 8/8.1 ,�����ж�32λ��64λϵͳ�����Ժ�... 
if /i %PROCESSOR_IDENTIFIER:~0,3%=="x86" goto W8x86
if /i %PROCESSOR_IDENTIFIER:~0,3%=="AMD64" goto W8x64

:W8x64
rem ָ�����������ļ� 
msg  %username% /time:1  ��ǰ��64λ����ϵͳ ,������������64λ Win8/8.1 ϵͳ�����������������Ժ�...  
set "str=[Win8.x64]WanDrv6.exe"
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
if exist %%a: ( 
for /f "delims=" %%b in ('dir /s/b/a-d "%%a:\%str%" 2^>nul') do ( 
if not "%%b"=="" ( 
start /w "" "%%b"
exit
)
)
)
)
exit

:W8x86
rem ָ�����������ļ� 
msg  %username% /time:2  ��ǰ��32λ����ϵͳ ,������������32λ Win8/8.1ϵͳ�����������������Ժ�...  
set "str=[Win8.x86]WanDrv6.exe"
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
if exist %%a: ( 
for /f "delims=" %%b in ('dir /s/b/a-d "%%a:\%str%" 2^>nul') do ( 
if not "%%b"=="" ( 
start /w "" "%%b"
exit
)
)
)
)
exit