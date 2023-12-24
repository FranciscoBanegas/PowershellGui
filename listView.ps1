Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crear el formulario 
$form = New-Object System.Windows.Forms.Form
$form.Text = "ListView en PowerShell"
$form.Size = "600,500"
$form.StartPosition = "CenterScreen"
#Crear lista
$lv = New-Object System.Windows.Forms.ListView
$lv.Location = '10,10'
$lv.Size = '450,300'
$lv.View = "Details"

#Añadir columnas
$columnNames = @("App", "x64/x86", "Description")

$lv.Columns.AddRange(@($columnNames | ForEach-Object { New-Object System.Windows.Forms.ColumnHeader -Property @{ Text = $_ ; Width = 150 } }))


#Añadir elementos
$item1 = New-Object System.Windows.Forms.ListViewItem
$item1.text = "Get Services"
$item1.SubItems.AddRange(@("x64", "Get Services x64"))

#Añadir elementos 2
$item2 = New-Object System.Windows.Forms.ListViewItem
$item2.text = "Bypass Windows 11 TPM"
$item2.SubItems.AddRange(@("x64", "Bypass Windows 11 TPM"))

#cargamos lista al formulario
$lv.Items.AddRange(@($item1,$item2))

#Agregar boton
$btn = New-Object System.Windows.Forms.Button
$btn.Text = "Ejecutar"
$btn.Location = '500,10'

#agregamos evento al boton
$btn.Add_Click({ 
    if($lv.SelectedItems.Count -eq 1) {
        $selectItem = $lv.SelectedItems[0].text
        [System.Windows.Forms.MessageBox]::Show('El elemento seleccionado es: ' + $selectItem)
    }else {
        [System.Windows.Forms.MessageBox]::Show('No hay elemento seleccionado')
    }
 })  



#Cargamos elementos al formulario
$form.Controls.AddRange(@($lv,$btn))
# Mostrar el formulario
$form.ShowDialog()
$form.Dispose()
=======
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crear el formulario
$form = New-Object System.Windows.Forms.Form
$form.Text = "ListView en PowerShell"
$form.Size = "600,500"
$form.StartPosition = "CenterScreen"
#Crear lista
$lv = New-Object System.Windows.Forms.ListView
$lv.Location = '10,10'
$lv.Size = '450,300'
$lv.View = "Details"

#Añadir columnas
$columnNames = @("App", "x64/x86", "Description")

$lv.Columns.AddRange(@($columnNames | ForEach-Object { New-Object System.Windows.Forms.ColumnHeader -Property @{ Text = $_ ; Width = 150 } }))


#Añadir elementos
$item1 = New-Object System.Windows.Forms.ListViewItem
$item1.text = "Get Services"
$item1.SubItems.AddRange(@("x64", "Get Services x64"))

#Añadir elementos 2
$item2 = New-Object System.Windows.Forms.ListViewItem
$item2.text = "Bypass Windows 11 TPM"
$item2.SubItems.AddRange(@("x64", "Bypass Windows 11 TPM"))

#cargamos lista al formulario
$lv.Items.AddRange(@($item1,$item2))

#Agregar boton
$btn = New-Object System.Windows.Forms.Button
$btn.Text = "Ejecutar"
$btn.Location = '500,10'

#agregamos evento al boton
$btn.Add_Click({ 
    if($lv.SelectedItems.Count -eq 1) {
        $selectItem = $lv.SelectedItems[0].text
        [System.Windows.Forms.MessageBox]::Show('El elemento seleccionado es: ' + $selectItem)
    }else {
        [System.Windows.Forms.MessageBox]::Show('No hay elemento seleccionado')
    }
 })  



#Cargamos elementos al formulario
$form.Controls.AddRange(@($lv,$btn))
# Mostrar el formulario
$form.ShowDialog()
$form.Dispose()