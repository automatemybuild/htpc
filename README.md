LibreELEC post install automation for docker-compose with containers, mounts, utilites, etc.

Installation:
Install LibreELEC
  Install Docker add-on
  Set Timezone
  Enable SSH access
Logon as the root user
mkdir -p /storage/github/htcp
copy all files from https://github.com/automatemybuild/htpc to /storage/github/htpc
NFS mounts
  Update your NAS volumes you will be mounting to allow LibreELEC IP address 
  Update/Add/Remove storage-NAME.mount files included 
Run /storage/github/htcp/build_htpc
  chmod +x /storage/github/htcp/build_htpc
  directories added relate to the docker-compose.yml
  confirm NFS services start before enable
  confirm docker-compose version works
  continue with reboot
Run /storage/github/htcp/build_htpc to continue
  confirm docker-compose started container
  Upon future reboots docker-compose should start unless marked down

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
