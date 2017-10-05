function new-service-acct
{

    $PlainPassword = $args[1]
    $SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force


    New-ADUser -Server fakeserver -Name $args[0] `
    -Path "OU=FakeOU,OU=JunkOU,DC=FakeDomain,DC=com" `
    -PasswordNeverExpires:$true `
    -AccountPassword $SecurePassword `
    -Enabled:$true
}

new-service-acct junkAccountName fakeJunkPassword
