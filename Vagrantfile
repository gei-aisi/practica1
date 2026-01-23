# -*- mode: ruby -*-
# vi: set ft=ruby :
require_relative 'provisioning/vbox.rb'
VBoxUtils.check_version('7.2.4')
Vagrant.require_version ">= 2.4.9"

Vagrant.configure("2") do |config|
    config.vm.box = "XXX"
    config.vm.box_check_update = false
    config.vm.hostname = "XXX"
    config.vm.network "XXX", guest: XXX, host: XXX

    # Configure hostmanager plugin
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true

    config.vm.provider "virtualbox" do |vb|
	vb.name = "AISI-P1-#{config.vm.hostname}"
	vb.cpus = 1
	vb.memory = 2048
	vb.gui = false
	vb.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
    end
end
