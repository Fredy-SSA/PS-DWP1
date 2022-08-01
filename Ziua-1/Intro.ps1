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

