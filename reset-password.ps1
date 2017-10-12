function resetpw ($username) {

    $PW = read-host -AsSecureString -Prompt "Enter new password: "
    Get-ADUser $username
    Set-ADAccountPassword -reset -Confirm:$false -Identity $username -NewPassword $PW
}

resetpw junk.person
