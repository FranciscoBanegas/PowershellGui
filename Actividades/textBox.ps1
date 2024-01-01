Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.drawing


$form = New-Object System.Windows.Forms.Form
$form.Text = "Text Box"
$form.Size = '300, 200'
$form.StartPosition = "CenterScreen"
$form.TopMost = $true


#Crear textBox

$text = New-Object System.Windows.Forms.TextBox
$text.Location = '20,20'
$text.Size = '200,25'
$text.Text = "Ingresa un mensaje"
#Crear textBox 2

$text2 = New-Object System.Windows.Forms.TextBox
$text2.Location = '20,60'
$text2.Size = '200,25'
$text2.Text = "Ingresa un mensaje"

#Crear Boton
$btn = New-Object System.Windows.Forms.Button
$btn.Location = '20,100'
$btn.Size = '200,25'
$btn.Text = "Aceptar"

$btn.Add_Click({
    if ($text.Text -eq "Ingresa un mensaje" -or $text2.Text -eq "Ingresa un mensaje"  -or $text1.Text -eq "" -or $text2.Text -eq "") {
      [System.Windows.Forms.MessageBox]::Show("Falta Ingresar algun valor")
    }else{
        [System.Windows.Forms.MessageBox]::Show($text.Text )
        [System.Windows.Forms.MessageBox]::Show($text2.Text )
    }
})


$form.Controls.AddRange(@($text,$text2,$btn))
$form.ShowDialog()
$form.Dispose()