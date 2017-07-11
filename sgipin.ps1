# function to get the ingress rules of an ec2 security group

function sgipin {
    param ($sgid)
    Get-EC2SecurityGroup -GroupId $sgid `
    | Select-Object -ExpandProperty IpPermissions | Select-Object FromPort,IpProtocol,IpRanges,ToPort,IpRange
}

sgipin sg-0ebc5374
