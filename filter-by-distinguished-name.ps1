# example to filter ad users by DN with wildcard in search

# I would just pipe to a where-object {distinguishedName -notlike "*OU=OU,DC=example,DC=com"}

Get-ADUser -Filter {objectClass -eq "user"} -Properties * |
? {$_.distinguishedName -notlike "*disabled*"} |
Select-Object distinguishedName
