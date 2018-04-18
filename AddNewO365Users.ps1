Import-Csv -Path "C:\Users\grobinson\Documents\Powershell CVS\AddNewO365Users.csv" | ForEach-Object {
    New-MsolUser `
        -DisplayName $_.DisplayName `
        -FirstName $_.FirstName `
        -LastName $_.LastName `
        -UserPrincipalName $_.UserPrincipalName `
        -UsageLocation $_.UsageLocation `
        -LicenseAssignment $_.AccountSkuId `
        -Password $_.Password `
}
