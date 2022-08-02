New-ADGroup -Name TestGR -Path "ou=IT,dc=practicelabs,dc=com" -GroupScope Global

New-ADUser -Name Gicuta -Department IT
Add-ADGroupMember TestGR -Members Gicuta, weybridgee

Get-ADGroupMember TestGR
Set-ADUser Gicuta -StreetAddress "Undeva canva ceva" -City "Timisoara" -State "Timis" -Country "RO"

$Parola = Read-Host -AsSecureString "AccountPassword"
New-ADUser -Name "David" -Accountpassword $Parola -Enabled $true -UserPrincipalName David@practicelabs.com -SamAccountName David

get-command *-ADUser*

help Set-ADUser -example


New-ADObject -Name TestContact -type contact -DisplayName "Test Contact " 
Get-ADObject -Filter 'ObjectClass -eq "contact"'

Get-Command *-ADObject*

#net CMD
Test-Connection 192.168.0.2
Test-Connection 192.168.0.2 -Count 1 | fl

Get-NetIPConfiguration
get-command *-dnsclient*
get-command *-NetIP*

#pipeline

Get-aduser -Filter * | ? name -like *a | set-aduser -Department "Necajitii"

Get-ADComputer -Filter * | test-connection -count 1

# byPropertyName
Get-ADComputer -Filter * | select Name, @{n="ComputerName";e={$psitem.Name}}
Get-ADComputer -Filter * | select Name, @{n="ComputerName";e={$_.Name}}
Get-ADComputer -Filter * | select Name, @{n="ComputerName";e={$_.Name}} | get-member

Get-ADComputer -Filter * | select Name, @{n="ComputerName";e={$_.Name}} | test-connection -count 1

Get-ADComputer -Filter * | select Name, @{n="ComputerName";e={$_.Name + " test"}}

#custom name 
#@{n="Nume CUstom Label";e={$psitem.numeproprietate}}


#ex creati pt get-process -   ProcessName  un custom name care se
# numeste PN si importa datele




notepad export.csv
$importCSv = Import-Csv export.csv
$importCSv | gm

Get-Process | select *, @{n='pn';e={$_.processname}} | Export-Clixml export.xml 

notepad export.xml 

$testImportXml = Import-Clixml export.xml 
$testImportXml | ft 
$testImportXml | gm


# byValue

get-help get-service -ShowWindow

get-service

"AarSvc_60721c6a" | get-service

"AarSvc_60721c6a","ZSATunnel", "WSearch" | get-service
"running" | get-service #nu functioneaza 


get-service | ? status -like "running" | ? DisplayName -like w*

get-service | ? status -like "running" | ? DisplayName -like w* | select name -ExpandProperty Name | out-file export.txt
code .\export.txt

Get-Content .\export.txt | Get-Service

# Get-Member 
#metods
#proprietati

get-process | gm

get-process | Get-Member
start-process     | get-member

get-process | ? processname -like "notepad" 
$notepad = get-process | ? processname -like "notepad" 
$notepad.Kill()
get-process | ? processname -like "notepad" | Stop-Process


#sortare
get-process | Sort-Object ProcessName 
get-process | Sort-Object ProcessName  -Descending
get-process | Sort-Object ProcessName  -Unique


Get-Service | Select -Last 10
Get-Service | Select -first 10


get-process | measure -Property CPU -Sum -Average -Minimum -Maximum -StandardDeviation

Get-Process | gm
Get-Process | select processname | gm

Get-Process |select * | ft -AutoSize -Wrap
Get-Process | fl
Get-Process | fw ProcessName -Column 5 

Get-Process | ft | export-csv fttest.csv # !!!! nu se poate exporta dupa format...
code .\fttest.csv

# formatare in unitatea de masura dorita 
Get-Process | select PM, @{n="PM(MB)";e={'{0:N2}' -f ($psitem.PM / 1MB) }}, @{n="PM(GB)";e={'{0:N6}' -f ($psitem.PM / 1GB) }}

# ###
##### Filtering
# ###

# Simple sintax
# comanda | ? capdetabel -like "*valoare*"
get-service | ? Name -like "a*"
get-service | ? Status -eq "running"
get-service | Where-Object Status -eq "running"
get-service | Where Status -eq "running"
get-service | ? Name -like "a*" |  ? Status -eq "running"

#advance filtering
# comanda | ? {$_.capdetabel -like "*valoare*"}
# comanda | ? {$PSItem.capdetabel -operatordecomparare_gen_like "*valoare*" -or $PSItem.capdetabel -like "*valoarea a 2-a*" }
get-service | ? {$_.Name -like "a*" -and $_.status -eq "running" }

# loop / 

$sursadedate = Get-Content .\export.txt 
$sursadedate | % {
write-host "---------------------------------"
write-host $_   -ForegroundColor Yellow
"#################################"
}


foreach ($Item in $sursadedate) {
    write-host "---------------------------------"
    write-host $Item   -ForegroundColor Yellow
    "#################################"
}

#export to file
Get-Date > service.txt
Get-Service >> service.txt 


Get-date| Out-File service.txt 
Get-Service | Out-File -Append service.txt 


get-process | Out-GridView

