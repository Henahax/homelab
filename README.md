# Homelab

|Name|Info|IP Address|Operating System|
|-|-|-|-|
|**`server`**|🍗 Home server|`192.168.0.2`|[Proxmox](https://proxmox.com/)|

## Hardware

|Category|Requirements|Hardware *(alternative)*|Info|
|-|-|-|-|
|**CPU**|6+ cores|Intel Core i5-14400 *(Intel Core i5-13400)*||
||power efficient (C-states)|||
|**Mainboard**|1+ Ethernet|MSI PRO B760-P DDR4 II *(GIGABYTE B760M DS3H AX DDR4)*||
||1+ NVMe|||
||4+ SATA|||
|**Memory**|32+ GB|G.Skill Aegis UDIMM 32GB Kit, DDR4-3200||
|**Power Supply**|400+ W|Corsair CX Series 2023 CX550 550W *(be quiet! SFX Power 3 450W SFX)*||
||efficient under low load|||
|**Case**|4+ 3.5"|Inter-Tech 4088 [Rev. 2], 4HE *(Jonsbo N4 Black)*||
|**Case Fan**|PWM|Noctua NF-A12x25, 120mm||
||low noise|||
|**Storage**|SSD NVMe, 250+ GB|Kingston KC3000 512GB|`system` *(OS, VMs, containers)*|
||SSD NVMe, 250+ GB|Kingston KC3000 1TB|`volumes` *(volumes of services)*|
||HDD SATA, 4+ TB|Seagate IronWolf NAS HDD +Rescue 8TB|`files` *(media, documents)*|
||HDD SATA, 2+ TB|Seagate IronWolf NAS HDD +Rescue 4TB|`backup`|

## Virtual machines

|Name|Info|IP address|Operationg system|
|-|-|-|-|
|**`router`** *future*|🛜 Router|`192.168.0.10`|[OPNsense](https://opnsense.org/)|
|**`services`**|🐋 Docker host|`192.168.0.11`|[Debian](https://debian.org/)|
|**`nas`**|💾 NAS|`192.168.0.12`|[TrueNAS Community Edition](https://www.truenas.com/truenas-community-edition/)|
|**`home`**|🏠 Home automation|`192.168.0.13`|[Home Assistant](https://home-assistant.io/)|

## ZFS

todo

- SSD system
- SSD docker-volumes
- HDD media
- HDD backup

    volumes:

  - /test/myapp/config:/config

## Ports

|Category|Port range|
|-|-|
|Public Web|`8080-8099`|
|Admin Panels||
|Internal APIs||
|Monitoring||

## Containers

running on 🐋 Services-VM

Ports: `host:container`

|Category|Description|Services|Port *(default: `TCP`)*|Info|
|-|-|-|-|-|
|**Admin**|Container management|[Komodo](https://komo.do/)|`TODO`||
||Auto-update containers|[Watchtower](https://github.com/containrrr/watchtower)|`TODO`||
||Dashboard|[Homarr](https://homarr.dev/)|`TODO`||
||Monitoring|[Uptime Kuma](https://uptime.kuma.pet/)|`TODO`||
||Monitoring dashboard|[Grafana](https://grafana.com/)|`3000:3000`||
||Notifications|[ntfy](https://docs.ntfy.sh/)|`TODO`||
|**Database**|Databases for services|[PostgreSQL](https://www.postgresql.org/)|`5432:5432`||
||Database administration|[pgAdmin](https://www.pgadmin.org/)|`TODO`||
|**Network**|Dynamic DNS|[ddns-updater](https://github.com/qdm12/ddns-updater)|`TODO`||
||Reverse proxy|[træfik](https://traefik.io/)|`80:80`|http|
||||`443:443`|https|
||||`TODO:8080`|Webinterface|
||VPN server|[WireGuard](https://wireguard.com/) / [tailscale](https://tailscale.com/)|`TODO`||
||DNS ad blocking|[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome) / [Pi-hole](https://pi-hole.net/)|`TODO`||
|**Files**|File sync & share|[Nextcloud](https://docs.linuxserver.io/images/docker-nextcloud/)|`TODO`||
||file synchronisation|[Syncthing](https://hub.docker.com/r/linuxserver/syncthing)|`TODO`||
||Document management|[Paperless-ngx](https://docs.paperless-ngx.com/)|`TODO:8000`||
|**Media**|Media system|[Jellyfin](https://docs.linuxserver.io/images/docker-jellyfin/)|`TODO`||
||Photo & video management|[immich](https://immich.app/)|`TODO`||
||Media automation|[Radarr](https://docs.linuxserver.io/images/docker-radarr/), [Sonarr](https://docs.linuxserver.io/images/docker-sonarr/), [Prowlarr](https://docs.linuxserver.io/images/docker-prowlarr/), [Bazarr](https://docs.linuxserver.io/images/docker-bazarr/), [Whisparr](https://wiki.servarr.com/whisparr) - [*Servarr*](https://wiki.servarr.com/)|`TODO`||
|**Private**|Password vault|[VaultWarden](https://github.com/dani-garcia/vaultwarden)|`TODO`||
||Personal notes|[Obsidian](https://docs.linuxserver.io/images/docker-obsidian/) / TODO: Joplin|`TODO`||
||Large Langugage Model|[Ollama](https://ollama.com/)|`TODO`||
|**Public**|Websites|[Node.js](https://nodejs.org/) / [Deno](https://deno.com/)|`TODO-TODO:80`|Port range for multiple websites|
||Voice chat|[TeamSpeak](https://teamspeak.com/)|`UDP` `9987:9987`|Voice|
||||`30033:30033`|Filetransfer|
||||`10011:10011`|ServerQuery (raw)|
||||`10022:10022`|ServerQuery (SSH)|
||||`10080:10080`|WebQuery (http)|
||||`10443:10443`|WebQuery (https)|
||||`41144:41144`|TSDNS|
|**Miscellaneous**|Research contribution|[Folding@home](https://docs.linuxserver.io/images/docker-foldingathome/)|`TODO`||
||SSH tarpit|[Endlessh](https://github.com/skeeto/endlessh) / [endlessh-go](https://github.com/shizunge/endlessh-go)|`TODO`||

todo:

- syncthing

## Databases

use PostgreSQL where possible

- nextcloud
- teamspeak
- NodeJS applications

## backup

todo
