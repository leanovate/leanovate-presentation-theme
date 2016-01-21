#!/bin/sh

case $1 in
sh)
    /bin/sh
    ;;
server)
    rsync --daemon --config=/etc/rsyncd.conf
    while true ; do
      hugo server --bind "0.0.0.0"
      sleep 2
    done
    ;;
*)
    hugo $@
    ;;
esac
