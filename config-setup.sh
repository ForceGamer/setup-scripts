#!/bin/bash

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar

cd ./configs
cp ./bspwmrc ~/.config/bspwm/bspwmrc
cp ./sxhkdrc ~/.config/sxhkd/sxhkdrc
cp ./config.ini ~/.config/polybar/config.ini
cp ./polybar_screens.sh ~/.config/polybar_screens.sh

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

echo -e "\nSETUP COMPLETE\n"