<#
.Synopsis
   Test parametrii
.DESCRIPTION
   Test parametrii v2
.EXAMPLE
   scriptcu parametrii.ps1
.EXAMPLE
   Another example of how to use this cmdlet
#>

    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Computername,

        # ID help description
        [int]
        $ID
    )



    Write-Host "The value of `$ComputerName is: $ComputerName"
    Write-Host "The value of `$EventID is: $ID"
