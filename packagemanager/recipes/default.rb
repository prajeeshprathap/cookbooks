#
# Cookbook Name:: packagemanager
# Recipe:: default
#
# Copyright 2015, PRAJEESH PRATHAp
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'chocolatey'
chocolatey 'PowerShell' do
	args "-pre"
end

powershell_script 'Add Chocolatey Source' do
  code <<-EOH
  Register-PackageSource –provider Chocolatey –name AzureChoco –location http://prajeeshchoco.azurewebsites.net/nuget
  EOH
end

powershell_script 'Install Foxe' do
  code <<-EOH
  Install-Package -Name Foxe -force -RequiredVersion 1.2.0 -Source AzureChoco
  EOH
end