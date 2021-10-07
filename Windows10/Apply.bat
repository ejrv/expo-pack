@echo off
Color A
Color CE
taskkill /f /im explorer.exe
takeown /a /f C:\Windows\explorer.exe
icacls C:\Windows\explorer.exe /grant administrators:f
del C:\Windows\explorer.exe
copy explorer.exe C:\Windows
explorer.exe
msg * Applied!
