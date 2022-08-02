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