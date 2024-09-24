# HomeLab

## 🍗 HenahaxServer

- Hardware
  - [Intel N100](https://www.amazon.de/AIOPCWA-Support-Storage-2-5GbE-Computer/dp/B0D5LCLQL6)
  - external hard drive enclosure, fast usb connection
- OS: [ProxMox](https://www.proxmox.com/)
- VMs
  - 🛜 Router
    - OS: [pfSense](https://www.pfsense.org/) / [OPNsense](https://opnsense.org/)
  - 🐋 Docker
    - OS: [debian](https://www.debian.org/index.de.html/) / [Ubuntu](https://ubuntu.com/)
    - Containers
      - [Portainer](https://www.portainer.io/)
      - Reverse Proxy: [Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)
      - ...
  - 🏠 Home
    - OS: [Home Assistant](https://www.home-assistant.io/)
  - 🖫 NAS
    - OS: [OpenMediaVault](https://www.openmediavault.org/) / [Unraid](https://unraid.net/) / [TrueNAS](https://www.truenas.com/)
    - Files
      - Document Archive
      - Media
      - Backups

### Notes

- DNS, VPN, Reverse Proxy potentially on Router VM
