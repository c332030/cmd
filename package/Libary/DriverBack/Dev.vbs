On Error Resume Next
Set aArgs=WScript.Arguments
If aArgs.Count = 0 Then MsgBox "������ ��ʼ����������	",64,"BY: fastslz":Wscript.Quit
Set Fso = CreateObject("Scripting.FileSystemObject")
Set aNet = CreateObject("Wscript.Network")
strComputer = aNet.ComputerName:aUser = aNet.UserName:aErr = "0"
Set aGroup = GetObject("WinNT://" & strComputer & "/Administrators")
For Each aUsers in aGroup.Members
    If aUsers.Name = aUser Then aErr= "1" :End If
Next
Set WMI = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set aItems = WMI.ExecQuery("Select * from Win32_PnPSignedDriver")
If aErr = 0 Then MsgBox "�����������ϵͳ����Ա�������	",4160,"��ʾ":Wscript.Echo "1" :Wscript.Quit :End If
If aItems.Count = 0 Then MsgBox "WMI ������п����WinXP�����Win2000ϵͳ����ִ�״��	",4160,"��ʾ":Wscript.Echo "2" :Wscript.Quit :End If
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
        Wscript.Echo Trim(aItem.DeviceName) & "��" & Trim(aItem.HardWareID) & "��" _
                    & BakPath&DevName & "��" & Trim(aItem.InfName)
    End If
Next
