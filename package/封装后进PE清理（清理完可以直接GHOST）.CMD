rd /s /q "C:\winwdows\LastGood.Tmp"

rd /s /q "C:\Windows\SoftwareDistribution"

del /f /q /a "C:\pagefile.sys"

del /f /q /a "C:\swapfile.sys"

del /f /s /q /a "C:\Windows\System32\catroot2\*.*"

rd /s /q "C:\Windows\System32\catroot2"

md "C:\Windows\System32\catroot2"

attrib "C:\Windows\System32\catroot2" +h

rd /s /q "C:\ProgramData\Package Cache"

del /f /s /q /a "C:\ProgramData\Microsoft\Network\Downloader\*.*"

rd /s /q "C:\Documents and Settings\Administrator\Local Settings\History\History.IE5"

rd /s /q "C:\Documents and Settings\Administrator\Local Settings\Temporary Internet Files\Content.IE5"

del /f /s /q /a "C:\Documents and Settings\Administrator\Local Settings\Application Data\IconCache.db"

del /f /s /q /a "C:\Documents and Settings\Administrator\Local Settings\Temporary Internet Files\*.*"

del /f /s /q /a "C:\Documents and Settings\Administrator\Local Settings\Temp\*.*"

del /f /s /q /a "C:\Documents and Settings\Administrator\Local Settings\History\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\IconCache.db"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Temp\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\WebCache\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\History\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\INetCache\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Notifications\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\SettingSync\*.*"

del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Explorer\*.*"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\History\History.IE5"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Temporary Internet Files\Virtualized"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\INetCache\History.IE5"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\INetCache\IE"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\SettingSync\metastore"

rd /s /q "C:\Users\Administrator\AppData\Local\Microsoft\Windows\SettingSync\remotemetastore"

del /f /q /a "C:\Users\Administrator\AppData\Roaming\*.dll"

del /f /q /a "C:\Windows\System32\LogFiles\SQM\*.*"