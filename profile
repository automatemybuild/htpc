echo " _   _ _____ ____   ____ 
| | | |_   _|  _ \ / ___|
| |_| | | | | |_) | |    
|  _  | | | |  __/| |___ 
|_| |_| |_| |_|    \____|
"
PATH=$HOME/bin:$PATH
alias ll='ls -alF'
alias vim='vi'
[ -f /storage/docker-compose.yml ] && /storage/bin/docker-compose ps
[ -f /storage/.lastupdate ] && printf "Last update: `cat /storage/.lastupdate`  "
[ -f /storage/.lastbackup ] && printf "Last backup: `cat /storage/.lastbackup`"
printf "\n"
[ -f /storage/bin/health_htpc ] && /storage/bin/health_htpc
