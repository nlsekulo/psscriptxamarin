$User = Read-Host -Prompt 'Type On or Off to Enable or Disable Hyper V'

if($User -eq "On" -or $User -eq "on") {
	write-host("Hyper V is turning on!")
	bcdedit /set hypervisorlaunchtype auto
} elseif($User -eq "Off" -or $User -eq "off") {
	write-host("Hyper V is turning off!")
	bcdedit /set hypervisorlaunchtype off
} else {
	write-host("Did not enter a correct command. Relaunch and try again")
}
Restart-Computer
Read-Host -Prompt "Press Enter to exit"

<# Create shortcut of the script. Open shortcut properties. Under the "Target" field add this line before the file path 'powershell.exe -ExecutionPolicy Bypass -File'     You have to enable this once ->   'Set-ExecutionPolicy RemoteSigned'  #>