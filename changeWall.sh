#cronjob
#select random wallpaper
feh --bg-fill ~/.i3/lock/$(ls ~/.i3/lock | grep -v "lock.png" | grep -v "wall.png" | grep -v "*.sh"| sort -R | tail -1)
