Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$base = New-Object System.Windows.Forms.Form
$base.Text = "Radio Buttons"
$base.Size = '300 , 200'
$base.StartPosition = 'centerScreen'
$base.Font = "Comic Sans MS"
$base.TopMost = $true
$base.BackColor = '#202020'
$base.ForeColor = '#ffffff'

#Crear boton
$botonAceptar = New-Object System.Windows.Forms.Button
$botonAceptar.Text = "Aceptar"
$botonAceptar.Location = New-Object System.Drawing.Point(100, 130)


#Creamos grupo de radio buttons
$grupoRadioButtons = New-Object System.Windows.Forms.GroupBox
$grupoRadioButtons.Text = "Opciones"
$grupoRadioButtons.Location = New-Object System.Drawing.Point(20, 20)

#Creamos los radio Buttons
$radioButton1 = New-Object System.Windows.Forms.RadioButton
$radioButton1.Text = "Elemento 1"
$radioButton1.Location = New-Object System.Drawing.Point(10, 20)
$radioButton1.Checked = $true

$radioButton2 = New-Object System.Windows.Forms.RadioButton
$radioButton2.Text = "Elemento 2"
$radioButton2.Location = New-Object System.Drawing.Point(10, 40)
# $radioButton2.Checked = $true

$radioButton3 = New-Object System.Windows.Forms.RadioButton
$radioButton3.Text = "Elemento 3"
$radioButton3.Location = New-Object System.Drawing.Point(10, 60)

#Add Radio Buttons
$grupoRadioButtons.Controls.AddRange(@($radioButton1,$radioButton2,$radioButton3))

#Add elements froms
$base.Controls.AddRange(@($grupoRadioButtons,$botonAceptar))


#Evento Click
$botonAceptar.Add_Click({
    if ($radioButton1.Checked) {
     Write-Host 'Selecionaste elemento 1'
    }elseif ($radioButton2.Checked) {
        Write-Host 'Selecionaste elemento 2'
    }elseif($radioButton3.Checked){
        Write-Host 'Selecionaste elemento 3'
    }
    
})

$base.ShowDialog()
$base.Dispose()
