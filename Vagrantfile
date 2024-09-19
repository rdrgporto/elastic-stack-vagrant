# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    
  # Configure VM
  config.vm.box         = "ubuntu/jammy64"
  config.vm.hostname    = "elastic-stack"
  config.ssh.insert_key = true
  config.vm.network "public_network"
  
  # Configure provisioning
  config.vm.provision "ansible_local" do |ansible|
    ansible.install        = true
    ansible.playbook       = "main.yml"
    ansible.inventory_path = "inventories/staging/hosts.ini"
    ansible.limit          = "all"
  end
  
  # Configure Virtualbox
  config.vm.provider "virtualbox" do |vb, override|
    vb.cpus   = 2
    vb.memory = 4096
    vb.gui    = false
    vb.name   = "elastic-stack"
  end

end
