# In order to run this script you need to install the modules that are required for Office 365, SharePoint Online, and Skype for Business Online: #
# Microsoft Online Service Sign-in Assistant for IT Professionals RTW - https://go.microsoft.com/fwlink/p/?LinkId=286152 #
# Windows Azure Active Directory Module for Windows PowerShell (64-bit version) - https://go.microsoft.com/fwlink/p/?linkid=236297 #
# SharePoint Online Management Shell - https://go.microsoft.com/fwlink/p/?LinkId=255251 #
# Skype for Business Online, Windows PowerShell Module - https://go.microsoft.com/fwlink/p/?LinkId=532439 #

$domainHost="hbetti"
$credential = Get-Credential
Import-Module MsOnline
Connect-MsolService -Credential $credential


Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
Connect-SPOService -Url https://$domainHost-admin.sharepoint.com -credential $credential
Import-Module SkypeOnlineConnector
$sfboSession = New-CsOnlineSession -Credential $credential
Import-PSSession $sfboSession
$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $credential -Authentication "Basic" -AllowRedirection
Import-PSSession $exchangeSession -DisableNameChecking
$ccSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ -Credential $credential -Authentication Basic -AllowRedirection
Import-PSSession $ccSession -Prefix cc