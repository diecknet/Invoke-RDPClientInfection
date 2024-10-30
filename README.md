# Invoke-RDPClientInfection

I just read an interesting blog post from the Microsoft Threat Intelligence team: <https://www.microsoft.com/en-us/security/blog/2024/10/29/midnight-blizzard-conducts-large-scale-spear-phishing-campaign-using-rdp-files/>  

Apparently APT29/Midnight Blizzard recently used signed RDP files to infect organizations. This repository contains a small Proof of Concept script that a malicious entity could cost on their RDP server. If Drive Redirection is enabled, this script tries to copy a file into the client-user's Startup folder.
