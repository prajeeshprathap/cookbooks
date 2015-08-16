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

dsc_resource 'FoxePackage' do
	resource :xPackageManagement
	property :name, 'Foxe'
	property :source, 'http://prajeeshchoco.azurewebsites.net/'
	property :version, '1.2.0'
	property :ensure, 'Present'
end