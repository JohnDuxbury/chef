#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, JDITC - John Duxbury 9 April 2015
#
# All rights reserved - Do Not Redistribute
#
execute "yum update -y"

# rpm -Uvh http://download.newrelic.com/pub/newrelic/el5/i386/newrelic-repo-5-3.noarch.rpm
# yum install newrelic-sysmond
# nrsysmond-config --set license_key=b777fcf3236a9f926b8d119ed2e23c67e2e7ade5
# /etc/init.d/newrelic-sysmond start
# b777fcf3236a9f926b8d119ed2e23c67e2e7ade5
# sudo rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm
# sudo yum install newrelic-php5
# sudo newrelic-install install

