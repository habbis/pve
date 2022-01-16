# Class to install sshd on debian and ubuntu
class puppet_homelab::pve::sshd::sshd_pve inherits puppet_homelab::pve::sshd {

  #package {
  #  'openssh-server':       ensure => installed;
  #}

  service {
    'ssh':
      require     => Package['openssh-server'],
      ensure      => running,
      hasstatus   => false,
      hasrestart  => true;
  }

  file { '/etc/ssh/sshd_config':
     owner  => root,
     group  => root,
     mode   => '0644',
     source => 'puppet:///modules/puppet_homelab/sshd/pve/sshd_config'
  }

  exec {
    'ssh_restart':
      command     => '/etc/init.d/ssh restart',
      refreshonly => true;
  }
}
