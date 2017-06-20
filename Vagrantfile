# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create appserver node
  config.vm.define :appserver do |appserver_config|
      appserver_config.vm.box = "ubuntu/trusty64"
      appserver_config.vm.hostname = "appsrver"
      appserver_config.vm.network :private_network, ip: "10.0.15.100"
      appserver_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
      appserver_config.vm.provision :shell, path: "bootstrap-appserver.sh"
	end

end
