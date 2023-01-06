#!/bin/bash

# Prerequisites
pacman -S --needed \
    curl \
    wget \
    git \
    -y

# YAY Setup
git clone https://aur.archlinux.org/yay.git
(cd ./yay && makepkg -si)

# Flatpak installation
pacman -S --needed flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

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
    obs-studio \
    -y

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
curl -fsSL \
    https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh \
    | bash


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
    feh \
    rofi \
    thunar \
    spectacle \
    picom \
    -y

# Fonts (Material Design icons are not in the main Repos, so we use YAY)
yay -S --needed \
    ttf-font-awesome \
    noto-fonts \
    ttf-material-design-icons \
    -y

echo -e "\nSETTING UP CONFIGS\n"

# Config setup
./config-setup.sh

echo -e "\nSETUP COMPLETE\n"
