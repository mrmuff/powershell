Add-PSSnapin VMware.VimAutomation.Core

Connect-VIServer 

Get-Command -Module VMware.VimAutomation.Core -Noun *permission*

Get-Datacenter

Get-VIPermission -Entity dc-cust01 | sort Principal | ft -auto

Get-VIPermission -Entity dc-infra01 | sort Principal | ft -auto

$cust01perms = Get-VIPermission -Entity dc-cust01 | sort Principal

$infra01perms = Get-VIPermission -Entity dc-infra01 | sort Principal

Compare-Object -ReferenceObject $cust01perms -DifferenceObject $infra01perms | fl *
