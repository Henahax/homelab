# Homelab

|Name|Info|IP Address|Operating System|
|-|-|-|-|
|**`server`**|🍗 Home server|`192.168.0.2`|[Proxmox](https://proxmox.com/)|

## Hardware

|Category|Requirements|Hardware|Info|
|-|-|-|-|
|**CPU**|6+ cores|Intel Core Ultra 5 225||
||power efficient (C-states)|||
|**Mainboard**|1+ Ethernet|ASRock B860I WiFi|2 Ethernet, enables router|
||1+ NVMe|||
||4+ SATA|||
|**Memory**|32+ GB|Kingston UDIMM 32GB Kit, DDR5-5200||
|**Power Supply**|400+ W|be quiet! SFX Power 3 450W SFX||
||efficient under low load|||
|**Case**|4+ 3.5"|Jonsbo N3||
|**Storage**|SSD NVMe, ZFS mirror|2x Western Digital NVMe SSD 1TB|`system`|
||HDD SATA|Seagate IronWolf NAS HDD +Rescue 8TB|`files` *(media, documents)*|
||HDD SATA|Seagate IronWolf NAS HDD +Rescue 4TB|`backup` *(boot, system, volumes, documents)*|
||SSD SATA|Samsung SSD 850 EVO 250GB *(used, future)*|`cache` *(cache for TrueNAS)*|

## Virtual machines

|Name|Info|IP address|Operationg system|
|-|-|-|-|
|**`router`** *future*|🛜 Router|`192.168.0.10`|[OPNsense](https://opnsense.org/)|
|**`services`**|🐋 Docker host|`192.168.0.11`|[Debian](https://debian.org/)|
|**`nas`**|💾 NAS|`192.168.0.12`|[TrueNAS Community Edition](https://www.truenas.com/truenas-community-edition/)|
|**`home`**|🏠 Home automation|`192.168.0.13`|[Home Assistant](https://home-assistant.io/)|

## Drives & File System

- system (ZFS mirror)
  - boot (ZFS dataset)
  - vm-data (ZFS dataset)
  - container-data (ZFS dataset)
- files (ZFS)
  - documents (ZFS dataset)
  - notes (zfs dataset)
  - photos (ZFS dataset)
  - media (ZFS dataset)
    - books
    - movies
    - music
    - tv
- backup (ZFS)
  - boot (ZFS dataset)
  - vm-data (ZFS dataset)
  - container-data (ZFS dataset)
  - documents (ZFS dataset)
  - photos (ZFS dataset)
- cache

## Ports

|Category|Port range|
|-|-|
|Admin Panels|`3000-3999`|
|Internal services||
|Monitoring||
|Public Web|`8080-8099`|

## Containers

running on 🐋 Services-VM

Port Info:

- default: `TCP`
- `host:container`

TODO:

- Pangolin
- n8m
- syncthing

|Category|Description|Services|Port|Info|Priority|
|-|-|-|-|-|-|
|**Admin**|Container management|[Portainer](https://www.portainer.io/)|`TODO:9443`||⭐⭐⭐|
||Auto-update containers|[Watchtower](https://github.com/containrrr/watchtower)|`TODO:8080`|||
||Dashboard|[Homarr](https://homarr.dev/)|`TODO:7575`|||
||Monitoring|[Uptime Kuma](https://uptime.kuma.pet/)|`TODO:3001`|||
||Monitoring dashboard|[Grafana](https://grafana.com/)|`TODO:3000`|||
||Notifications|[ntfy](https://docs.ntfy.sh/)|`TODO:80`|||
|**Database**|Databases for services|[PostgreSQL](https://www.postgresql.org/)|`5432:5432`||⭐⭐|
||Database administration|[pgAdmin](https://www.pgadmin.org/)|`TODO:8080`||⭐⭐|
|**Network**|Dynamic DNS|[ddns-updater](https://github.com/qdm12/ddns-updater)|`TODO:8000`||⭐⭐|
||Reverse proxy|[træfik](https://traefik.io/)|`80:80`|http|⭐⭐⭐|
||||`443:443`|https||
||||`TODO:8080`|Webinterface||
||VPN server|[WireGuard](https://wireguard.com/) / [tailscale](https://tailscale.com/)|`TODO`||⭐|
||DNS ad blocking|[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) / [Pi-hole](https://pi-hole.net/)|`TODO`||⭐|
|**Files**|File sync & share|[Nextcloud](https://docs.linuxserver.io/images/docker-nextcloud/)|`TODO:443`||⭐⭐|
||file synchronisation|[Syncthing](https://hub.docker.com/r/linuxserver/syncthing)|`TODO`|||
||Document management|[Paperless-ngx](https://docs.paperless-ngx.com/)|`TODO:8000`|||
|**Media**|Media system|[Jellyfin](https://docs.linuxserver.io/images/docker-jellyfin/)|`TODO`|||
||Photo & video management|[immich](https://immich.app/)|`TODO`|||
||Media automation|[Radarr](https://docs.linuxserver.io/images/docker-radarr/), [Sonarr](https://docs.linuxserver.io/images/docker-sonarr/), [Prowlarr](https://docs.linuxserver.io/images/docker-prowlarr/), [Bazarr](https://docs.linuxserver.io/images/docker-bazarr/), [Whisparr](https://wiki.servarr.com/whisparr) - [*Servarr*](https://wiki.servarr.com/)|`TODO`|||
|**Private**|Password vault|[VaultWarden](https://github.com/dani-garcia/vaultwarden)|`TODO:80`|||
||Personal notes|[Obsidian](https://docs.linuxserver.io/images/docker-obsidian/)|`TODO`||⭐⭐|
||Large Langugage Model|[Ollama](https://ollama.com/)|`TODO`|||
|**Public**|Websites|[Node.js](https://nodejs.org/) / [Deno](https://deno.com/)|`TODO-TODO:80`|Port range for multiple websites||
||Voice chat|[TeamSpeak](https://teamspeak.com/)|`UDP` `9987:9987`|Voice|⭐⭐|
||||`30033:30033`|Filetransfer||
||||`10011:10011`|ServerQuery (raw)||
||||`10022:10022`|ServerQuery (SSH)||
||||`10080:10080`|WebQuery (http)||
||||`10443:10443`|WebQuery (https)||
||||`41144:41144`|TSDNS||
|**Miscellaneous**|Research contribution|[Folding@home](https://docs.linuxserver.io/images/docker-foldingathome/)|`TODO:7396`|||
||SSH tarpit|[endlessh-go](https://github.com/shizunge/endlessh-go)|`TODO`|||

## Databases

use PostgreSQL where possible

- nextcloud
- teamspeak
- NodeJS applications

## backup

todo
