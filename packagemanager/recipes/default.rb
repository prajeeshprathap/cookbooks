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

dsc_resource 'ChocolateySourceDef' do
	resource :xGithubModule
	property :url, 'https://raw.githubusercontent.com/prajeeshprathap/DSCResources/master/xChocolateySource/xChocolateySource.psd1'
	property :module, 'xChocolateySource'
	property :ensure, 'Present'
end

dsc_resource 'ChocolateySourceModule' do
	resource :xGithubModule
	property :url, 'https://raw.githubusercontent.com/prajeeshprathap/DSCResources/master/xChocolateySource/xChocolateySource.psm1'
	property :module, 'xChocolateySource'
	property :ensure, 'Present'
end

dsc_resource 'PackageManagementDef' do
	resource :xGithubModule
	property :url, 'https://raw.githubusercontent.com/prajeeshprathap/DSCResources/master/xPackageManagement/xPackageManagement.psd1'
	property :module, 'xPackageManagement'
	property :ensure, 'Present'
end

dsc_resource 'PackageManagementModule' do
	resource :xGithubModule
	property :url, 'https://raw.githubusercontent.com/prajeeshprathap/DSCResources/master/xPackageManagement/xPackageManagement.psm1'
	property :module, 'xPackageManagement'
	property :ensure, 'Present'
end

dsc_resource 'AzureChocolateySource' do
	resource :xChocolateySource
	property :name, 'AzureChoco'
	property :location, 'http://prajeeshchoco.azurewebsites.net/nuget/'
	property :ensure, 'Present'
end

dsc_resource 'FoxePackage' do
	resource :xPackageManagement
	property :name, 'Foxe'
	property :source, 'http://prajeeshchoco.azurewebsites.net/nuget/'
	property :version, '1.2.0'
	property :ensure, 'Present'
end