#!/usr/bin/env bash

icon="$HOME/.i3/lock/lock.png"
tmpbg="$HOME/.i3/lock/wall.png"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
$HOME/.i3/lock/corrupter -add 1 -boffset 50 -mag 2 -lg 100 -lb 255  -meanabber 17 -stride 0.6 $tmpbg $tmpbg
#sleep 0.5
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg" -n
