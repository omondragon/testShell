# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :servidorUbuntu do |servidorUbuntu|
    servidorUbuntu.vm.box = "bento/ubuntu-20.04"
    servidorUbuntu.vm.network :private_network, ip: "192.168.100.3"
    servidorUbuntu.vm.provision "shell", path: "script.sh"
    servidorUbuntu.vm.hostname = "servidorUbuntu"
    servidorUbuntu.vm.provider "virtualbox" do |v|
    	v.cpus = 2
    	v.memory = 2048
    end
  end
end
