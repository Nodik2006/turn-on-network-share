@echo off
color 02
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall firewall set rule group="�����㦥��� ��" new enable=Yes
netsh advfirewall firewall set rule group="��騩 ����� � 䠩��� � �ਭ�ࠬ" new enable=Yes
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "LocalAccountTokenFilterPolicy" /t REG_DWORD /d 1 /f
icacls "C:\users" /grant Everyone:(OI)(CI)F /T /Q >nul
net share users="C:\users" /grant:Everyone,FULL >nul
icacls "C:\users" /grant ��:(OI)(CI)F /T /Q >nul
net share users="C:\users" /grant:��,FULL >nul
powershell -ExecutionPolicy ByPass -command "set-netconnectionprofile -NetworkCategory Private"
exit