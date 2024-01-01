Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crear una nueva instancia de objeto Form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Multiple selected"
$form.Size = "600,500"
$form.StartPosition = "CenterScreen"
$form.Font = "Comic Sans MS"
$form.TopMost = $true
#Agregar boton
$btn = New-Object System.Windows.Forms.Button
$btn.Text = "Instalar"
$btn.Location = '450,100'

#Crear checked List Box
$checked = New-Object Windows.Forms.CheckedListBox
$checked.Location = '10,10'
$checked.Size = '400,450'
$checked.CheckOnClick = $true
$elements = @("Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4")
# Agregar elementos
$checked.Items.AddRange(@($elements))


# Evento de clic
$btn.Add_Click({
    $selectedItems = $checked.CheckedItems
   foreach ($item in $selectedItems) {
       [System.Windows.Forms.MessageBox]::Show($item)
   }
})

#Cargamos elementos al formulario
$form.Controls.AddRange(@($btn,$checked))
# Mostrar el formulario
$form.ShowDialog()
$form.Dispose()
