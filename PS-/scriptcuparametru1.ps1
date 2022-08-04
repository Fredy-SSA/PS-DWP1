Param (
    [string]$ComputerName,
    [int]$EventID
)

$erroractionpreference = "Continue"
$error.clear()
$test = 4
zfsdfsd
$test= 8
Write-Host "The value of `$ComputerName is: $ComputerName"
Write-Host "The value of `$EventID is: $EventID"
$test
get-date > error_script.txt 
$Error >> error_script.txt

