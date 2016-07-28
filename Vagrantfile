# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.hostname = 'demo.dev'
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network 'private_network', ip: '192.168.42.11'

  # Run Ansible from the Vagrant Host
  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'provisioning/dev/playbook.yml'
    ansible.sudo = true
  end

  # Optional : Change memory allocated
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '2048']
  end
end
