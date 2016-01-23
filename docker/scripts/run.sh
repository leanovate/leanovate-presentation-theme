#!/bin/sh

case $1 in
sh)
    /bin/sh
    ;;
bootstrap)
    if [ -f config.toml ]; then
        echo "Alread bootstrapped"
        exit 1
    fi
    hugo new site .
    git init .
    git submodule add https://github.com/leanovate/leanovate-presentation-theme.git themes/leanovate-presentation-theme
    git submodule update
    echo 'public/' > .gitignore
    echo 'theme = "leanovate-presentation-theme"' >> config.toml
    echo 'pygmentsstyle = "colorful"' >> config.toml
    echo 'relativeurls = true' >> config.toml
    echo 'uglyurls = true' >> config.toml
    echo '' >> config.toml
    echo '[taxonomies]' >> config.toml
    echo '  presentation = "presentations"' >> config.toml
    ;;
git)
    shift
    git $@
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
