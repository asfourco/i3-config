#!/bin/bash
# exit i3 / Archi3 Linux

sel=$(echo -e "lock\nlogout\nsuspend\nreboot\nshutdown" | rofi -dmenu -p "sys")

case $sel in
    lock)
        bash .config/i3lock/lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        bash .config/i3lock/lock.sh && systemctl suspend
        ;;
    reboot)
        reboot
        ;;
    shutdown)
        shutdown now
        ;;
esac

exit 0

