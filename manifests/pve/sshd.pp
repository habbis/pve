# Class for installing ssh on linux servers
class puppet_homelab::pve::sshd {
  case $::osfamily {
    'Debian': { include puppet_homelab::pve::sshd::sshd_pve }
    default: {
      case $::operatingsystem {
        'Debian': {
          include puppet_homelab::pve::sshd::sshd_pve
          $osfamily = "Debian"
        }
      }
    }
  }
}
