# Homelab

|Name|Info|IP Address|Operating System|
|-|-|-|-|
|**`server`**|🍗 Home server|**`192.168.0.2`**|[Proxmox](https://proxmox.com/)|

## Hardware

|Category|Requirements|Info|Hardware|
|-|-|-|-|
|***CPU***|8+ cores|||
||power efficient (C-states)|||
|***Mainboard***|1+ Ethernet|||
||1+ NVMe|||
||4+ SATA|||
|***Case***|4+ 3.5"|||
|***Storage***|SSD NVMe, 250+ GB|`system` (OS, VMs, containers)||
||SSD NVMe, 250+ GB|`volumes` (volumes of services)||
||HDD SATA, 4+ TB|`files` (media, documents)||
||HDD SATA, 2+ TB|`backup`||

## Virtual machines

|Name|Info|IP address|Operationg system|
|-|-|-|-|
|**`services`**|🐋 Docker host|**`192.168.0.10`**|[Debian](https://debian.org/)|
|**`nas`**|💾 NAS|**`192.168.0.11`**|[TrueNAS Community Edition](https://www.truenas.com/truenas-community-edition/)|
|**`home`**|🏠 Home automation|**`192.168.0.12`**|[Home Assistant](https://home-assistant.io/)|

## ZFS

todo

- SSD system
- SSD docker-volumes
- HDD media
- HDD backup

    volumes:

  - /test/myapp/config:/config

## Containers

running on 🐋 Services-VM

|Category|Description|Services|
|-|-|-|
|***Admin***|Container management|[Portainer](https://portainer.io/) / [Komodo](https://komo.do/)|
||Auto-update containers|[Watchtower](https://github.com/containrrr/watchtower)|
||Dashboard|[Homarr](https://homarr.dev/)|
||Monitoring|[Uptime Kuma](https://uptime.kuma.pet/)|
||Monitoring dashboard|[Grafana](https://grafana.com/)|
||Notifications|[ntfy](https://docs.ntfy.sh/)|
||Database administration|[pgAdmin](https://www.pgadmin.org/)|
|***Database***|Databases for services|[PostgreSQL](https://www.postgresql.org/)|
|***Network***|Dynamic DNS|[ddclient](https://docs.linuxserver.io/images/docker-ddclient/) / [ddns-updater](https://github.com/qdm12/ddns-updater)|
||Reverse proxy|[Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)|
||VPN server|[WireGuard](https://wireguard.com/) / [tailscale](https://tailscale.com/)|
||DNS ad blocking|[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) / [Pi-hole](https://pi-hole.net/)|
|***Private***|File sync & share|[Nextcloud](https://docs.linuxserver.io/images/docker-nextcloud/)|
||Password vault|[VaultWarden](https://github.com/dani-garcia/vaultwarden)|
||Document management|[Paperless-ngx](https://docs.paperless-ngx.com/)|
||Photo & video management|[immich](https://immich.app/)|
||Media system|[Jellyfin](https://docs.linuxserver.io/images/docker-jellyfin/)|
||Personal notes|[Obsidian](https://docs.linuxserver.io/images/docker-obsidian/) / TODO: Joplin|
||Large Langugage Model|[Ollama](https://ollama.com/)|
||Media automation|[Radarr](https://docs.linuxserver.io/images/docker-radarr/), [Sonarr](https://docs.linuxserver.io/images/docker-sonarr/), [Prowlarr](https://docs.linuxserver.io/images/docker-prowlarr/), [Bazarr](https://docs.linuxserver.io/images/docker-bazarr/), [Whisparr](https://wiki.servarr.com/whisparr) - [*Servarr*](https://wiki.servarr.com/)|
|***Public***|Websites|[Node.js](https://nodejs.org/) / [Deno](https://deno.com/)|
||Voice chat|[TeamSpeak](https://teamspeak.com/)|
|***Miscellaneous***|Research contribution|[Folding@home](https://docs.linuxserver.io/images/docker-foldingathome/)|
||SSH tarpit|[Endlessh](https://github.com/skeeto/endlessh) / [endlessh-go](https://github.com/shizunge/endlessh-go)|

todo:

- syncthing

## Databases

use PostgreSQL where possible

- nextcloud
- teamspeak
- NodeJS applications

## backup

todo
