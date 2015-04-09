#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "php" do
    action :install
end

template "/var/www/html/info.php" do
    source "info.php.erb"
    mode "0644"
end
    
service "httpd" do
    action [:restart]
end