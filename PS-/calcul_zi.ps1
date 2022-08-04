$zi = read-host -Prompt "Zi" 
$luna = read-host -Prompt "Luna" 
$an = read-host -Prompt "an" 

$dt = "$zi.$luna.$an"
[datetime]$datatrecut = $dt
$azi = Get-Date
$rezultat = $azi - $datatrecut
$rezultat.Days
write-host "Te-ai nascut in data de "  $datatrecut.ToShortDateString()  " !"  -ForegroundColor Magenta
write-host "Pana acuma ai trait " $rezultat.Days " zile !. La mai mare :P"

