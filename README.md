# HomeLab

current system private

future system in planning:

## **🍗 `Server`**

- **IP:** `192.168.0.2`
- **OS:** [ProxMox](https://www.proxmox.com/)
- **Hardware**
  - **CPU**
    - Intel N305 / Intel N355 / Intel Core i3-14100
  - **Mainboard**
    - 2+ Ethernet
    - 2+ NVMe
    - 4+ SATA
  - **Storage**
    - 2 SSDs for OS, VMs
    - SSD for Storage
    - HDD for Backup
  - **Case**
    - µATX / ITX
    - 2+ 3.5" HDD
    - 2+ 2.5" SSD
- **Virtual Machines**
  - **🛜 `Router`**
    - IP: `192.168.0.3`
    - OS: [OPNsense](https://opnsense.org/) / [pfSense](https://www.pfsense.org/)
  - **🐋 `Services`**
    - IP: `192.168.4`
    - OS: [debian](https://www.debian.org/)
    - Containers:
      - **Admin**:
        - Container management: [Portainer](https://www.portainer.io/) / [Dockge](https://dockge.kuma.pet/) / [Arcane](https://arcane.ofkm.dev/)
        - Dashboard: [Homarr](https://homarr.dev/)
        - Monitoring: [Uptime Kuma](https://uptime.kuma.pet/)
        - Monitoring dashboard: [Grafana](https://grafana.com/)
        - Notifications: [ntfy](https://docs.ntfy.sh/)
      - **Network**:
        - Dynamic DNS: [CloudFlare DDNS](https://hub.docker.com/r/oznu/cloudflare-ddns)
        - Reverse proxy: [Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)
        - VPN server: [WireGuard](https://www.wireguard.com/) / [tailscale](https://tailscale.com/)
        - DNS ad blocking: [Pi-hole](https://pi-hole.net/)
      - **Private**:
        - File hosting: [Nextcloud](https://nextcloud.com/)
        - Document management: [Paperless-ngx](https://docs.paperless-ngx.com/)
        - Photo & video management: [immich](https://immich.app/)
        - Media system: [Jellyfin](https://jellyfin.org/)
        - Personal notes: [Obsidian](https://obsidian.md/)
        - Collaborative notes: [HedgeDoc](https://hedgedoc.org/)
        - Large Langugage Model: [Ollama](https://ollama.com/)
        - Workflow automation: [n8n](https://n8n.io/)
      - **Public**:
        - Websites: [Node.js](https://nodejs.org/) / [Deno](https://deno.com/)
        - Voice chat: [teamspeak](https://www.teamspeak.com/)
      - **Misc**:
        - Research contribution: [Folding@home](https://foldingathome.org/)
        - SSH tarpit: [Endlessh](https://github.com/skeeto/endlessh)
  - **🖫 `Data`**
    - IP: `192.168.0.5`
    - OS: [TrueNAS SCALE](https://www.truenas.com/truenas-scale/)
    - manages ZFS
    - Files:
      - Document Archive
      - Media
      - Backups
  - **🏠 `Home`**
    - IP: `192.168.0.6`
    - OS: [Home Assistant](https://www.home-assistant.io/)

### Notes

- Network Containers potentially on Router VM
