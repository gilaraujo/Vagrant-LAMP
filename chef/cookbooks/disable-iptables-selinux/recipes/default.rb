# Cookbook Name:: disable-iptables-selinux
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# stopping iptables
%w{ iptables ip6tables }.each do |service_name|
  service service_name do
    action [:disable, :stop]
  end
end
