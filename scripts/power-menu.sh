#!/bin/bash

option=$(echo -e " Poweroff\n Reboot\n Lock\n Suspend\n Logout" | rofi -dmenu -p "Power:")

case "$option" in
    " Poweroff") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Lock") betterlockscreen -l || i3lock ;;  # Замените на свою команду блокировки
#    " Suspend") systemctl suspend ;;
    " Logout") pkill -KILL -u $USER ;;
    *) exit ;;
esac
