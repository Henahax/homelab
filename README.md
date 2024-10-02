# HomeLab

current system private

future system in planning:

## 🍗 HenahaxServer

- **IP:** `192.168.0.2`
- **OS:** [ProxMox](https://www.proxmox.com/)
- **Hardware**
  - Intel N100: [example](https://www.amazon.de/AIOPCWA-Support-Storage-2-5GbE-Computer/dp/B0D5LCLQL6) / [example](https://cwwk.net/collections/frontpage/products/x86-p5-development-version-special-machine-4-m-2-nvme-adapter-board-only-applicable-to-cwwk-x86-p5-n100-i3-n305-model-%E7%9A%84%E5%89%AF%E6%9C%AC)
  - external hard drive enclosure, fast usb connection
- **VMs**
  - **🛜 HenahaxRouter**
    - IP: `192.168.0.1`
    - OS: [pfSense](https://www.pfsense.org/) / [OPNsense](https://opnsense.org/)
  - **🐋 HenahaxDocker**
    - IP: `192.168.0.3`
    - OS: [debian](https://www.debian.org/index.de.html/) / [Ubuntu](https://ubuntu.com/) / [alpine](https://www.alpinelinux.org/)
    - Containers:
      - Dynamic DNS: [CloudFlare DDNS](https://hub.docker.com/r/oznu/cloudflare-ddns/)
      - Container Management: [Portainer](https://www.portainer.io/) / [Dockge](https://dockge.kuma.pet/)
      - Reverse Proxy: [Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)
      - VPN Server: [WireGuard](https://www.wireguard.com/)
      - Personal Websites: [Nginx](https://nginx.org/)
      - ...
  - **🖫 HenahaxNAS**
    - IP: `192.168.0.4`
    - OS: [OpenMediaVault](https://www.openmediavault.org/) / [Unraid](https://unraid.net/) / [TrueNAS](https://www.truenas.com/)
    - Files:
      - Document Archive
      - Media
      - Backups
  - **🏠 HenahaxHome**
    - IP: `192.168.0.5`
    - OS: [Home Assistant](https://www.home-assistant.io/)

### Notes

- DynDNS, DNS, VPN, Reverse Proxy potentially on Router VM
