#providers 

Get-help about_*Provider
Get-Help about_FileSystem_Provider

get-help about_Providers -ShowWindow

Get-PSProvider
cd Cert:\CurrentUser 

#PS drive

Get-PSDrive

get-help New-PSDrive -ShowWindow

New-PSDrive -Name "DiskSS" -PSProvider "FileSystem" -Root C:\windows

cd c:
Set-Location .\Alin

#edit registry 

Set-Location HKLM:\SOFTWARE
Get-ChildItem
New-Item -name Demo
New-ItemProperty -Path HKLM:\SOFTWARE\Demo -name Version -Value "1.0.0.0" -PropertyType string

Get-ChildItem 
Get-ItemProperty .\Demo


#WMI & CIM

Get-WmiObject -Namespace root\CIMv2 -List
Get-CimClass -Namespace root\CIMv2


Get-CimClass *network*
Get-CimInstance Win32_NetworkAdapter   

Get-CimClass *bios*

Get-CimInstance  Win32_BIOS 

get-cimclass -Namespace root\securitycenter2

Get-WmiObject -Class win32_logicaldisk
Get-CimInstance -ClassName win32_logicaldisk 


Get-CimInstance -Query "SELECT * FROM Win32_LogicalDisk WHERE DriveType = 3"

#Remote CIM Session

#In the Windows PowerShell console, enter the following command, and then select Enter:
$s = New-CimSession -ComputerName Computername
#In the Windows PowerShell console, enter the following command, and then select Enter:
Get-CimInstance -CimSession $s -ClassName Win32_OperatingSystem 
#In the Windows PowerShell console, enter the following command, and then select Enter:
$s | Remove-CimSession





