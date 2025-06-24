#!/bin/bash

PATH_DWM="$(pwd)"
PATH_TARGET_STARTDWM="/usr/local/bin"
PATH_TARGET_DWMDESKTOP="/usr/local/share/xsessions/"

cp -v "$PATH_DWM/temp/startdwm.sh" "$PATH_TARGET_STARTDWM/" 
cp -v "$PATH_DWM/temp/dwm.desktop" "$PATH_TARGET_DWMDESKTOP/" 

