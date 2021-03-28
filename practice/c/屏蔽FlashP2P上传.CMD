::����Flash P2P�ϴ�

@cd \

@copy /y "%windir%\system32\Macromed\Flash\mms.cfg" "%windir%\system32\Macromed\Flash\mms.tmp"
@del /f /q "%windir%\system32\Macromed\Flash\mms.cfg"
@findstr /v "RTMFPP2PDisable" "%windir%\system32\Macromed\Flash\mms.tmp">>%windir%\system32\Macromed\Flash\mms.cfg
@echo RTMFPP2PDisable=1 >> %windir%\system32\Macromed\Flash\mms.cfg

@copy /y "%windir%\syswow64\Macromed\Flash\mms.cfg" "%windir%\syswow64\Macromed\Flash\mms.tmp"
@del /f /q "%windir%\syswow64\Macromed\Flash\mms.cfg"
@findstr /v "RTMFPP2PDisable" "%windir%\syswow64\Macromed\Flash\mms.tmp">>%windir%\syswow64\Macromed\Flash\mms.cfg
@echo RTMFPP2PDisable=1 >> %windir%\syswow64\Macromed\Flash\mms.cfg

@copy /y "%windir%\system32\mms.cfg" "%windir%\system32\mms.tmp"
@del /f /q "%windir%\system32\mms.cfg"
@findstr /v "RTMFPP2PDisable" "%windir%\system32\mms.tmp">>%windir%\syswow64\Macromed\Flash\mms.cfg
@echo RTMFPP2PDisable=1 >> %windir%\system32\mms.cfg

cls
@echo off
echo.
echo ���������ֶ����������Ļ��档������