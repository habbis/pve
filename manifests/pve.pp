# setup pve 
class puppet_homelab::pve {

  include puppet_homelab::pve::packages7
  include puppet_homelab::pve::pve7_list
  include puppet_homelab::pve::sshd
  include puppet_homelab::pve::xinetd

}
