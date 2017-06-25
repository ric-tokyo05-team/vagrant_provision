# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.box_check_update = true

  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./src/", "/home/vagrant/src"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.install = true
    ansible.install_mode = "pip"
  end
end
