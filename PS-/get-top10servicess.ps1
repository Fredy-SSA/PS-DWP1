<#
.Synopsis
   Get-TopServices
.DESCRIPTION
   Get-TopServices
.EXAMPLE
   Get-TopServices
.EXAMPLE
   Get-TopServices 
#>
function Get-TopServices 
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [int]    
        $Top
    )

    Begin
    {

    }
    Process
    {
    Get-Service | sort name | select -First $top
    }
    End
    {
    }
}