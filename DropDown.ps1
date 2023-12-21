#Add libreria
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Crear formulario
$win = New-Object System.Windows.Forms.Form
$win.Text = 'Servicios'
$win.Width = 500
$win.Height = 500
#Creamos un desplegable
$cb = New-Object Windows.Forms.ComboBox
$cb.Location = New-Object System.Drawing.Point(140,40)
$cb.Text = "Servicios"
$cb.AutoSize = $true
$cb.Items.AddRange(@("Servicio 1", "Servicio 2", "Servicio 3","Servicio 4"))

$cb.add_SelectedIndexChanged({
    $selectedItem = $CB.SelectedItem
    
    switch ($selectedItem) {
        "Servicio 1" {
            Write-Host "Servicio 1"
        }
        "Servicio 2" {
            Write-Host "Servicio 2"
        }
        "Servicio 3" {
            Write-Host "Servicio 3"
        }
        "Servicio 4" {
            Write-Host "Servicio 4"
        }
    }
})


$win.Controls.AddRange(@($label,$cb))
#Mostrar formulario
$win.ShowDialog()
$win.Dispose()
