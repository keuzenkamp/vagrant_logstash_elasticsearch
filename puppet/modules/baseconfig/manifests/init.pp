# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
#  exec { 'yum update':
#    command => '/usr/bin/yum update -y';
#  }

#  host { 'hostmachine':
#    ip => '192.168.0.1';
#  }

  file {
    '/home/vagrant/logstash/':
	  owner => 'vagrant',
      group => 'vagrant',
      mode  => '0700',
	  ensure => directory;
  }
  file {
    '/home/vagrant/redis-2.6.15.tar.gz':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0600',
      source => 'puppet:///modules/baseconfig/redis-2.6.15.tar.gz';
  }
  file {
    '/home/vagrant/logstash/logstash-1.1.13-flatjar.jar':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0600',
      source => 'puppet:///modules/baseconfig/logstash-1.1.13-flatjar.jar';
  }
  file {
    '/home/vagrant/logstash/indexer.conf':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0600',
      source => 'puppet:///modules/baseconfig/indexer.conf';
  }
  file {
    '/home/vagrant/logstash/run.sh':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0700',
      source => 'puppet:///modules/baseconfig/run.sh';
  }
}
