#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
if node['platform_family'] == "rhel"
    package = "htppd"
elseif  node['platform_family'] == "debian"
end
    package = "apache2" 
package 'apache2' do
  package_name package 
 action :install
end
service 'apache2' do
   service_name 'httpd'
   action [:start,:enable]
  end
