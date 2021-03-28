@echo off 
color 0a
title windows7ϵͳ��������---
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo.���                                              ���
echo.���                                              ���
echo.���   ����ϵͳ�����ļ������Ե�......             ���
echo ���                                              ���
echo.���                                              ���
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo ��� ��� ��� ��� ������� ��� ��� ��� ����
echo ���������ļ����ٶ��ɵ����ļ���С��������û������β��Ϣʱ 
echo ����رձ����ڡ� 
echo �������ϵͳ�����ļ������Ժ�...... 
echo ɾ����������Ŀ¼ 
RD %windir%\$hf_mig$ /Q /S 
echo �Ѳ���ж���ļ��е����ֱ����2950800.txt 
dir %windir%\$NtUninstall* /a:d /b >%windir%\2950800.txt 
echo ��2950800.txt�ж�ȡ�ļ����б���ɾ���ļ��� 
for /f %%i in (%windir%\2950800.txt) do rd %windir%\%%i /s /q 
echo ɾ��2950800.txt 
del %windir%\2950800.txt /f /q 
echo ɾ��������װ��¼���ݣ������del /f /s /q %systemdrive%\*.log�Ѿ�����ɾ�������ļ��� 
del %windir%\KB*.log /f /q 
echo ɾ��ϵͳ��Ŀ¼����ʱ�ļ� 
del /f /s /q %systemdrive%\*.tmp 
echo ɾ��ϵͳ��Ŀ¼����ʱ�ļ� 
del /f /s /q %systemdrive%\*._mp 
echo ɾ��ϵͳ��Ŀ¼����־�ļ� 
del /f /s /q %systemdrive%\*.log 
echo ɾ��ϵͳ��Ŀ¼��GID�ļ�(������ʱ�ļ����������ò���) 
del /f /s /q %systemdrive%\*.gid 
echo ɾ��ϵͳĿ¼��scandisk������ɨ�裩���µ������ļ� 
del /f /s /q %systemdrive%\*.chk 
echo ɾ��ϵͳĿ¼��old�ļ� 
del /f /s /q %systemdrive%\*.old 
echo ɾ������վ�������ļ� 
del /f /s /q %systemdrive%\recycled\*.* 
echo ɾ��ϵͳĿ¼�±����ļ� 
del /f /s /q %windir%\*.bak 
echo ɾ��Ӧ�ó�����ʱ�ļ� 
del /f /s /q %windir%\prefetch\*.* 
echo ɾ��ϵͳά���Ȳ�����������ʱ�ļ� 
rd /s /q %windir%\temp & md %windir%\temp 
echo ɾ����ǰ�û���COOKIE��IE�� 
del /f /q %userprofile%\cookies\*.* 
echo ɾ��internet��ʱ�ļ� 
del /f /s /q "%userprofile%\local settings\temporary internet files\*.*" 
echo ɾ����ǰ�û��ճ�������ʱ�ļ� 
del /f /s /q "%userprofile%\local settings\temp\*.*" 
echo ɾ�����ʼ�¼����ʼ�˵��е��ĵ�����Ķ����� 
del /f /s /q "%userprofile%\recent\*.*" 
echo 
echo ����������������������������������
echo ����������������������������������
echo ���                                                          ���
echo.���                                                          ���
echo.���                                                          ���
echo ���                                                          ���
echo ���                ��ϲ��������ȫ����ɣ�                    ���
echo.���                                                          ���
echo ���                                                          ���
echo.���                                                          ���
echo ����������������������������������
echo ����������������������������������
echo.
