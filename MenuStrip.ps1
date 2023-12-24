# Load external assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$base =  New-Object System.Windows.Forms.Form
$base.ClientSize = '250,500'
$base.Text = 'MenuStrip'
$base.BackColor = '#202020'
$base.StartPosition = 'Manual'
$base.Location = '750, 0'
$base.ForeColor = '#000'
$base.BackColor = '#202020'
$base.Font = "Comic Sans MS, 20"
$base.TopMost = $true

#Crear Menu
$menu = New-Object System.Windows.Forms.MenuStrip
$Elemento1 = New-Object System.Windows.Forms.ToolStripMenuItem
$Elemento2 = New-Object System.Windows.Forms.ToolStripMenuItem

$SubElemento1 = New-Object System.Windows.Forms.ToolStripMenuItem
$SubElemento2 = New-Object System.Windows.Forms.ToolStripMenuItem
$SubElemento2_1 = New-Object System.Windows.Forms.ToolStripMenuItem
$SubElemento2_2 = New-Object System.Windows.Forms.ToolStripMenuItem

#Add Elements
$Elemento1.Text = 'General'
$Elemento2.Text = 'Ayuda'
#Cargar Elementos al menu
$menu.Items.AddRange(@($Elemento1,$Elemento2))

#Evento Click
# $Elemento1.add_Click({
#     Write-Host 'Diste click en el elemento 1'
# })
# $Elemento2.add_Click({
#     Write-Host 'Diste click en el elemento 2'
# })

#Add Sub Elements
$SubElemento1.Text = 'Elemento 1.1'
$SubElemento2.Text = 'Elemento 1.2'
$Elemento1.DropDownItems.AddRange(@($SubElemento1,$SubElemento2))


$SubElemento2_1.Text = 'Elemento 2.1'
$SubElemento2_2.Text = 'Elemento 2.2'
$Elemento2.DropDownItems.AddRange(@($SubElemento2_1,$SubElemento2_2))

#Add Elements
$base.Controls.AddRange(@($menu))


$base.ShowDialog()
#Clear resources
$base.Dispose()