@echo off

chcp 65001 >nul

set app_name=Android

set target="%userprofile%\AppData\Local\%app_name%"
set source="%~dp0app"
call link-dir-prompt.bat

set target="%userprofile%\AppData\Roaming\%app_name%"
set source="%~dp0data"
call link-dir-prompt.bat

pause >nul
