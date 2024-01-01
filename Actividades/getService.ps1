#Add libreria
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Crear formulario
$win = New-Object System.Windows.Forms.Form
$win.Text = 'Servicios'
$win.Width = 500
$win.Height = 500
#Etiqueta
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(140,100)
$label.Text = ''
$label.AutoSize = $true
#Creamos un desplegable
$cb = New-Object System.Windows.Forms.ComboBox
$cb.Location = New-Object System.Drawing.Point(140,40)
$cb.Text = "Servicios"
$cb.AutoSize = $true

#BUCLE
Get-Service | ForEach-Object {$cb.Items.AddRange(@($_.Name))}

#Funcion
function getService {
    $name = $cb.SelectedItem

    if(Get-Service $name | where-Object {$_.Status -eq "Running"}){
        $label.Text = 'El Servicio ' + $name + ' Esta corriendo'
        $label.ForeColor = "Green"
    }else {
        $label.Text = 'El Servicio ' + $name + ' No esta detenido'
        $label.ForeColor = "Red"
    }
}

#Evento
$cb.add_selectedIndexChanged({getService})

$win.Controls.AddRange(@($label,$cb))
#Mostrar formulario
$win.ShowDialog()
$win.Dispose()
