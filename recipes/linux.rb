#
# Cookbook Name:: cb_dvo_osUpdate
# Recipe:: linux
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

execute 'update' do
  code 'yum update -y'
end
