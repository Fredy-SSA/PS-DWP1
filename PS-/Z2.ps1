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

