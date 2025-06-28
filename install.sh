#!/bin/bash

# Пути
PATH_DWM="$(pwd)"

mkdir /usr/local/share/xsessions/

cp -v $PATH_DWM/startdwm.sh /usr/local/bin
cp -v $PATH_DWM/dwm.desktop /usr/local/share/xsessions/
cp -v $PATH_DWM/scripts/power-menu.sh /usr/local/bin/
cp -v $PATH_DWM/scripts/change_language.sh /usr/local/bin/

chmod +x /usr/local/bin/change_language.sh
chmod +x /usr/local/bin/power-menu.sh
chmod +x /usr/local/bin/startdwm.sh

cd $PATH_DWM/dwm
make
sudo make install

cd $PATH_DWM/dwmblocks
make
sudo make install

echo "Установка заверешена!"
