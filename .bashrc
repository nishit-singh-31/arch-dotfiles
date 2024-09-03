#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# hardware-cmd
alias off='shutdown now'
alias rb='reboot'
alias bios='sudo systemctl reboot --firmware-setup'
alias wifi='nmcli dev wifi list'
alias wifi-con='nmcli dev wifi connect'

# peripheral-cmd
alias bl='brightnessctl set'
alias vl='pactl set-sink-volume @DEFAULT_SINK@'
alias vl-up='pactl set-sink-volume @DEFAULT_SINK@ +10%'
alias vl-dn='pactl set-sink-volume @DEFAULT_SINK@ -10%'

# bluetooth
alias dc-xbox='bluetoothctl disconnect 0C:35:26:59:82:65'
alias pair-major='bluetoothctl connect 1C:6E:4C:92:11:36'
alias dc-major='bluetoothctl disconnect 1C:6E:4C:92:11:36'
alias pair-kb='bluetoothctl connect F4:73:35:A8:9C:D3'
alias dc-kb='bluetoothctl disconnect F4:73:35:A8:9C:D3'

# sh-cmd
alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias ff='fastfetch'
alias mnt='bashmount'

# sys-conf
alias gconf='sudo nvim /etc/default/grub'
alias gmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias bashrc='nvim ~/.bashrc'
alias bashp='nvim ~/.bash_profile'
alias getty='sudo nvim /etc/systemd/system/getty.target.wants./getty\@tty1.service'

# package-managers
alias pm='sudo pacman'
alias pmu='sudo pacman -Syu'
alias pms='sudo pacman -S'
alias pmr='sudo pacman -Rs'
alias pml='sudo pacman Qe'
alias ys='yay -S'
alias yr='yay -Rs'
alias yu='yay -Syu'
alias yl='pacman -Qm'

# ricing-conf
alias dot='cd ~/.dotfiles'
alias conf='cd ~/.config/'
alias wm='cd ~/.config/hypr'
alias bar='cd ~/.config/waybar'
alias kittyconf='cd ~/.config/kitty'
alias gtkconf='nvim ~/.config/gtk-3.0/settings.ini'

# nvim
export EDITOR=nvim
alias nvconf='nvim ~/.config/nvim/init.lua'
alias vim='nvim'

PS1='[\u@\h \W]\$ '