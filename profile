echo " _  _____  ____ ___ 
| |/ / _ \|  _ \_ _|
| ' / | | | | | | | 
| . \ |_| | |_| | | 
|_|\_\___/|____/___|
"
PATH=$HOME/bin:$PATH
alias ll='ls -alF'
alias vim='vi'
[ -f /storage/bin/docker-compose ] && /storage/bin/docker-compose ps
[ -f /storage/.lastupdate ] && printf "Last update: `cat /storage/.lastupdate`  "
[ -f /storage/.lastbackup ] && printf "Last backup: `cat /storage/.lastbackup`"
printf "\n"
/storage/bin/health_htpc
