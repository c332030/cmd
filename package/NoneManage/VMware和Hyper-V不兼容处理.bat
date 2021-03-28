bcdedit /copy {default} /d "Windows 8 Without Hyper-V"
pause

bcdedit /set {} hypervisorlaunchtype off
pause