#Class for installing pve
class pve::pve::xinetd {
  file {
    '/etc/xinetd.d/pve_443':
      ensure  => file,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => 'puppet:///modules/pve/pve/xinetd_pve_443';
    }
    service {
      'xinetd':
        ensure    => running,
        name      => xinetd,
        enable    => true,
        hasstatus => false,
        hasrestart => true,
        require   => Package['xinetd'];
    }

  exec {
    'xinetd_restart':
      command     => '/etc/init.d/xinetd restart',
      refreshonly => true;
  }


}
