Import-Module ActiveDirectory
Get-ADUser -Filter * -Properties * |
  Select -Property GivenName,Surname,Description,DistinguishedName | 
  Export-CSV "C:\powershell\ADUsers.csv" -NoTypeInformation -Encoding UTF8