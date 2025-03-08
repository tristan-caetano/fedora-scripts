#!/bin/bash

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/snap/bin:/usr/lib/flatpak/bin

# Mounting Server
sshfs tcaetano@192.168.1.135:/home/tcaetano /mnt/optiplexhome

# Run the applications as tcaetano
/usr/bin/flatpak run com.spotify.Client &
/usr/bin/goxlr-launcher &
# /usr/bin/firefox &
/usr/bin/Discord &
/usr/bin/steam &
/usr/bin/polychromatic-controller &

# Optionally disown if you need
disown

