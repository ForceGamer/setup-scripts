#!/bin/bash

# Prerequisites
apt install \
    curl \
    wget \
    git \
-y

# Enable 32bit package support (for Wine)
sudo dpkg --add-architecture i386 

# Flatpak installation
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Internet
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.qbittorrent.qBittorrent -y

# Creative
apt install \
    blender \
    gimp \
    krita \
-y
flatpak install flathub com.obsproject.Studio -y

# Gaming
apt install \
    steam \
    gamemode \
-y
flatpak install flathub net.lutris.Lutris -y
flatpak install flathub org.prismlauncher.PrismLauncher -y

# Wine setup
mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
apt update && apt install --install-recommends winehq-staging -y

# Productivity
apt install \
    libreoffice \
    neofetch \
-y
curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash
flatpak install flathub com.visualstudio.code-oss -y


# Liquorix Kernel
# OLD: curl 'https://liquorix.net/install-liquorix.sh' | bash
# echo "deb http://liquorix.net/debian sid main future" > /etc/apt/sources.list
# apt-get update && apt-get install '^liquorix-([^-]+-)?keyring.?'
# apt install \
#     linux-image-liquorix-amd64
#     linux-headers-liquorix-amd64
# -y

# Window Manager tools
apt install \
    bspwm \
    sxhkd \
    feh \
    polybar \
    dunst \
    rofi \
    thunar \
    kde-spectacle \
    picom \
-y

# Fonts
apt install \
    fonts-font-awesome \
    fonts-noto \
    fonts-material-design-icons-iconfont \
-y

# XanMod Kernel
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
apt update && \
    apt install \
        linux-xanmod-x64v3 \
    -y

echo "\e[32Setup complete!\e[0m"