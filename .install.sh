!#/bin/bash
# Install script

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd .. && 
yay -S ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang-git hyprcursor-git hyprwayland-scanner-git xcb-util-errors hyprutils-git hyprgraphics-git hyprland-qtutils aquamarine &&
yay -S an-anime-game-launcher-bin arch-gaming-meta audacity balena-etcher bashmount bettergruvbox-gtk-theme bitwarden bluez bluez-utils brightnessctl btop cliphist discord dmidecode dunst efibootmgr exfat-utils fastfetch feh gamemode gimp git github-cli goverlay grim gvfs heroic-games-launcher-bin iptables-nft kdenlive kitty less libreoffice-fresh librewolf-bin lm-sensors mupdf neovim nftables nginx noto-fonts-emoji ntfs-3g nwg-look hypridle-git hyprpaper-git hyprpolkitagent obsidian openrazer-daemon os-prober pipes.sh polychromatic protonup-qt pwvucontrol qbittorrent ranger rofi sleepy-launcher-bin slurp stow syncthing thunar tofi ttf-fanwood ttf-font-awesome ttf-liberation unzip vlc waybar wayland-protocols wget wl-clipboard wqy-zenhei xdg-desktop-portal-hyprland zip && 
git clone --recursive https://github.com/hyprwm/Hyprland && cd Hyprland && make all && sudo make install && cd .. && hyprpm update && hyprpm add https://github.com/hyprwm/hyprland-plugins &&
git clone https://github.com/jmattheis/gruvbox-dark-icons-gtk ~/.icons/gruvbox-dark-icons-gtk && cd .. &&
yay -S nvidia-dkms nvidia-utils egl-wayland libva-nvidia-driver && sudo systemctl enable nvidia-suspend.service && sudo systemctl enable nvidia-hibernate.service && sudo systemctl enable nvidia-resume.service &&  

