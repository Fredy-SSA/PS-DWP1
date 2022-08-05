Enable-PSRemoting -SkipNetworkProfileCheck

#remote connection 1 to 1
Enter-PSSession -ComputerName PLABDM02 

# 1 to 1 Remote
Enter-PSSession -ComputerName PLABDM02
exit # to exit pssesion

#1 to many 
Invoke-Command -ComputerName PLABDM02,PLABDM01 -ScriptBlock {


Get-Service | ? status -like "stopped"
} |  export-csv c:\service.csv

Invoke-Command -ComputerName PLABDM02,PLABDM01 -ScriptBlock {


Get-Service | ? status -like "stopped"
} |  export-csv c:\service.csv

#sending variable to remote 1

$logs = Read-host "How many logs ?"
Invoke-Command -ArgumentList $logs  -ComputerName PLABDM02,PLABDM01 -ScriptBlock {
Param($log)
Get-EventLog -LogName Application -Newest $log
}

#sending variable to remote 2

$logs = Read-host "How many logs ?"
Invoke-Command -ComputerName PLABDM02,PLABDM01 -ScriptBlock {

Get-EventLog -LogName Application -Newest $Using:logs
}

$BDM1 = New-PSSession -ComputerName PLABDM01
Get-PSSession

$all = New-PSSession -ComputerName PLABDM02,PLABDM01

$BDM1
$all

Enter-PSSession -Session $BDM1

Invoke-Command -Session $all -ScriptBlock {
hostname
}

$BDM1 | Remove-PSSession

Get-PSSession | Remove-PSSession

Get-PSSession 

