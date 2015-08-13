#
# Cookbook Name:: packagemanager
# Recipe:: default
#
# Copyright 2015, PRAJEESH PRATHAO
#
# All rights reserved - Do Not Redistribute
#
chocolatey 'PowerShell'

powershell_script 'Add Chocolatey Source' do
  code <<-EOH
  Register-PackageSource –provider Chocolatey –name AzureChoco –location http://prajeeshchoco.azurewebsites.net/nuget
  EOH
end