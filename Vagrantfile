# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Alternative box URL, in case of the centos_6_x86_64 VM is not available at 'vagrant box list'
  #config.vm.box_url = "https://s3.amazonaws.com/itmat-public/centos-6.3-chef-10.14.2.box"
  config.vm.box = "centos_6_x86_64"
  
  config.vm.customize [
    "modifyvm", :id,
    "--name", "LAMP Virtual Machine",
    "--memory", "1024",
    "--cpus", "2"
  ]

  # config.vm.network :hostonly, "192.168.50.4"

  config.vm.share_folder 'shared_folder', '/home/vagrant/shared_folder', '.'
  config.vm.share_folder 'apache_deploy', '/var/www/sites', './sites'

  config.vm.forward_port 3306, 3306 # MySQL
  config.vm.forward_port 80, 8081 # Apache2
  config.vm.forward_port 4000, 4000 # Remote Debug

  config.vm.provision :chef_solo do |chef|

    chef.log_level = :debug
    chef.cookbooks_path = %w[ chef/cookbooks chef/site_cookbooks ]
    chef.roles_path = "chef/roles"

    chef.add_role "lamp"

    end

end
