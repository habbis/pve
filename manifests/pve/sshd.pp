# Class for installing ssh on linux servers
class pve::pve::sshd {
  case $::osfamily {
    'Debian': { include pve::pve::sshd::sshd_pve }
    default: {
      case $::operatingsystem {
        'Debian': {
          include pve::pve::sshd::sshd_pve
          $osfamily = "Debian"
        }
      }
    }
  }
}
