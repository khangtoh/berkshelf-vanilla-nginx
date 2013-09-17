
group node[:berkshelf_vanilla_nginx][:group]

user node[:berkshelf_vanilla_nginx][:user] do
  group node[:berkshelf_vanilla_nginx][:group]
  system true
  shell "/bin/bash"
end

include_recipe "nginx::source"

node.override['nginx']['gzip'] = "on"

template "/etc/nginx/sites-available/#{node[:berkshelf_vanilla_nginx][:name]}" do
	source "#{node[:berkshelf_vanilla_nginx][:name]}.erb"
end

# create nginx root
directory "#{node[:berkshelf_vanilla_nginx][:document_root]}" do
  action :create
  recursive true
end

# write site
cookbook_file "#{node[:berkshelf_vanilla_nginx][:document_root]}/index.html" do
  mode "0644"
end

nginx_site 'default' do
  enable false
end

nginx_site "#{node[:berkshelf_vanilla_nginx][:name]}"

