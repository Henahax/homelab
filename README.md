# HomeLab

current system private

future system in planning:

## **🍗 `Server`**

- **IP:** `192.168.0.2`
- **OS:** [ProxMox](https://www.proxmox.com/)
- **Hardware**
  - Intel N100 / Intel N305 / analyze others
  - SSDs for OS and VMs
  - multiple 3.5 HDDs, passed through to TrueNAS SCALE VM
- **VMs**
  - **🛜 `Router`**
    - IP: `192.168.0.3`
    - OS: [pfSense](https://www.pfsense.org/) / [OPNsense](https://opnsense.org/)
  - **🐋 `Services`**
    - IP: `192.168.4`
    - OS: [debian](https://www.debian.org/)
    - Containers:
      - **Admin**:
        - Container Management: [Portainer](https://www.portainer.io/) / [Dockge](https://dockge.kuma.pet/)
        - Dashboard: [Homarr](https://homarr.dev/)
        - Monitoring: [Uptime Kuma](https://uptime.kuma.pet/)
        - Notifications: [ntfy](https://docs.ntfy.sh/)
      - **Network**:
        - Dynamic DNS: [CloudFlare DDNS](https://hub.docker.com/r/oznu/cloudflare-ddns)
        - Reverse Proxy: [Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)
        - VPN Server: [WireGuard](https://www.wireguard.com/)
        - DNS Ad Blocking: [Pi-hole](https://pi-hole.net/)
      - **Private**:
        - Media System: [Jellyfin](https://jellyfin.org/)
        - Document Management: [Paperless-ngx](https://docs.paperless-ngx.com/)
      - **Public**:
        - Personal Websites: [Node.js](https://nodejs.org/) / [Deno](https://deno.com/)
        - Voice-Chat: [teamspeak](https://www.teamspeak.com/)
      - **Misc**:
        - Research contribution: [Folding@home](https://foldingathome.org/)
        - SSH tarpit: [Endlessh](https://github.com/skeeto/endlessh)
        - ollama
        - hedgedoc
        - nextcloud
        - immich
        - n8n
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
