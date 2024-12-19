<div align="center">
  <h1> arch dotfiles and a guide </h1>
  <h3> i cant remember so i use this to setup my system </h3>
</div>

# preview
![](https://github.com/nishit-singh-31/arch-dotfiles/blob/main/gruvbox.png)

# details

| what | do i use |
|------|------|
| os           | [arch](https://archlinux.org/)                                  |   
| wm           | [hyprland](https://hyprland.org/)                               |
| terminal     | [kitty](https://sw.kovidgoyal.net/kitty/)                       | 
| shell        | [bash](https://www.gnu.org/software/bash/)                      |
| aur helper   | [yay](https://github.com/Jguer/yay)                             | 
| status bar   | [waybar](https://github.com/Alexays/Waybar/)                    |
| launcher     | [tofi](https://github.com/philj56/tofi/)                        |
| file manager | [ranger](https://github.com/ranger/ranger/)                     |
| editor       | [neovim](https://neovim.io/)                                    |
| music app    | [i have to decide](https://www.youtube.com/watch?v=dcPeE4uDQ0I) |

# installation guide

once the iso is loaded onto a usb (lives on my keychain) boot into it and use the following commands:
```
pacman -Syy
pacman -S archlinux-keyring
archinstall
```
a prompted install page similar to this will appear 
![](https://github.com/nishit-singh-31/arch-dotfiles/blob/main/archinstall.png)

my go to options are simple:
- archinstall lang: english
- mirrors: worldwide
- keyboard layout: us
- disk configuration: btrfs
- disk encryption: none
- bootloader: grub
- hostname: arch
- user: add my name and pwd, make it a superuser
- profile: minimal
- audio: pipewire
- kernel: linux
- additional packages: neovim, git, stow
- network: network manager
- timezone: asia/kolkata
- additional repos: multilib

once complete, chroot into the system and then reboot. arch is alive

# configuration and dotfiles sync

after logging in the first thing to do is cloning this repo and running the install script:
```
git clone https://github.com/nishit-singh-31/arch-dotfiles.git
mv arch-dotfiles .dotfiles\
rm .bashrc
cd .dotfiles
stow .
sudo chmod +x .install.sh
./.install.sh
```
sit back and let it do its thing. once complete, the most important thing is setting nvidia's driver modules in ```/etc/mkinitcpio.conf```:
```
MODULES=(... nvidia nvidia_modeset nvidia_uvm nvidia_drm ...)
```
after that sudo touch a drop-in file at ```/etc/modprobe.d/nvidia.conf``` and add the following line:
```
options nvidia_drm modeset=1 fbdev=1
```
the final step is rebuilding the initramfs with ```sudo mkinitcpio -P``` and then rebooting.
hyprland with most of the config files in their place is ready and now its time to setup everything else.

# hoyo gacha hell configuration

the most important thing is editing ```/etc/hosts``` to disable the telemetry servers:
```
# Genshin logging server
0.0.0.0 log-upload-os.mihoyo.com
0.0.0.0 overseauspider.yuanshen.com
0.0.0.0 log-upload-os.hoyoverse.com

# Genshin logging servers
0.0.0.0 sg-public-data-api.hoyoverse.com
0.0.0.0 log-upload-os.hoyoverse.com
0.0.0.0 overseauspider.yuanshen.com

# Optional Unity proxy/cdn servers
0.0.0.0 prd-lender.cdp.internal.unity3d.com
0.0.0.0 thind-prd-knob.data.ie.unity3d.com
0.0.0.0 thind-gke-usc.prd.data.corp.unity3d.com
0.0.0.0 cdp.cloud.unity3d.com
0.0.0.0 remote-config-proxy-prd.uca.cloud.unity3d.com

# HSR logging server
0.0.0.0 log-upload-os.hoyoverse.com
0.0.0.0 sg-public-data-api.hoyoverse.com
0.0.0.0 log-upload.mihoyo.com
0.0.0.0 public-data-api.mihoyo.com

# ZZZ logging server
0.0.0.0 apm-log-upload-os.hoyoverse.com
0.0.0.0 zzz-log-upload-os.hoyoverse.com
```
if the issue of telemetry rises, running the launcher from the terminal displays the missing telemetry server.

# setting up steam games

the only two that matter rn are cs2 and marvel rivals so the following launch options need to be set:
```
gamemoderun LD_PRELOAD="" %command% -high -nojoy -freq 165 -novid -fullscreen -w 1920 -h 1080 -vulkan
```
```
DXVK_ENABLE_NVAPI=1 gamemoderun %command% -dx12  -ngxdisableota
```
marvel rivals needs two additional config files to perform better (on my t7) which need to be moved to ```steam/steamapps/compatdata/2767030/pfx/drive_c/users/steamuser/AppData/Local/Marvel/Saved/Config/Windows/```
