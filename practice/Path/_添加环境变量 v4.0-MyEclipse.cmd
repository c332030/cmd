@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Java_Home" /t REG_EXPAND_SZ /d "%~dp0binary\com.sun.java.jdk8.win32.x86_64_1.8.0.u66"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "Path" /t REG_EXPAND_SZ /d "%Path%;%%Java_Home%%\bin;%%Java_Home%%\jre\bin"

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /f /v "classPath" /t REG_EXPAND_SZ /d ".;%%Java_Home%%\lib\tools.jar;%%Java_Home%%\lib\dt.jar"

start SystemPropertiesAdvanced.exe

::pause >nul