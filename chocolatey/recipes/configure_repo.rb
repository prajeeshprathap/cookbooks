chocolatey 'PowerShell'

powershell_script 'add_new_chocolatey_source' do
  code <<-EOH
  Register-PackageSource –provider Chocolatey –name AzureChoco –location http://prajeeshchoco.azurewebsites.net/nuget
  EOH
end