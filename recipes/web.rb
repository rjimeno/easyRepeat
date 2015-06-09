#
# Cookbook Name:: easyrepeat
# Recipe:: web
#
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"

nginx_site 'default' do
	enable false
end

%w[ /srv /srv/www /srv/www/default /srv/www/default/public /srv/www/default/public/easyrepeat /srv/www/default/log ].each do |path|
  directory path do
    owner "root"
    group "root"
    mode 0755
    recursive true
    action :create
  end
end

template "#{node['nginx']['dir']}/sites-available/#{node['easyrepeat']['server_name']}" do
	source "nginx_site.conf.erb"
	mode 0644
end

cookbook_file "#{node['easyrepeat']['web_dir']}/public/index.html" do
	source "index.html"
	owner "root"
	group "root"
	mode 0755
end

nginx_site "#{node['easyrepeat']['server_name']}" do
	enable true
end
