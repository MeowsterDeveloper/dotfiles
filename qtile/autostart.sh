#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
# systray disk
udiskie -t &
# systray
nm-applet &
# nitrogen
nitrogen --restore &
# Keymap
setxkbmap -layout us -variant intl &
