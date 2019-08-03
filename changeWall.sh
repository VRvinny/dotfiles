#cronjob

feh --bg-fill $(ls ~/.i3/lock | grep -v "lock.png" | grep -v "*.sh"| sort -R | tail -1)
