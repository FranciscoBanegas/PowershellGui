Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.drawing

$form = New-Object System.Windows.Forms.Form -Property @{
    Font = "Comic Sans MS"
    Text = "Piture Box"
    Size = '500, 300'
    TopMost = $true
    BackgroundImage = $image
    BackgroundImageLayout = "Stretch"
}

$image = [system.drawing.image]::FromFile("C:\Users\FranciscoBanegas\Downloads\cREACION (1).png")

$picture = New-Object System.Windows.Forms.PictureBox -Property @{
    Location = '20,20'
    Size = '200, 200'
    SizeMode = 'StretchImage'
    Image = $image

}

$label = New-Object System.Windows.Forms.Label -Property @{
    Location = '20,220'
    Size = '200, 20'
    Text = "Creado por Francisco Banegas"
    BackColor = "transparent"
}

$form.Controls.AddRange(@($picture,$label))

$form.ShowDialog()
$form.Dispose()