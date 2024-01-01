#add Library
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Create Form
$form = New-Object Windows.Forms.form -Property @{
    Text = 'Selec Folder'
    Size = '300, 200'
    StartPosition = "CenterScreen"
    TopMost = $true
}

$button = New-Object System.Windows.Forms.Button
$button.Text = 'Open File'
$button.Location = '20,20'
$button.Add_Click({
   $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
        InitialDirectory = [Environment]::GetFolderPath('Desktop') 
        Filter = 'Documents (*.txt)|*.txt|All Files (*.*)|*.*'
    }
   $FileBrowser.ShowDialog()
    $label.Text = $FileBrowser.FileName
})

$label = New-Object System.Windows.Forms.Label
$label.Text = ''
$label.Location = '20,50'
$label.Size = '260, 20'

$form.Controls.AddRange(@($button,$label))

$form.ShowDialog()
$form.Dispose()