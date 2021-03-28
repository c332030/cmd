@echo off
color 2f

ECHO.
ECHO     ------------------------------------------------
ECHO       ������������WIN8 ���������ģ�32λ64λ�ϼ�����   
ECHO     ------------------------------------------------
ECHO.
ECHO            **��������Ӧʹ�ù���Ա�������**
ECHO.
ECHO     1���뽫64λ��install.wim�������·�����Ŀ¼������ΪWin8x64.wim 
ECHO     2���뽫32λ��install.wim�������·�����Ŀ¼
ECHO     ע�����ϵ�32λ��64λWIM�ļ���ָ�����ö��һ�����������WIM�ļ�
ECHO.
ECHO    Ӧ��֤���㹻�Ŀ��пռ䣨15G���ϣ���Ϊ���������������ļ�Ӧ�÷��ڴ˷�����
SET /P PART=.  (C��D��E��F��G��H��I...)��ѡ��
ECHO.
ECHO     �������������ʼ�Զ��������ڿ�ʼ��
pause >nul
ECHO.
IF NOT EXIST %PART%:\Win8x64.wim goto end
IF NOT EXIST %PART%:\install.wim goto end
ECHO.
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:1 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:2 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:3 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:4 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:5 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:6 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:7 /DestinationImageFile:%PART%:\install.wim
DISM /Export-Image /SourceImageFile:%PART%:\Win8x64.wim /SourceIndex:8 /DestinationImageFile:%PART%:\install.wim

ECHO.
ECHO  �ϲ�������������˳�
PAUSE >NUL
EXIT

:end 
ECHO.
ECHO     ~_~ ������
ECHO.
ECHO     ���������ļ��Ƿ��ڴ˷����ĸ�Ŀ¼�¡�
ECHO.
ECHO     ��������˳�
pause >nul
