# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "berkshelf-vanilla-nginx"
  config.vm.box = "virtualbox-ubuntu64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      
      :rvm => {
        :default_ruby => "ruby-1.9.3-p429",
      },

      :nginx => {
        :version => "1.4.1",
        :dir => "/etc/nginx",
        :log_dir => "/var/log/nginx",
        :binary => "/etc/nginx-1.4.1/sbin",
        :user => "nginx",
        :init_style => "init",
        :source => {
        :modules => [
            "http_stub_status_module",
            "http_ssl_module",
            "http_gzip_static_module"
            ]
        }
      },
    }
    chef.run_list = [
      "recipe[berkshelf-vanilla-nginx::default]"
    ]
  end
end
