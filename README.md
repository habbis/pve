# pve

puppet class to manage proxmox

### Deployment 

I am adding my custom puppet classess.

to this path path.

```
/etc/puppetlabs/code/modules
```

### Puppet classes

Manage proxmox 7 .

[pve](https://github.com/habbis/pve/tree/master/manifests/pve)

Inside that class is these classess.

Manages proxmox packages.
[packages7](https://github.com/habbis/pve/tree/master/manifests/pve/packages7.pp)

Manage proxmox no-subscription repo.
[pve7_list](https://github.com/habbis/pve/tree/master/manifests/pve/pve7_list.pp)

Manage sshd for proxmox.
[sshd](https://github.com/habbis/pve/tree/master/manifests/pve/sshd.pp)

Manage xinetd.pp to redirect port 8006 to 443 .
[xinetd](https://github.com/habbis/pve/tree/master/manifests/pve/xinetd.pp)


## Facts 

Puppet have facts that can gather info about the servers using puppet class puppet_homelab
you can put them in facts.d .



## Directorys files and templates


files: 
  - Config files that have no variables should be added to files directory.

templates: 
  - Template files that have special variables should be used here ending .erb
    its the same as ansible jinja templeting files ending in .j2 .
    
    



 




## Facts 

Puppet have facts that can gather info about the servers using puppet class puppet_homelab
you can put them in facts.d .



## Directorys files and templates


files: 
  - Config files that have no variables should be added to files directory.

templates: 
  - Template files that have special variables should be used here ending .erb
    its the same as ansible jinja templeting files ending in .j2 .
    
