@echo off

set targetFileName="KeyManager.kmdb"
set sourceFileName=%targetFileName%

set target="%userprofile%\AppData\Roaming\keymanager"
set source="%~dp0data"

if not exist %source%\%sourceFileName% (
  echo.
  echo 不存在文件 %source%\%sourceFileName%
  pause >nul
  exit 0
)

if exist %target%\%targetFileName% (
  del /f /q %target%\%targetFileName%
) else if not exist %target% (
  mkdir %target%
)

echo.
mklink /h %target%\%targetFileName% %source%\%sourceFileName%

pause >nul
