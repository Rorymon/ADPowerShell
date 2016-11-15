<#
.SYNOPSIS
    .
.DESCRIPTION
    This script takes an AD account name and returned when it was created and when it was last modified. Created by Rory Monaghan. 
.PARAMETER UName
    Username
#>



Param(
  [Parameter(Mandatory=$True,Position=1)]
   [string]$UName
)

get-aduser -identity $UName -properties whencreated |Select whencreated | write-host
get-aduser -identity $UName -properties whenchanged | Select whenchanged | write-host
