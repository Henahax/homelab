# Homelab

|Name|Info|IP Address|Operating System|
|-|-|-|-|
|**`server`**|🍗 Home server|`192.168.0.2`|[Proxmox](https://proxmox.com/)|

## Hardware

|Category|Requirements|Hardware|Info|
|-|-|-|-|
|***CPU***|6+ cores|[Intel Core i5-12400](https://www.intel.de/content/www/de/de/products/sku/134586/intel-core-i512400-processor-18m-cache-up-to-4-40-ghz/specifications.html)||
||power efficient (C-states)|||
|***Mainboard***|1+ Ethernet|[GIGABYTE B760M DS3H AX DDR4](https://www.gigabyte.com/de/Motherboard/B760M-DS3H-AX-DDR4-rev-1x)||
||1+ NVMe|||
||4+ SATA|||
|***Memory***|32+ GB|G.Skill Aegis UDIMM 32GB Kit, DDR4-3200||
|***Power Supply***|SFX|be quiet! SFX Power 3 450W SFX||
||efficient under low load|||
|***Case***|4+ 3.5"|[Jonsbo N4 Black](https://www.jonsbo.com/en/products/N4Black.html)||
||small formfactor|||
|***Case Fan***|PWM|Noctua NF-A12x25 LS-PWM, 120mm||
||low noise|||
|***Storage***|SSD NVMe, 250+ GB|[Kingston KC3000 512GB](https://www.kingston.com/de/support/technical/products/kc3000)|`system` (OS, VMs, containers)|
||SSD NVMe, 250+ GB|[Kingston KC3000 1TB](https://www.kingston.com/de/support/technical/products/kc3000)|`volumes` (volumes of services)|
||HDD SATA, 4+ TB|[Seagate IronWolf NAS HDD +Rescue 8TB](https://www.seagate.com/de/de/products/nas-drives/ironwolf-hard-drive/)|`files` (media, documents)|
||HDD SATA, 2+ TB|[Seagate IronWolf NAS HDD +Rescue 4TB](https://www.seagate.com/de/de/products/nas-drives/ironwolf-hard-drive/)|`backup`|

## Virtual machines

|Name|Info|IP address|Operationg system|
|-|-|-|-|
|**`services`**|🐋 Docker host|`192.168.0.10`|[Debian](https://debian.org/)|
|**`nas`**|💾 NAS|`192.168.0.11`|[TrueNAS Community Edition](https://www.truenas.com/truenas-community-edition/)|
|**`home`**|🏠 Home automation|`192.168.0.12`|[Home Assistant](https://home-assistant.io/)|

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

Ports: `host:container`

|Category|Description|Services|Port (default: `TCP`)|Info|
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
