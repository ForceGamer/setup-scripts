#!/bin/bash

# Prerequisites
xbps-install \
    curl \
    wget \
    git \
-y

# Flatpak installation
xbps-install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Internet
flatpak install flathub com.discordapp.Discord -y
xbps-install qbittorrent -y

# Creative
xbps-install \
    blender \
    gimp \
    krita \
    obs \
-y

# Gaming
xbps-install \
    steam \
    gamemode \
    lutris \
    PrismLauncher \
    wine-devel \
-y

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

# Window Manager tools
xbps-install \
    bspwm \
    sxhkd \
    feh \
    polybar \
    dunst \
    rofi \
    thunar \
    spectacle \
    picom \
-y

# Fonts
xbps-install \
    font-awesome \
    noto-fonts-ttf \
    font-material-design-icons-ttf \
-y

echo "\e[32Setup complete!\e[0m"