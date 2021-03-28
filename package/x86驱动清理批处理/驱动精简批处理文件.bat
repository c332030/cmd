@echo off 
ECHO ȡ��������Ҫ������ļ���Ȩ�� 
takeown /f "D:\Temp\Windows\System32\DriverStore\FileRepository" 
/a /r /d y 
cacls "D:\Temp\Windows\System32\DriverStore\FileRepository" /T 
/E /G administrators:F 
ECHO 
takeown /f "D:\Temp\Windows\inf" /a /r /d y 
cacls "D:\Temp\Windows\inf" /T /E /G administrators:F 
ECHO 
takeown /f "D:\Temp\Windows\winsxs" /a /r /d y 
cacls "D:\Temp\Windows\winsxs" /T /E /G administrators:F 
 
ECHO ��ȡ�豣������ 
md f:\a 
move 
"D:\Temp\Windows\System32\DriverStore\FileRepository\prnms001.inf_x
86_neutral_1dd3de102185d5d9" "f:\a" 
move 
"D:\Temp\Windows\System32\DriverStore\FileRepository\prnms002.inf_x 
33 
86_neutral_baa1493e6380688b" "f:\a" 
move "D:\Temp\Windows\inf\prnms002.inf" "f:\a" 
move 
"D:\Temp\Windows\winsxs\x86_prnms002.inf.resources_31bf3856ad364e35
_6.1.7600.16385_zh-cn_00d8d4937b2d5fba" "f:\a" 
move 
"D:\Temp\Windows\winsxs\x86_prnms002.inf_31bf3856ad364e35_6.1.7601.
17514_none_544dd0551903e23e" "f:\a" 
Pause 
 
 
ECHO ɾ�������ļ� 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\ati*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\nv*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\IG*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\brmf*_*") do 
rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\mdm*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\ph3*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\ph6*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\hpo*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\wia*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\System32\DriverStore\FileRepository\prn*_*") do rd 
/s /q "%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*ati*inf*") do rd /s /q 
"%%i" >nul  
34 
for /d %%i in ("D:\Temp\Windows\winsxs\*nv*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*IG*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*brmf*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*mdm*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*ph3*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*ph6*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*hpo*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*wia*inf*") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\winsxs\*prn*inf*") do rd /s /q 
"%%i" >nul 
del /q /a /f /s D:\Temp\Windows\inf\ati*.inf 
del /q /a /f /s D:\Temp\Windows\inf\nv*.inf 
del /q /a /f /s D:\Temp\Windows\inf\IG*.inf 
del /q /a /f /s D:\Temp\Windows\inf\brmf*.inf 
del /q /a /f /s D:\Temp\Windows\inf\mdm*.inf 
del /q /a /f /s D:\Temp\Windows\inf\ph3*.inf 
del /q /a /f /s D:\Temp\Windows\inf\ph6*.inf 
del /q /a /f /s D:\Temp\Windows\inf\hpo*.inf 
del /q /a /f /s D:\Temp\Windows\inf\wia*.inf 
del /q /a /f /s D:\Temp\Windows\inf\prn*.inf 
 
ECHO ��ԭ�豣������ 
move "f:\a\prnms001.inf_x86_neutral_1dd3de102185d5d9" 
"D:\Temp\Windows\System32\DriverStore\FileRepository" 
move "f:\a\prnms002.inf_x86_neutral_baa1493e6380688b" 
"D:\Temp\Windows\System32\DriverStore\FileRepository" 
move "f:\a\prnms002.inf" "D:\Temp\Windows\inf" 
move 
"f:\a\x86_prnms002.inf.resources_31bf3856ad364e35_6.1.7600.16385_zh-cn_00d8d4937b2d5fb
a" "D:\Temp\Windows\winsxs" 
move "f:\a\x86_prnms002.inf_31bf3856ad364e35_6.1.7601.17514_none_544dd0551903e23e" 
"D:\Temp\Windows\winsxs" 
rd f:\a 
