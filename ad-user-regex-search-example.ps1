
# get-aduser with regex filter example

Get-ADUser -Filter {objectClass -eq "user"} -Properties * |
? {$_.distinguishedName -notlike "*disabled*" -and $_.samAccountName -match "\w{2}\d{6}"} |
Select-Object distinguishedName
