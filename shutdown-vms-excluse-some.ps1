# To do: shutdown VMs

Get-VM -Location fakecluster |
Where-Object {
$_.GuestId -eq "windows7Server64Guest" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name" -and `
$_.Name -ne "junk-vm-name"
} |
Shutdown-VMGuest -whatif
