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



#local
start-job -ScriptBlock {ls c:\ } -Name LocalTest

Get-Job

Receive-Job -Name LocalTest 

Get-Command *job

get-job | Remove-Job

Receive-Job -Name LocalTest  -Keep

get-job | fl

#schedule remote

Invoke-Command -ScriptBlock {get-eventlog -LogName Application -Newest 10} -ComputerName PLABDM02,PLABDM01 -JobName RemoteLogs


Get-Job

Receive-Job -Name RemoteLogs  -Keep | select source

Receive-Job -Name RemoteLogs  -Keep | ? PSComputerName -like PLABDM01

#-Keep daca nu se pune se sterg datele
$export = Receive-Job -Name RemoteLogs  -Keep 


#triger a schedule 
Get-Command -module ScheduledTasks

get-job | Remove-Job

$triger = New-JobTrigger -Once -At (get-date).AddMinutes(3)

Register-ScheduledJob -Trigger $triger -Name RegJob -ScriptBlock  {get-eventlog -logname Application -Newest 5 }

get-job
Get-ScheduledJob

Receive-Job regjob -Keep

