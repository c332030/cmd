@shift
@echo off
copy /y %MYFILES%\bcdboot.exe %systemroot%\system32
goto 1

:1
title BIOS+UEFI�����޸�����
mode con cols=80 lines=30 
color 03
echo *******************************************************************************               
echo *                            BIOS+UEFI�����޸�����                            *
echo *                                                                             *
echo ******************************************************************************* 
echo *                                                                             *
echo * �˹�������WIN8PE�������޸�Windows����������BIOS������UEFI������             *
echo * ͬʱҲ���������޸���ϵͳ����                                                *
echo *                                                                             *
echo *******************************************************************************
echo.
set /p A=������Windows�����̷���
echo.
set /p B=�����������ļ������̷���
echo.
echo Windwos�����̷�Ϊ%A%�������ļ������̷�Ϊ%B%��ȷ��Ҫ�޸���
pause
goto 2

:2
echo �����޸�����������
bcdboot %A%:\windows /s %B%: /f all /l zh-cn
echo ������޸�
pause
cls
goto 1





