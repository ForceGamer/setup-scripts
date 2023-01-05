#!/bin/bash

echo -e "\nINSTALLING PREREQUISITES\n"

# Prerequisites
xbps-install \
    curl \
    wget \
    git \
-y

echo -e "\nINSTALLING FLATPAK\n"

# Flatpak installation
xbps-install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\nINSTALLING INTERNET\n"

# Internet
flatpak install flathub com.discordapp.Discord -y
xbps-install qbittorrent -y

echo -e "\nINSTALLING CREATIVE\n"

# Creative
xbps-install \
    blender \
    gimp \
    krita \
    obs \
-y

echo -e "\nINSTALLING GAMING\n"

# Gaming
xbps-install \
    steam \
    gamemode \
    lutris \
    PrismLauncher \
    wine-devel \
-y

echo -e "\nINSTALLING PRODUCTIVITY\n"

# Productivity
xbps-install \
    libreoffice \
    neofetch \
    code \
-y
curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash


# Liquorix Kernel
# OLD: curl 'https://liquorix.net/install-liquorix.sh' | bash
# echo "deb http://liquorix.net/debian sid main future" > /etc/apt/sources.list
# apt-get update && apt-get install '^liquorix-([^-]+-)?keyring.?'
# xbps-install \
#     linux-image-liquorix-amd64
#     linux-headers-liquorix-amd64
# -y

echo -e "\nINSTALLING WINDOW MANAGER TOOLS\n"

# Window Manager tools
xbps-install \
    bspwm \
    sxhkd \
    feh \
    polybar \
    dunst \
    rofi \
    Thunar \
    spectacle \
    picom \
-y

echo -e "\nINSTALLING FONTS\n"

# Fonts
xbps-install \
    font-awesome \
    noto-fonts-ttf \
    font-material-design-icons-ttf \
-y

echo -e "\nSETTING UP CONFIGS\n"

# Config setup
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