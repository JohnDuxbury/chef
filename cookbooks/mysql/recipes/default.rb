#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, JDITC - John Duxbury 9 April 2015
#
# All rights reserved - Do Not Redistribute
#
package "mysql-community-server" do
    action :install
end

package "php54w-mbstring.x86_64" do
    action :install
end

service "mysqld" do
    action [:enable, :start]
end