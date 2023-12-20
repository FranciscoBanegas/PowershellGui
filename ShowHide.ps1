#add library
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#create forms
$win = New-Object System.Windows.Forms.Form
$win.Text = 'Show/Hide'
$win.ClientSize = '500,500'
$win.BackColor = "#202020"
$win.ForeColor = "#ffffff"

#add labels
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(140,80)
$label.Text = 'Hola mundo'
$label.AutoSize = $true
$label.font = "Comic Sans MS,40"

#Add buttom
$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(220,200)
$button.Text = 'Show/Hide'
$button.AutoSize = $true

$button.add_click({
  if($label.visible -eq $true){
    $label.visible = $false
  }else {
    $label.visible = $true
  }
})


#add from
$win.Controls.Addrange(@($label,$button))

#show form
$win.ShowDialog()
$win.Dispose()