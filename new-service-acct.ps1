function new-service-acct
{
    $PlainPassword = $args[1]
    $SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force

    [string]$name = $args[0]

    New-ADUser -Server fakeservername `
    -Name $args[0] `
    -UserPrincipalName "$name@fakedomainname.com" `
    -Path "OU=fakeOU02,OU=fakeOU01,DC=fakedomainname,DC=com" `
    -PasswordNeverExpires:$true `
    -AccountPassword $SecurePassword `
    -Enabled:$true `
    -verbose
}

new-service-acct "junkuser" "fakepassword"
