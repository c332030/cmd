@echo off
:������������Ϊaero����
start /w rundll32.exe shell32.dll,Control_RunDLL desk.cpl desk,@Themes /Action:OpenTheme /file:"%Windir%\Resources\Themes\aero.theme"

tskill /F /IM EXPLORER.EXE