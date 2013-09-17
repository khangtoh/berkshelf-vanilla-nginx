# default attributes that can be referenced throughout the berkshelf project

default[:berkshelf_vanilla_nginx][:user] = "www-data"
default[:berkshelf_vanilla_nginx][:group] = "www-data"
default[:berkshelf_vanilla_nginx][:name] = "berkshelf_vanilla_nginx"
default[:berkshelf_vanilla_nginx][:config] = "berkshelf_vanilla_nginx.conf"
default[:berkshelf_vanilla_nginx][:document_root] = "/var/www/berkshelf_vanilla_nginx"