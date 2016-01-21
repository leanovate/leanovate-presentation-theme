#!/bin/sh

case $1 in
sh)
    /bin/sh
    ;;
*)
    hugo $@
    ;;
esac
