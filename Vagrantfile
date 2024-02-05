# -*- mode: ruby -*-
# vi: set ft=ruby :
require_relative 'provisioning/vbox.rb'
VBoxUtils.check_version('7.0.14')
Vagrant.require_version ">= 2.4.1"

Vagrant.configure("2") do |config|
    config.vm.box = "XXX"
    config.vm.hostname = "xxx"
    config.vm.network "XXX", guest: XXX, host: XXX

    # Configure hostmanager and vbguest plugins
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true
    config.vbguest.auto_update = false

    config.vm.provider "virtualbox" do |vb|
	vb.name = "AISI-P1-#{config.vm.hostname}"
	vb.cpus = 2
	vb.memory = 2048
	vb.gui = false
    end
end
