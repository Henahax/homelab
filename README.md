# Homelab

|Type|Data|
|-|-|
|Name|**`Server`**|
|IP-Address|**`192.168.0.2`**|
|Operating system|**[ProxMox](https://proxmox.com/)**|

## Hardware

|Category|Reqirements|Info|Hardware|
|-|-|-|-|
|**CPU**|8+ cores||[AMD Ryzen 7 5700G](https://www.intel.com/content/www/us/en/products/sku/231805/intel-core-i3n305-processor-6m-cache-up-to-3-80-ghz/specifications.html)|
||power efficient (C-states)|||
|**Mainboard**|1+ Ethernet|Intel|[ASRock B550M Pro4](https://www.asrock.com/mb/AMD/B550M%20Pro4/index.de.asp)|
||1+ NVMe|||
||4+ SATA|||
|**Case**|4+ 3.5"||[Jonsbo N4 Black](https://www.jonsbo.com/en/products/N4Black.html)|
|**Storage**|SSD, 500+ GB|OS, VMs, containers||
||SSD, 100+ GB|container volumes||
||SSD, 1+ TB|file-share||
||HDD, 1+ TB|media||
||HDD, 1+ TB|backup||

## ZFS

## Virtual machines

### 🛜 Router

|Type|Data|
|-|-|
|Name|**`Router`**|
|IP-Address|**`192.168.0.3`**|
|Operating system|**[OPNsense](https://opnsense.org/) / [pfSense](https://pfsense.org/)**|

### 💾 Data

|Type|Data|
|-|-|
|Name|**`Data`**|
|IP-Address|**`192.168.0.5`**|
|Operating system|**[TrueNAS SCALE](https://truenas.com/truenas-scale/)**|
|Software||

#### "Volumes"

|Name|Description|
|-|-|
|Documents||
|Media||
|Container Volumes|persistent volumes of container services|

### 🐋 Services

|Type|Data|
|-|-|
|Name|**`Services`**|
|IP-Address|**`192.168.0.4`**|
|Operating system|**[Debian](https://debian.org/)**|
|Software|**[Docker](https://docker.com/)**|

#### Containers

|Category|Description|Services|
|-|-|-|
|**Admin**|Container management|[Portainer](https://portainer.io/)|
||Auto-update containers|[Watchtower](https://github.com/containrrr/watchtower)|
||Dashboard|[Homarr](https://homarr.dev/)|
||Monitoring|[Uptime Kuma](https://uptime.kuma.pet/)|
||Monitoring dashboard|[Grafana](https://grafana.com/)|
||Notifications|[ntfy](https://docs.ntfy.sh/)|
|**Network**|Dynamic DNS|[CloudFlare DDNS](https://hub.docker.com/r/oznu/cloudflare-ddns)|
||Reverse proxy|[Nginx Proxy Manager](https://nginxproxymanager.com/) / [træfik](https://traefik.io/)|
||VPN server|[WireGuard](https://wireguard.com/) / [tailscale](https://tailscale.com/)|
||DNS ad blocking|[Pi-hole](https://pi-hole.net/)|
|**Public**|Websites|[Node.js](https://nodejs.org/) / [Deno](https://deno.com/)|
||Voice chat|[teamspeak](https://teamspeak.com/)|
|**Private**|File hosting|[Nextcloud](https://nextcloud.com/)|
||Password management|[Vaultwarden](https://github.com/dani-garcia/vaultwarden/)|
||Document management|[Paperless-ngx](https://docs.paperless-ngx.com/)|
||Photo & video management|[immich](https://immich.app/)|
||Media system|[Jellyfin](https://jellyfin.org/)|
||Personal notes|[Obsidian](https://obsidian.md/)|
||Collaborative notes|[HedgeDoc](https://hedgedoc.org/)|
||Large Langugage Model|[Ollama](https://ollama.com/)|
||Workflow automation|[n8n](https://n8n.io/)|
||Media automation|[Servarr](https://wiki.servarr.com/)|
|**Miscellaneous**|Research contribution|[Folding@home](https://foldingathome.org/)|
||SSH tarpit|[Endlessh](https://github.com/skeeto/endlessh) / [endlessh-go](https://github.com/shizunge/endlessh-go)|

### 🏠 Home

|Type|Data|
|-|-|
|Name|**`Home`**|
|IP-Address|**`192.168.0.6`**|
|Operating system|**[Home Assistant](https://home-assistant.io/)**|
|Software||
