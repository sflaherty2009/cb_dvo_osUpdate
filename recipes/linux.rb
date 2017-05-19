#
# Cookbook Name:: cb_dvo_osUpdate
# Recipe:: linux
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

require 'date'

day_of_month = Date.today.day

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
  action :nothing
end

# Set up cron job to run this day every month
cron 'Patching' do
  action :create
  minute '0'
  hour '0'
  day #{day_of_month}
  user 'root'
  mailto 'devops@trekbikes.com'
  command 'yum update -y'
end
