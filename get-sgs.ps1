# (Get-EC2SecurityGroup sg-ffc5a684) | gm
# (Get-EC2SecurityGroup sg-ffc5a684).IpPermissions | gm

# (Get-EC2SecurityGroup sg-ffc5a684).GroupId | tee C:\Out.txt
# (Get-EC2SecurityGroup sg-ffc5a684).IpPermissions | tee c:\out.txt -Append

clear

[string]$label = "GroupName"

write "" | out-file -FilePath c:\out.txt

$mygroups = Get-EC2SecurityGroup 

foreach ($mygroup in $mygroups) {
    Get-EC2SecurityGroup $mygroup.GroupId 
    write $label $mygroup.GroupName | tee C:\Out.txt -Append
    $mygroup | select-object -ExpandProperty IpPermissions | tee c:\out.txt -Append 
    }

