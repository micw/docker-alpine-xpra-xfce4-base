#!/bin/bash

set -e

dbus-daemon --system --nofork &

mkdir -p /xpra-sockets
chown -R user /xpra-sockets

su - user -c "LANG=${LANG} xpra start-desktop --html=on --socket-dir=/xpra-sockets --daemon=no --notifications=yes --dbus-proxy=yes --xsettings=no --mdns=no --bind-tcp=0.0.0.0:10000 --start-child=xfce4-session --exit-with-children --sharing=yes"
