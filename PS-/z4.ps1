<#
Script care calculeaza de cate zile esti pe pamant.
Introduci datele de genu :
Zi:01
Luna:01
An:1979

Output:
Te-ai nascut in data de 01/01/1979 .
Pana acuma ai trait .... zile !

#>
[datetime]$trecut = "01.01.1979"
[datetime]$datazi = get-date
$rezultat = $datazi - $trecut  
$rezultat.days


# Scripting
# Unblock file
ls -Recurse | Unblock-File

#forEach

$colectie = Get-Service
$colectie | ForEach-Object {
"$($_.Name)  -  $($Psitem.DisplayName)"
$_.Name
#actiunea , rulezii lucruri si le extragi din colectie cu $_.captabel $psitem.captabel din colectie
}

foreach ($i in $colectie) {
$i.Name
#actiunea , rulezii lucruri si le extragi din colectie cu $i
}

# 
foreach ($currentItemName in $collection) {
    <# $currentItemName is the current item #>
}
#if 

$numar = 11

if ($numar -le 5) {
    <# Action to perform if the condition is true #>
    "NUmarul este mai mic sau egal cu cinci !"
}elseif ($numar -gt 5 -and $numar -le 10) {
    <# Action when this condition is true #>
    "Numarul este mai mare de 5 si mai mic de 10 !"
}else {
    "Mai mare de 11"

}
#more
get-help about_if -ShowWindow

#switch

$computer = "TSR-SRV7"

$role = "unknown role"
$location = "unknown location"

Switch -wildcard ($computer) {
    "*-CL*" {$role = "client"}
    "*-SRV*" {$role = "server"}
    "*-DC*" {$role = "domain controller"}
    "LON-*" {$location = "London"}
    "VAN-*" {$location = "Vancouver"}
    "TSR-*" {$location = "Timisoara"}
    Default {"$computer is not a valid name"}
}

Write-Host "$computer is a $role in $location"

## more
get-help about_switch -ShowWindow


#for

for ($i = 1; $i -le 15; $i++) {
    <# Action that will repeat until the condition is met #>
    write-host $i
}

1..15 | foreach {
    $_
}

get-help about_for -ShowWindow

get-help about_Do -ShowWindow
get-help about_while -ShowWindow

$dd_user

#RestAPi example

$CoinBase = Invoke-RestMethod "https://api.coindesk.com/v1/bpi/currentprice.json" 
$CoinBase | fl
$CoinBase.bpi.EUR.rate

$json = Get-Content .\ex.json | ConvertFrom-Json
$json.employees


get-service | select name, displayname  | ConvertTo-Json > service.json
$json2 = Get-Content service.json | ConvertFrom-Json
$json2

