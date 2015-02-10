# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "dynomite1" do |dynomite1|
    dynomite1.vm.hostname = "dynomite1.blakesmith.me"
    dynomite1.vm.box = "ubuntu/trusty64"
    dynomite1.vm.network "private_network", ip: "192.168.50.60"
    dynomite1.vm.provider "virtualbox" do |vb|
      vb.gui = false
    end
    dynomite1.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      puppet.manifest_file  = "dynomite.pp"
    end
  end

  config.vm.define "dynomite2" do |dynomite2|
    dynomite2.vm.hostname = "dynomite2.blakesmith.me"
    dynomite2.vm.box = "ubuntu/trusty64"
    dynomite2.vm.network "private_network", ip: "192.168.50.61"
    dynomite2.vm.provider "virtualbox" do |vb|
      vb.gui = false
    end
    dynomite2.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      puppet.manifest_file  = "dynomite.pp"
    end
  end
end
