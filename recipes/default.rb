#
# Cookbook Name:: cb_dvo_osUpdate
# Recipe:: default
#
# Copyright (c) 2017 Trek Bicycles, All Rights Reserved.

include_recipe 'cb_dvo_osUpdate::default'

case node['os']
when 'linux'
  include_recipe 'cb_dvo_osUpdate::linux'
when 'windows'
  include_recipe 'cb_dvo_osUpdate::windows'
else
  raise "no #{node['platform_family']} support"
end
