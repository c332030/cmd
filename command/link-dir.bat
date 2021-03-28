@echo off

::set name=common-constant-ts
::call script\link-dir-prompt.cmd

::set source=%~dp0..\..\%name%
::set target=%~dp0..\node_modules\%name%

set target="%userprofile%\.vscode"
set source="%~dp0data"

call link-dir-prompt.cmd
