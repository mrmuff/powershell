
Import-Module activedirectory
get-aduser Anjunk.user -Properties *
set-aduser -Identity $user -DisplayName "junk.user"
set-aduser -Identity $user -dist "junk.user"
Rename-ADObject -Identity "fake_guid" -NewName "junk.user"
get-aduser junk.user
get-aduser "fake_guid" -Properties * | select *name*
set-aduser -Identity "fake_guid"
set-aduser -Identity "fake_guid"  -SamAccountName junk.user
set-aduser -Identity "fake_guid"  -UserPrincipalName junk.user
