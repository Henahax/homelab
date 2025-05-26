# service vm ports

|service|protocol|default|alt|
|-|-:|-:|-:|
|**📁 Nginx Proxy Manager**||||
|*http*|`TCP`|`80`||
|*https*|`TCP`|`443`||
|*admin*|`TCP`|`81`||
|*optional FTP*|`TCP`|`21`||
|**📁 Pi-hole**||||
|*DNS*|`TCP`|`53`||
|*DNS*|`UDP`|`53`||
|*optional DHCP*|`UDP`|`67`||
|*admin*|`TCP`|`80`|todo|
|*optional NTP*|`UDP`|`123`||
|*optional FTL DNS*|`UDP`|`443`|todo|
|**📁 ssh**||||
||`TCP`|`22`|`2222`|
|**📁 endlessh**||||
||`TCP`|`2222`|`22`|
|**📁 portainer**||||
||`TCP`|`9000`||
|**📁 grafana**||||
||`TCP`|`3000`||
|**📁 uptime-kuma**||||
||`TCP`|`3001`||
|**📁 homarr**||||
||`TCP`|`7575`||
|**📁 node.js**||||
|*Homepage*|`TCP`|`80`|`8080`|
|*GW2Tools*|`TCP`|`80`|`8081`|
|*TreasueHunt*|`TCP`|`80`|`8082`|
|**📁 teamspeak**||||
|*voice*|`UDP`|`9987`||
|*file transfer*|`TCP`|`30033`||
|*optional server query (raw)*|`TCP`|`10011`||
|*optional server query (SSH)*|`TCP`|`10022`||
|*optional web query http*|`TCP`|`10080`||
|*optional web query https*|`TCP`|`10443`||
|*optional TSDNS*|`TCP`|`41144`||
|**📁 wireguard**||||
||`UDP`|`51820`||
||`TCP`|`51821`||
|**📁 ntfy**||||
||`TCP`|`80`|todo|
|**📁 foldingathome**||||
||`TCP`|`7396`||
