@echo off

setlocal

set current_path=%~dp0

call %current_path%\link-file.bat link-dir-prompt.bat %current_path% %windir%
call %current_path%\link-file.bat link-file.bat %current_path% %windir%

endlocal
