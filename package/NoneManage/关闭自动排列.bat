@echo off

:: Created by: Shawn Brink
:: http://www.sevenforums.com
:: Tutorial:  http://www.sevenforums.com/tutorials/92758-windows-explorer-auto-arrange-disable.html


:: To reset all folders to default folder views
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /F

Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /F
Reg Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /F

Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F

Reg Delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F
Reg Delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F



:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe
CLS
echo.
echo.
echo Please wait for explorer to restart. No need to do anything.
echo.
TIMEOUT 10


:: To open the Computer window
explorer.exe shell:MyComputerFolder



:: Disable Auto Arrange for CompressedFolder (zipped) folder
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{80213e82-bcfd-4c4f-8817-bb27601267a9}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{80213e82-bcfd-4c4f-8817-bb27601267a9}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{80213e82-bcfd-4c4f-8817-bb27601267a9}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Contacts folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{de2b70ec-9bf7-4a93-bd3d-243f7881d492}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{de2b70ec-9bf7-4a93-bd3d-243f7881d492}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{de2b70ec-9bf7-4a93-bd3d-243f7881d492}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Documents folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{7D49D726-3C21-4F05-99AA-FDC2C9474656}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{7D49D726-3C21-4F05-99AA-FDC2C9474656}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{7D49D726-3C21-4F05-99AA-FDC2C9474656}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Games Explorer folder
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{b689b0d0-76d3-4cbb-87f7-585d0e0ce070}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{b689b0d0-76d3-4cbb-87f7-585d0e0ce070}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{b689b0d0-76d3-4cbb-87f7-585d0e0ce070}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for General Items folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5C4F28B5-F869-4E84-8E60-F11DB97C5CC7}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Libraries folder
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{C4D98F09-6124-4fe0-9942-826416082DA9}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{C4D98F09-6124-4fe0-9942-826416082DA9}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{C4D98F09-6124-4fe0-9942-826416082DA9}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Music folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{94D6DDCC-4A68-4175-A374-BD584A510B78}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{94D6DDCC-4A68-4175-A374-BD584A510B78}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{94D6DDCC-4A68-4175-A374-BD584A510B78}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Pictures folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{B3690E58-E961-423B-B687-386EBFD83239}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{B3690E58-E961-423B-B687-386EBFD83239}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{B3690E58-E961-423B-B687-386EBFD83239}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Printers folder
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{2c7bbec6-c844-4a0a-91fa-cef6f59cfda1}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{2c7bbec6-c844-4a0a-91fa-cef6f59cfda1}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{2c7bbec6-c844-4a0a-91fa-cef6f59cfda1}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Searches folder
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{0b0ba2e3-405f-415e-a6ee-cad625207853}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{0b0ba2e3-405f-415e-a6ee-cad625207853}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{0b0ba2e3-405f-415e-a6ee-cad625207853}" /V Mode /T REG_DWORD /D 4 /F


:: Disable Auto Arrange for Videos folder template
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5FA96407-7E77-483C-AC93-691D05850DE8}" /V FFLAGS /T REG_dWORD /D 1124073476 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5FA96407-7E77-483C-AC93-691D05850DE8}" /V LogicalViewMode /T REG_dWORD /D 1 /F
REG ADD "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell\{5FA96407-7E77-483C-AC93-691D05850DE8}" /V Mode /T REG_DWORD /D 4 /F
