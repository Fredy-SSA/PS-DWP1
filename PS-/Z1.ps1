Start-Transcript ./transcript.txt

# Get PowerShell Module path
$env:PSModulePath -split ";"

invoke-item 'C:\Program Files\WindowsPowerShell\Modules'

ii 'C:\Program Files\WindowsPowerShell\Modules'

# Get PowerShellCOmputer Name
$env:COMPUTERNAME

Stop-Transcript 


Get-Variable
$PSUICulture  
$PSVersionTable 

#update latest PS version
winget search Microsoft.PowerShell

#Set Execution policy
Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

# `
Set-ExecutionPolicy -ExecutionPolicy `
RemoteSigned 

$data = Get-Date
$Parola = "Pa$$0rd $data"
$Parola = 'Pa$$0rd $data'
$Parola = "Pa`$`$0rd $data"

$Parola

# DIsplay folder/file info

ls "C:\Users\a856239\OneDrive - Atos"
ls "C:\Users\a856239\OneDrive - Atos" -Recurse

Get-ChildItem "C:\Users\a856239\OneDrive - Atos"
Get-ChildItem "C:\Users\a856239\OneDrive - Atos" -Recurse

# open file in application
code .\transcript.txt
notepad .\transcript.txt

# COmenzi


Get-Module

get-module -ListAvailable

Get-Command -Module  Microsoft.PowerShell.Utility
Get-Command -Module  Microsoft.PowerShell.Utility -Verb get
Get-Command -Module  Microsoft.PowerShell.Utility -Noun *data*

Get-Command *-*data*

Get-Command get-*
Get-Command get-* -Module Microsoft.Graph.*

# Find Ping alternative in PowerShell

get-command test-*
get-command *connection*

get-help -online

Test-NetConnection -Port 80 -InformationLevel Detailed
Test-NetConnection google.ro -Port 443 -InformationLevel Detailed

get-help Test-NetConnection -ShowWindow

Test-Connection google.ro

Get-History


#Help 

get-help about_*

get-help about_Comparison_Operators -ShowWindow

get-help about_If -ShowWindow
get-help about_Switch -ShowWindow

0 -eq 0
0 -eq 1

update-help -Force

mkdir help
save-help ./help 
update-help -SourcePath .\help


get-help Get-Process -ShowWindow 

help Get-Process
man get-process 

get-help Get-Process -Examples
get-help Get-Process -Full
get-help Get-Process -Online

# Find cmdlet/module /scripts

find-module *azure*  
Install-Module AzureADPreview   -Scope AllUsers 

Get-Command -module AzureADPreview 

Connect-AzureAD 
# Use https://cdx.transform.microsoft.com/ account from tenant
Disconnect-AzureAD 

find-script *azuread*

# 

Get-alias

dir c:\
gci c:\
Get-ChildItem c:\

get-alias -Definition get-childitem
get-alias -Definition copy-item
get-alias -Definition get-process

Show-Command
Get-ChildItem -LiteralPath c:\

#help advanced

get-help get-service -Full
get-help get-service -ShowWindow

get-help Test-Connection -ShowWindow

$b = 1
$a = "1"

$a.GetType()
$b.GetType()



[int]$b + [int]$a
[string]$b + [string]$a

