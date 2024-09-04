#!/usr/bin/env bash

# core-pkgs
sudo pacman -S fastfetch git github-cli reflector stow less grep tree udisks2 zip unzip wget curl fzf neovim bluez bluez-tools btop 

# yay-install
git clone (yay)
cd yay
makepkg -si

# sys-pkgs
yay -S hyprland-git kitty thunar ranger bashmount feh grim slurp bitwarden librewolf-bin libreoffice-fresh hyprpaper-git gimp dunst waybar tofi vesktop wl-clipboard steam liquidctl 
