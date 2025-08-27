# Homelab

|Type|Data|
|-|-|
|Name|**`Server`**|
|IP-Address|**`192.168.0.2`**|
|Operating system|**[Proxmox](https://proxmox.com/)**|

## Hardware

|Category|Reqirements|Info|Hardware|
|-|-|-|-|
|***CPU***|8+ cores||Intel Core i5-14400T|
||power efficient (C-states)|||
|***Mainboard***|1+ Ethernet|Intel|Biostar B760MXC PRO 2.0|
||1+ NVMe|||
||4+ SATA|||
|***Case***|4+ 3.5"||Jonsbo N4 Black|
|***Storage***|SSD NVMe, 250+ GB|system (OS, VMs, containers)|Kingston KC3000 512GB|
||SSD NVMe, 250+ GB|services-data (volumes of services)|Kingston KC3000 1TB|
||HDD SATA, 8+ TB|data (media, documents)|Seagate IronWolf NAS HDD +Rescue 8TB|
||HDD SATA, 2+ TB|backup|Seagate IronWolf NAS HDD +Rescue 4TB|

## Virtual machines

### 🐋 Services

|Type|Data|
|-|-|
|Name|**`Services`**|
|IP-Address|**`192.168.0.4`**|
|Operating system|**[Debian](https://debian.org/)**|
|Software|**[Docker](https://docker.com/)**|

### 💾 Data

|Type|Data|
|-|-|
|Name|**`Data`**|
|IP-Address|**`192.168.0.5`**|
|Operating system|**[TrueNAS Community Edition](https://www.truenas.com/truenas-community-edition/)**|

### 🏠 Home

|Type|Data|
|-|-|
|Name|**`Home`**|
|IP-Address|**`192.168.0.6`**|
|Operating system|**[Home Assistant](https://home-assistant.io/)**|

## ZFS

todo

- SSD system
- SSD docker-volumes
- HDD media
- HDD backup

## Containers

running on 🐋 Services-VM

|Category|Description|Services|
|-|-|-|
|***Admin***|Container management|[Portainer](https://portainer.io/)|
||Auto-update containers|[Watchtower](https://github.com/containrrr/watchtower)|
||Dashboard|[Homarr](https://homarr.dev/)|
||Monitoring|[Uptime Kuma](https://uptime.kuma.pet/)|
||Monitoring dashboard|[Grafana](https://grafana.com/)|
||Notifications|[ntfy](https://docs.ntfy.sh/)|
||Database administration|[pgAdmin](https://www.pgadmin.org/)|
|***Database***|Databases for services|[PostgreSQL](https://www.postgresql.org/)|
|***Network***|Dynamic DNS|[CloudFlare DDNS](https://hub.docker.com/r/oznu/cloudflare-ddns)|
||Reverse proxy|[Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)|
||VPN server|[WireGuard](https://wireguard.com/) / [tailscale](https://tailscale.com/)|
||DNS ad blocking|[Pi-hole](https://pi-hole.net/)|
|***Private***|File sync & share|[Nextcloud](https://nextcloud.com/)|
||Password vault|[VaultWarden](https://github.com/dani-garcia/vaultwarden)|
||Document management|[Paperless-ngx](https://docs.paperless-ngx.com/)|
||Photo & video management|[immich](https://immich.app/)|
||Media system|[Jellyfin](https://jellyfin.org/)|
||Personal notes|[Obsidian](https://obsidian.md/)|
||Large Langugage Model|[Ollama](https://ollama.com/)|
||Media automation|[Servarr](https://wiki.servarr.com/)|
|***Public***|Websites|[Node.js](https://nodejs.org/) / [Deno](https://deno.com/)|
||Voice chat|[TeamSpeak](https://teamspeak.com/)|
|***Miscellaneous***|Research contribution|[Folding@home](https://foldingathome.org/)|
||SSH tarpit|[Endlessh](https://github.com/skeeto/endlessh) / [endlessh-go](https://github.com/shizunge/endlessh-go)|

## Databases

use PostgreSQL where possible

- nextcloud
- teamspeak
- NodeJS applications

## backup

todo
