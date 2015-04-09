#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, JDITC - John Duxbury 9 April 2015
#
# All rights reserved - Do Not Redistribute
#
# mkdir ~/mysql
# cd ~/mysql
# execute "wget http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm"
execute "yum localinstall mysql-community-release-el6-5.noarch.rpm"

package "mysql-community-server" do
    action :install
end

service "mysqld" do
    action [:enable, :start]
end
# mysql_secure_installation
# http://sourceforge.net/projects/phpmyadmin/files/phpMyAdmin/4.4.1.1/phpMyAdmin-4.4.1.1-all-languages.zip
# unzip phpMyAdmin-4.4.1.1-all-languages.zip
# mv /var/www/html/phpMyAdmin-3.5.1-english /var/www/html/dbAdmin
# cd /var/www/html/dbAdmin
# cp config.sample.inc.php config.inc.php
# vim config.inc.php
# $cfg['Servers'][$i]['auth_type'] = 'cookie';
# $cfg['Servers'][$i]['auth_type'] = 'http';