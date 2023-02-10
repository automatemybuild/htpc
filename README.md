LibreELEC post install automation for docker-compose with containers, mounts, utilites, etc.

Installation:

1. Install LibreELEC
  * Install Docker add-on
  * Set Timezone
  * Enable SSH access
2. Logon as the root user
3. mkdir -p /storage/github/htcp
4. Copy all files from https://github.com/automatemybuild/htpc to /storage/github/htpc
5. NFS mounts
  * Update your NAS volumes you will be mounting to allow LibreELEC IP address 
  * Update/Add/Remove storage-NAME.mount files included 
6. Run /storage/github/htcp/build_htpc
  * chmod +x /storage/github/htcp/build_htpc
  * directories added relate to the docker-compose.yml
  * confirm NFS services start before enable
  * confirm docker-compose version works
  * continue with reboot
7. Run /storage/github/htcp/build_htpc to continue
  * confirm docker-compose started container
  * Upon future reboots docker-compose should start unless marked down

Links: 

Radarr
http://hostname.domain:7878

Sonarr
http://hostname.domain:7878

SABnzbd
http://hostname.domain:7878
common error: required whitelist entry to allow hostname.domain

Jellyfin
http://hostname.domain:8096

Helpful configuration guides:
https://trash-guides.info/
