box = 'centos64'
url = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box'
hostname = 'syslog01'
domain = 'dev.test.net'
#ip = '192.168.0.42'
ram = '1024'

Vagrant::Config.run do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.host_name = hostname + '.' + domain
  config.vm.network :bridged
  config.vm.forward_port 9292, 8080
  config.vm.forward_port 3333, 3333

  config.vm.customize [
    'modifyvm', :id,
    '--name', hostname,
    '--memory', ram
  ]

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
	config.vm.provision :shell, :path => "./setup.sh"
	config.vm.provision :shell, :path => "./run.sh"
  end
end