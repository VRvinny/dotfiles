#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar example &
polybar -c ~/.i3/polybar/config vinny &
#polybar -c ./.i3/polybar/test bar &
echo "Bars launched..."
