# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "vagrant-ubuntu1604"
    config.vm.box = "xenial64"
    config.ssh.username = "ubuntu"
    config.ssh.password = "NusRuo3i3dAq"
end
