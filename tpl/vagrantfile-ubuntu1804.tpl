# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "vagrant-ubuntu1804"
    config.vm.box = "bionic64"
    config.ssh.username = "ubuntu"
    config.ssh.password = "ubuntu"
end
