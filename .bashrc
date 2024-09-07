#
# ~/.bashrc | Nishit Singh
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
alias bl='gummy -b'
alias bl-temp='gummy -t'
alias vl='pactl set-sink-volume @DEFAULT_SINK@'
alias vl-up='pactl set-sink-volume @DEFAULT_SINK@ +10%'
alias vl-dn='pactl set-sink-volume @DEFAULT_SINK@ -10%'

# bluetooth
alias dc-xbox='bluetoothctl disconnect 0C:35:26:59:82:65' #xbox-series-X-controller
alias pair-major='bluetoothctl connect 1C:6E:4C:92:11:36' #major-IV
alias dc-major='bluetoothctl disconnect 1C:6E:4C:92:11:36' #major-IV

# sys-cmd
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ff='fastfetch'
alias mnt='bashmount'

# package-managers
alias pm='sudo pacman'
alias pmu='sudo pacman -Syu'
alias pms='sudo pacman -S'
alias pmr='sudo pacman -Rs'
alias pml='pacman -Q'
alias ys='yay -S'
alias yr='yay -Rs'
alias yu='yay -Syu'
alias yl='pacman -Qm'

# sys-conf
alias gconf='sudo nvim /etc/default/grub'
alias gmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias bashrc='nvim ~/.bashrc'
alias bashp='nvim ~/.bash_profile'
alias start='sudo nvim ~/.xinitrc'
alias getty='sudo nvim /etc/systemd/system/getty.target.wants/getty\@tty1.service'

# ricing-conf
alias wm='cd ~/.config/hypr'
alias bar='cd ~/.config/waybar'
alias conf='cd ~/.config/'
alias nvconf='cd ~/.config/nvim'
alias kittyconf='cd ~/.config/kitty'
alias gtkconf='nvim ~/.config/gtk-3.0/settings.ini'

# nvim-conf
export EDITOR=nvim
alias vim='nvim'

PS1='[\u@\h \W]\$ '
