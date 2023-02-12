LibreELEC post install automation for docker-compose with containers, mounts, utilites, etc.

Installation:

1. Install LibreELEC
  * Install Docker add-on
  * Set Timezone
  * Enable SSH access
  * Set/enable HTTP kodi access with port 8081 (conflict with sabnzbd)
2. Logon as the root user
3. mkdir -p /storage/github/htcp
4. Copy all files from https://github.com/automatemybuild/htpc to /storage/github/htpc
  * chmod +x /storage/github/htcp/build_htpc
5. NFS mounts
  * Update your NAS volumes you will be mounting to allow LibreELEC IP address 
  * Update/Add/Remove storage-NAME.mount files included. Delete unused. 
6. Run /storage/github/htcp/build_htpc
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
http://hostname.domain:8989

SABnzbd
http://hostname.domain:8080
common error: required whitelist entry to allow hostname.domain

Jellyfin
http://hostname.domain:8096


Helpful configuration guides:
https://trash-guides.info/


1. Control Commands: Start/stop/status
* docker-compose up -d   <- start and return to command prompt
* docker-compose up      <- start with logs, ctrl-c to stop/exit
* docker-compose ps      <- show running containers under docker-compose
* docker-compose down    <- stop and kill containers running

2. Odd Condition: Where docker-compose reports Error already running but not under docker-compose (steps)
ERROR: for radarr  Cannot create container for service container: Conflict. The container name "/container" is already in use by container
* docker-compose ps             <- shows no running containers 
* docker container ls -a        <- list all containers with state (shows running containers)
* docker stop $(docker ps -aq)  <- stops all containers
* docker rm $(docker ps -aq)    <- removes all containers 
* docker-compose up -d          <- start containers under docker-compose
