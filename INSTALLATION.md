# Installation

work in progress installation order to prevent dependence conflicts

## dependency notes

- containers on docker machine `depends on NAS`
- VM network config `depends on Router VM`

## installation order

1. hardware
2. ProxMox
   1. setup
      - network
      - drives
   2. VMs
      1. Router VM
      2. NAS VM
         - NFS
         - directory for Docker volumes
         - directory for backups
      3. Docker VM
      4. Home VM
3. Go Live

## notes

## order

docker (volume) location: edit daemon.json file

```mermaid
   graph TD;
   hardware((setup hardware))

   proxmox[**server** *ProxMox*]

   vm-services[**services** *Debian*]
   vm-nas[**data** *TrueNAS Scale*]
   vm-backup[**backup** *ProxMox Backup*]
   vm-home[**home** *Home-Assistant*]
   zfs([ProxMox ZFS])
   directory-volumes([NFS directory: volumes])
   directory-backups([NFS directory: backups])
   containers([containers: services]) 
   backup([setup backups])
   network-card((get network card))
   network([ProxMox network])
   vm-router[**router** *OPNSense*]


   hardware--new OS-->proxmox
   proxmox--new VM-->vm-services
   proxmox--setup-->zfs
   proxmox--new VM-->vm-backup
   proxmox--new VM-->vm-home
   proxmox--setup-->network
   zfs--new VM-->vm-nas
   vm-nas-->directory-volumes
   vm-nas-->directory-backups
   network--new VM-->vm-router
   directory-volumes-->containers
   vm-services--setup-->containers
   network-card-->network
   vm-backup-->backup
   directory-backups-->backup
```
