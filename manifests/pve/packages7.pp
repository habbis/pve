#Class for installing pve
class pve::pve::packages7 {
  include pve::pve::pve7_list
  package { 'proxmox-ve':
    ensure => installed,
  }
  package { 'xinetd':
    ensure => installed,
  }
  package { 'os-prober':
    ensure => purged,
  }
}
