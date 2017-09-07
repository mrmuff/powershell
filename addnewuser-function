Import-Module ActiveDirectory -ErrorAction Inquire

function addnewuser ([string]$userid) {
    $PASS = Read-Host -Prompt "Input password: " -AsSecureString
    New-ADUser -server  -Confirm:$false -Name $userid -AccountPassword $PASS -Enabled:$true -DisplayName $userid -UserPrincipalName "$userid@" -Path ""
}

addnewuser
