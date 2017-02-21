#
# Cookbook Name:: ibotta_devops
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
  port node['mysql_port']
  run_user node['mysql_user']
  initial_root_password ''
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

git '/home/ibotta_devops' do
  repository 'https://github.com/Ibotta/ops-dev-test.git'
  action :sync
  user 'root'
  group 'root'
end

ruby_block 'reload_client_config' do
  block do
    node.default['ruby_version'] = `cat /home/ibotta_devops/.ruby-version`.match(/\S+/)[0]
  end
  action :run
end

rbenv_ruby node['ruby_version'] do
  action :install
end

rbenv_rehash "Doing the rehash dance"
rbenv_global node['ruby_version']
rbenv_gem "bundler" do
  rbenv_version   node['ruby_version']
  action          :install
end

execute "bundle install" do
  cwd "/home/ibotta_devops"
  command "bundle install"
  action :run
end

directory '/home/ibotta_devops/tmp' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

apt_package "fortune" do
  action :install
end

execute "Run tests" do
  cwd "/home/ibotta_devops"
  command "bundle exec rake test"
  action :run
end


execute "Start app" do
  cwd "/home/ibotta_devops"
  command "RACK_ENV=#{node['environment']} ruby app.rb"
  action :run
end