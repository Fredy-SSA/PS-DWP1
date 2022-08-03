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



Get-CimInstance -ClassName win32_service 
Get-CimInstance -ClassName win32_process  | select -First 1 | select *


Get-CimInstance -ClassName win32_service  | gm


#On LON-CL1, in the Windows PowerShell console, enter the following command, and then select Enter:
Invoke-CimMethod -ComputerName LON-DC1 -ClassName Win32_OperatingSystem -MethodName Reboot 
#In the Windows PowerShell console, enter the following command, and then select Enter:
Invoke-CimMethod -ClassName Win32_Process -MethodName Create -Arguments @{CommandLine='mspaint.exe'} 
#In the Windows PowerShell console, enter the following command, and then select Enter:
Get-CimInstance -Class Win32_Process -Filter "Name='mspaint.exe'" | Invoke-CimMethod -Name Terminate


#Variable

$Integer = 1
$string = "string"
$data = Get-Date
$proces = Get-Process notepad

$Integer | gm
$Integer.GetType()
$string.GetType()
$string

$data.GetType()
$proces.GetType()

$proces.Kill()

Get-Variable

cd variable:
ls


$string -eq "string"
$string = $null

Get-Command *-variable

Remove-Variable string
Clear-Variable string

${ceva frumos} = "habar nu am"

$mere = 10
$mere = $mere + 2
$mere = $mere + 2
$mere

Write-Host "Ana are $mere mere!"