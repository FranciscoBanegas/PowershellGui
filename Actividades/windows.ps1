#add library
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Create Forms
$win = New-Object System.Windows.Forms.Form
$win.Text = 'Mi primer formulario'
$win.ClientSize = '500,500'
$win.BackColor = "#202020"
$win.ForeColor = "#ffffff"


#Add labels
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(140,80)
$label.Text = 'Mi primer label'
$label.AutoSize = $true

#add from
$win.Controls.Add($label)


#Show form
$win.ShowDialog()
$win.Dispose()