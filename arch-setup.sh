#!/bin/bash

# Prerequisites
#pacman -S --needed \
#    curl \
#    wget \
#    git \
#-y

# Flatpak installation
# pacman -S --needed flatpak -y
# pacman -S --needed gnome-software-plugin-flatpak -y
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Internet
pacman -S --needed \
    firefox \
    discord \
    qbittorrent \
-y

# Creative
pacman -S --needed \
    blender \
    gimp \
    krita \
-y
flatpak install flathub com.obsproject.Studio -y

# Gaming
pacman -S --needed \
    steam \
    gamemode \
    lutris \
    wine-staging \
-y
flatpak install flathub org.prismlauncher.PrismLauncher -y

# Misc
pacman -S --needed \
    libreoffice \
    neofetch \
    code \
    neovim \
-y
curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash


# Zen Kernel
pacman -S --needed \
    linux-zen \
    linux-zen-headers \
    nvidia-dkms \
-y 

# Window Manager tools
pacman -S --needed \
    bspwm \
    sxhkd \
    polybar \
    dunst \
    rofi \
    kde-spectacle \
    picom \
-y