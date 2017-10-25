# to do: get ad user

function getuser {

    Param($user)
    get-aduser -Identity $user -Properties * |
    Format-List SamAccountName,LockedOut,DisplayName,DistinguishedName
}

getuser junkusername
