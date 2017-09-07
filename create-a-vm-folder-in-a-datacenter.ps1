
Get-Datacenter dc-infra01

(Get-View (Get-View -viewtype datacenter -filter @{"name"="dc-infra01"}).vmfolder).CreateFolder("sn")

