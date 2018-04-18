Function Generate-Form {

    Add-Type -AssemblyName System.Windows.Forms    

    # Build Form
    $objForm = New-Object System.Windows.Forms.Form
    $objForm.Text = "Test"
    $objForm.Size = New-Object System.Drawing.Size(220,100)

    # Add Label
    $objLabel = New-Object System.Windows.Forms.Label
    $objLabel.Location = New-Object System.Drawing.Size(80,20) 
    $objLabel.Size = New-Object System.Drawing.Size(100,20)
    $objLabel.Text = "Hi there!"
    $objForm.Controls.Add($objLabel)

    # Show the form
    $objForm.Show()| Out-Null

    # wait 5 seconds
    Start-Sleep -Seconds 5

    # destroy form
    $objForm.Close() | Out-Null

}

generate-form