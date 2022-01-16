# setup pve 
class pve::pve {

  include pve::pve::packages7
  include pve::pve::pve7_list
  include pve::pve::sshd
  include pve::pve::xinetd

}
