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
   hardware[setup hardware]
   proxmox[install ProxMox]
   network[setup ProxMox network]
   zfs[setup ProxMox ZFS]
   vm-router[install VM router: OPNSense]
   vm-nas[install VM NAS: TrueNAS Scale]
   vm-services[install VM services: Debian]
   vm-home[install VM home: Home-Assistant]
   directory-volumes[NFS directory: volumes]
   directory-backups[NFS directory: backups]
   containers[setup containers: services]

   hardware-->proxmox-->network
   proxmox-->zfs-->vm-nas-->directory-volumes
   vm-nas-->directory-backups
   network-->vm-router
   proxmox-->vm-services
   proxmox-->vm-home
   directory-volumes-->containers
   vm-services-->containers

```
