# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

   config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"

   config.vm.provision "puppet" do |puppet|
      puppet.environment_path = "environments"
      puppet.environment = "vagrant"
      puppet.options = "--verbose --debug"
   end

   #Assign ram and fix internet connection
   config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["modifyvm", :id, "--memory", "600"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
   end

       config.vm.network "private_network", ip: "192.168.33.200"
       config.vm.hostname = "puppet"

end
