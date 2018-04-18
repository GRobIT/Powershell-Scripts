$UserCredential = Get-Credential
Connect-MsolService -Credential $UserCredential
New-MsolUser -DisplayName "Horzy Genao" -FirstName Horzy -LastName Genao -UserPrincipalName hgenao@betson.com -UsageLocation US -LicenseAssignment hbetti:O365_BUSINESS_ESSENTIALS
