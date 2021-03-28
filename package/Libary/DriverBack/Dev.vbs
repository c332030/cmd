On Error Resume Next
Set aArgs=WScript.Arguments
If aArgs.Count = 0 Then MsgBox "请运行 开始备份驱动！	",64,"BY: fastslz":Wscript.Quit
Set Fso = CreateObject("Scripting.FileSystemObject")
Set aNet = CreateObject("Wscript.Network")
strComputer = aNet.ComputerName:aUser = aNet.UserName:aErr = "0"
Set aGroup = GetObject("WinNT://" & strComputer & "/Administrators")
For Each aUsers in aGroup.Members
    If aUsers.Name = aUser Then aErr= "1" :End If
Next
Set WMI = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set aItems = WMI.ExecQuery("Select * from Win32_PnPSignedDriver")
If aErr = 0 Then MsgBox "本程序必须以系统管理员身份运行	",4160,"提示":Wscript.Echo "1" :Wscript.Quit :End If
If aItems.Count = 0 Then MsgBox "WMI 组件运行库出错，WinXP精简版Win2000系统会出现此状况	",4160,"提示":Wscript.Echo "2" :Wscript.Quit :End If
Path = Left(Wscript.ScriptFullName,Len(Wscript.ScriptFullName)-Len(Wscript.ScriptName))
BakPath = Path&"Drivers\"
If Fso.FolderExists(BakPath)=False Then Fso.CreateFolder(BakPath) :End If

For Each aItem in aItems
    If Instr(aItem.InfName,Chr(111)&Chr(101)&Chr(109)) > 0 Then
        DevName = Replace(aItem.DeviceName, "/", " ")
        DevName = Replace(DevName, "\", " ")
        DevName = Replace(DevName, "*", " ")
        DevName = Replace(DevName, "?", " ")
        DevName = Replace(DevName, "|", " ")
        DevName = Replace(DevName, ">", " ")
        DevName = Replace(DevName, "<", " ")
        DevName = Trim(DevName)
        If Fso.FolderExists(BakPath&DevName)=False Then Fso.CreateFolder(BakPath&DevName) :End If
        Set NfoFile = Fso.OpenTextFile(BakPath & DevName & "\Driver.nfo",2,True)
        NfoFile.WriteLine "DeviceName=" & Trim(aItem.DeviceName)
        NfoFile.WriteLine "HardWareID=" & Trim(aItem.HardWareID)
        NfoFile.WriteLine "InfName=" & Trim(aItem.InfName)
        NfoFile.Close
        Wscript.Echo Trim(aItem.DeviceName) & "ｎ" & Trim(aItem.HardWareID) & "ｎ" _
                    & BakPath&DevName & "ｎ" & Trim(aItem.InfName)
    End If
Next
