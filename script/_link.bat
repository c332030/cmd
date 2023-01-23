@echo off

%utf8%

setlocal

set current_path=%~dp0

call %current_path%\link-file.bat link-dir.bat %current_path% %windir%

call %current_path%\link-file.bat link-file.bat %current_path% %windir%

endlocal
