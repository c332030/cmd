@ECHO OFF&PUSHD %~DP0 &TITLE 卸载
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
taskkill /f /im KuGou*>NUL 2>NUL
taskkill /f /im Kadb* >NUL 2>NUL
taskkill /f /im KGUp*>NUL 2>NUL
taskkill /f /im dlna_player*>NUL 2>NUL
KuGou.exe -CancelAssoc
rd /s /q "%AppData%\KuGou8" 2>NUL
rd /s /q "%AppData%\KGDataBak"2>NUL
rd /s /q "%AppData%\KugooRadio"2>NUL
reg delete HKCU\Software\KuGou8 /F>NUL 2>NUL
reg delete HKLM\Software\KuGou8 /F>NUL 2>NUL
reg delete HKLM\Software\Wow6432Node\KuGou8 /F>NUL 2>NUL
del "%tmp%\Start*">NUL 2>NUL&del "%tmp%\Http*">NUL 2>NUL
ping 127.0.0.1 /n 3 >NUL 2>NUL&rd/s/q "%AppData%\KUGOU8"2>NUL
ECHO.&ECHO.完成! &PAUSE >NUL 2>NUL