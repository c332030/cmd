@echo off 
 
takeown /f "D:\Temp\Windows\Web\Wallpaper" /a /r /d y 
cacls "D:\Temp\Windows\Web\Wallpaper" /T /E /G administrators:F 
 
takeown /f "D:\Temp\Windows\Resources" /a /r /d y 
cacls "D:\Temp\Windows\Resources" /T /E /G administrators:F 
 
takeown /f "D:\Temp\Windows\Globalization" /a /r /d y 
cacls "D:\Temp\Windows\Globalization" /T /E /G administrators:F 
 
for /d %%i in ("D:\Temp\Windows\Web\Wallpaper\Scenes") do rd /s /q 
"%%i" >nul 
for /d %%i in ("D:\Temp\Windows\Web\Wallpaper\Landscapes") do rd 
/s /q "%%i" >nul 
for /d %%i in ("D:\Temp\Windows\Web\Wallpaper\Architecture") do rd 
/s /q "%%i" >nul 
for /d %%i in ("D:\Temp\Windows\Web\Wallpaper\Characters") do rd 
/s /q "%%i" >nul 
for /d %%i in ("D:\Temp\Windows\Web\Wallpaper\Nature") do rd /s /q  
36 
"%%i" >nul 
 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-shell-wallpaper-scen
es_31bf3856ad364e35_6.1.7600.16385_none_481a9f966ced79b8") do rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-s..allpaper-landscap
es_31bf3856ad364e35_6.1.7600.16385_none_895c1fabae7e0073") do rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-s..lpaper-architectu
re_31bf3856ad364e35_6.1.7600.16385_none_7d726b356f4d064c") do rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-s..allpaper-characte
rs_31bf3856ad364e35_6.1.7600.16385_none_61c24f69cc3498eb") do rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-shell-wallpaper-natu
re_31bf3856ad364e35_6.1.7600.16385_none_7971f9ecb7ec988a") do rd /s /q "%%i" >nul 
 
 
del "D:\Temp\Windows\Resources\Themes\architecture.theme" 
/f/s/q/a 
del "D:\Temp\Windows\Resources\Themes\characters.theme" /f/s/q/a 
del "D:\Temp\Windows\Resources\Themes\landscapes.theme" /f/s/q/a 
del "D:\Temp\Windows\Resources\Themes\nature.theme" /f/s/q/a 
del "D:\Temp\Windows\Resources\Themes\scenes.theme" /f/s/q/a 
del "D:\Temp\Windows\Resources\Ease of Access Themes\hc*.theme" 
/f/s/q/a 
 
for /d %%i in ("D:\Temp\Windows\Globalization\MCT") do rd /s /q 
"%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\Globalization\ELS\Transliteration") do rd /s /q 
"%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-m..ttheme-cn-compone
nt_31bf3856ad364e35_6.1.7601.17514_none_c922329b38a46590") do rd /s /q "%%i" >nul 
for /d %%i in 
("D:\Temp\Windows\winsxs\x86_microsoft-windows-i..ansliteration-now
ow_31bf3856ad364e35_6.1.7600.16385_none_540313e4ac6e0c0b") do rd /s /q "%%i" >nul
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
��¼3�����