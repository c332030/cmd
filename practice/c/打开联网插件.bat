@echo off
taskkill /f /im DrMain.exe
taskkill /f /im DrUpdate.exe
taskkill /f /im DrClient.exe
taskkill /f /im DrClient3.exe

start %systemdrive%\Drcom\DrUpdateClient\DrMain.exe
start %systemdrive%\Drcom\DrUpdateClient\DrClient3.exe