# Invoke-RDPClientInfection

I just read an interesting blog post from the Microsoft Threat Intelligence team: <https://www.microsoft.com/en-us/security/blog/2024/10/29/midnight-blizzard-conducts-large-scale-spear-phishing-campaign-using-rdp-files/>  

Apparently APT29/Midnight Blizzard recently used signed RDP files to infect organizations. This repository contains a small [Proof of Concept script](Invoke-RDPClientInfection.ps1) that a malicious entity could host on their RDP server. If Drive Redirection is enabled, this script tries to copy a file into the client-user's Startup folder.

## Usage

If Drive Redirection is enabled, you can manually run the PowerShell script on the Remote Desktop Host to try it out. Or you could automatically run the script e.g. via the Windows Task Scheduler on Windows Logon.

## Video

I also created a video where I showcase the script: <https://youtu.be/u7wDsbMuD8c>  
The video is in German, but **English subtitles are available.**
