# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::configure("2") do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos64-x86_64-minimal"

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file centos64-x86_64-minimal.pp in the manifests_path directory.
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.manifest_file  = "centos64-x86_64-minimal.pp"
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3333
end
