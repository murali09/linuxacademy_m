#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'postgresql-server' do
 action:install
notifies :run, 'execute[postgresql-init]'
end
execute 'postgresql-init' do
 command 'postgresql-setup initdb'
 action :nothing
end
