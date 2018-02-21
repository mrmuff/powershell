
$list = @()

Get-ADGroup "Fake Group SamAccountName" |
Get-ADGroupMember |
% {
    $UserWithUPN = $_ | get-aduser -Properties userPrincipalName
    $UserUPN = $UserWithUPN.UserPrincipalName
    $list += $UserUPN
  }

write $list

$list | Out-File C:\temp\userlist.txt
