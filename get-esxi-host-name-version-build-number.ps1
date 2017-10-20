get-vmhost |
sort Name | % {
    $currentesxi = (Get-View -VIObject $_).Name
    $currentesxiversion = (Get-View -VIObject $_).Config.Product.Version
    $currentesxibuild = (Get-View -VIObject $_).Config.Product.Build
    Write-Host -foregroundcolor green "ESXi host: " $currentesxi `t "Version: " $currentesxiversion `t "Build: " $currentesxibuild
    }
