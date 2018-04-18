Import-Module ActiveDirectory
Import-Csv -Path "C:\Users\grobinson\Documents\Powershell CVS\AddNewADUsers.csv" | ForEach-Object {
    $SAM = $_.GivenName[0] + $_.Surname
    $UserPrincipalName = $SAM + "@betson.com"
    $Name = $_.GivenName + " " + $_.Surname
    New-ADUser `
        -UserPrincipalName $UserPrincipalName `
        -EmailAddress $UserPrincipalName `
        -SamAccountName "$SAM" `
        -Name $Name `
        -DisplayName $Name `
        -Path $_.Path `
        -GivenName $_.GivenName `
        -Surname $_.Surname `
        -Description $_.Description `
        -AccountPassword (ConvertTo-SecureString Welc0me123! -AsPlainText -Force) `
        -Enabled $true `
        -PasswordNeverExpires $True `
        -PassThru
    Set-ADUser $SAM -replace @{msnpallowdialin=$true}
}