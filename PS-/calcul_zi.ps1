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


#liste array

$lista = "prop1","prop2","prop3"
$lista 
$lista[1]
$lista | gm
$lista += "prop4"
$lista 

[array]$listav2 = "prop1"
$listav2 | gm


$listav3 = New-Object System.Collections.ArrayList 
[System.Collections.ArrayList]$listav3 = "prop1","prop2"
$listav3.Add("prop3")
$listav3.Remove("prop3")
$listav3.RemoveAt(1)
$listav3

$listav4=@()
[array]$listav4="prop1","prop2"
$listav4 += "prop3"
$listav4[1]

$listav5=@("prop1","prop2","prop3")
$listav5 += "prop4"
$listav5[1]

# Hash table
$utilizatori = @{"gicuta"="011111";"miticuta"="022222";"florica"="0333333"}
$utilizatori.florica = "033333"
$utilizatori.Add("decebal","044444")
$utilizatori.Remove("miticuta")
$utilizatori 

$SIzeKB = @{n="SizeKb";e={$_.Length/1KB}}
$SIzeKB 
$SIzeMB = @{n="SizeKb";e={$_.Length/1MB}}
$SIzeMB 
ls c:\| ft Name, $SIzeKB, $SIzeMB 


