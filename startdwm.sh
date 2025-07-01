#!/bin/sh

feh --bg-scale ~/dwm-config/dwm/wallpapers/island-night.png
xset -b

picom -b --config ~/.config/picom/picom.conf
setxkbmap us &
dwmblocks &

while true; do
	# Log stderror to a file
	dwm 2>~/.dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done
