#
# Cookbook Name:: cb_dvo_osUpdate
# Recipe:: linux
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

cookbook_file '/etc/cron.monthly/yumUpdate.bash' do
  source '/etc/cron.monthly/yumUpdate.bash'
  action :create
  owner 'root'
  group 'root'
  mode '0700'
  notifies :run, 'execute[yum Update]', :immediately
end

# Guarded so it only runs the first time
execute 'yum Update' do
  command 'yum update -y'
end
