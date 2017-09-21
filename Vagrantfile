# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # base box: Ubuntu 16.04 LTS, 32bit
    config.vm.box = "ubuntu/xenial32"
    # if you want to use a 64bit Ubuntu, just use "ubuntu/xenial64" instead of "ubuntu/xenial32"

    # Do some network configuration
    # we could use a private network for Virtualbox
    #config.vm.network "private_network", ip: "192.168.100.100"

    # Assign a quarter of host memory and all available CPU's to VM
    # Depending on host OS this has to be done differently.
    config.vm.provider :virtualbox do |vb|
        host = RbConfig::CONFIG['host_os']

        if host =~ /darwin/
            cpus = `sysctl -n hw.ncpu`.to_i
            mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 4

        elsif host =~ /linux/
            cpus = `nproc`.to_i
            mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 4

        # Windows...
        else
            cpus = 4
            mem = 2048
        end

        vb.customize ["modifyvm", :id, "--memory", mem]
        vb.customize ["modifyvm", :id, "--cpus", cpus]
        vb.memory = mem
        vb.cpus = cpus
    end

    config.vm.provision :shell, :path => "bootstrap.sh"
    config.vm.provision :shell, :path => "svn.sh"

end
