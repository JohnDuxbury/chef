#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "php54w" do
    action :install
end

package "php54w-cli" do
    action :install
end

package "php54w-common" do
    action :install
end
package "php54w-gd" do
    action :install
end

package "php54w-mysql" do
    action :install
end

template "/var/www/html/info.php" do
    source "info.php.erb"
    mode "0644"
end
    
service "httpd" do
    action [:restart]
end