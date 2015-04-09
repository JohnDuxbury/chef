#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, JDITC - John Duxbury 9 April 2015
#
# All rights reserved - Do Not Redistribute
#
package "mysql55" do
    action :install
end

package "mysql55-server" do
    action :install
end

service "mysqld" do
    action [:enable, :start]
end