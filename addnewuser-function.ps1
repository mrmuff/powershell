Import-Module ActiveDirectory -ErrorAction Inquire

function addnewuser ([string]$userid) {

    $PASS = Read-Host -Prompt "Input password: " -AsSecureString

    New-ADUser -server domaincontroller01 `
    -Confirm:$false `
    -Name $userid `
    -AccountPassword $PASS `
    -Enabled:$true `
    -DisplayName $userid `
    -UserPrincipalName "$userid@fakedomain.com" `
    -Path "cn=Users,dc=fakedomain,dc=com"
}

addnewuser fake.username
