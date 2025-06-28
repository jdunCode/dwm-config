#!/bin/sh

feh --bg-scale ~/dwm-config/dwm/wallpapers/wp.jpg
xset -b

#$HOME/.config/polybar/launch.sh &
setxkbmap us &
dwmblocks &

while true; do
	# Log stderror to a file
	dwm 2>~/.dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done
