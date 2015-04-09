#
# Cookbook Name:: webserv
# Recipe:: default
#
# Copyright 2015, JDITC - John Duxbury
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
    action :install
end

service "httpd" do
    action [:enable, :start]
end

template "/var/www/html/index.html" do
    source "index.html.erb"
    mode "0644"
end

service "iptables" do
    action :stop
end