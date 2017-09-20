#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#

if node['platform_family'] == "rhel"
	packagenm = "httpd"
elsif node['platform_family'] == "debian"
	packagenm = "apache2"
end

package 'apache2' do
	package_name packagenm
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

include_recipe 'apache::website'
