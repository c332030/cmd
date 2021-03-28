Dim strComputer
Dim objWMIService
Dim colListOfServices
Dim objService
Dim oReg
Dim strKeyPath
Dim strValueName
Dim dwValue


strComputer = "."
'禁用服务-------------------------
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colListOfServices = objWMIService.ExecQuery _
("Select * from Win32_Service Where Name = 'srservice'")
For Each objService in colListOfServices
objService.Change , , , , "Disabled"   
Next

'改注册表------------------------
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_ 
strComputer & "\root\default:StdRegProv")
strKeyPath = "SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore"
strValueName = "DisableSR"
dwValue = 00000001
oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,dwValue
