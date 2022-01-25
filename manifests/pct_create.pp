class pve::pct_create (

$vmid
$template
$cpu
$ram
$hostname
$ipv4
$gw4
$vlanid

)

{
 

exec {
    'pct':
     path        => ['/usr/sbin'],
     command     => 'pct create ${vmid} pve_vmstorage01:vztmpl/${template}.tar.gz --core ${cpu} --memory ${ram} --hostname ${hostname} --nameserver 10.17.2.2 --storage local-vm --net0 name=eth0,bridge=vmbr0,firewall=1,ip=${ipv4},gw=${gw4},tag=${vlanid}',
  }

}
