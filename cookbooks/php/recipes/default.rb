#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# execute "sudo rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm"

package "php55w" do
    action :install
end

package "php55w-cli" do
    action :install
end

package "php55w-common" do
    action :install
end

package "php55w-devel" do
    action :install
end

package "php55w-gd" do
    action :install
end

package "php55w-mbstring" do
    action :install
end

package "php55w-mcrypt" do
    action :install
end

package "php55w-mysql" do
    action :install
end

package "php55w-opcache" do
    action :install
end

package "php55w-xml" do
    action :install
end

template "/var/www/html/info.php" do
    source "info.php.erb"
    mode "0644"
end
    
service "httpd" do
    action [:restart]
end