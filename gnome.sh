#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Germany -a 12 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy
 
#sudo firewall-cmd --add-port=1025-65535/tcp --permanent
#sudo firewall-cmd --add-port=1025-65535/udp --permanent
#sudo firewall-cmd --reload
#sudo virsh net-autostart default

#git clone https://aur.archlinux.org/pikaur.git
#cd pikaur/
#makepkg -si --noconfirm

#pikaur -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm gnome-shell-extension-system76-power-git
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

#sudo pacman -S gdm gnome gnome-terminal htop powertop neofetch gnome-tweaks gnome-icon-theme ttf-liberation ttf-hack adwaita-icon-theme 
# sudo pacman -S eog htop powertop  gnome-themes-extra gnome-icon-theme-extras neofetch adwaita-icon-theme gnome-tweaks evince file-roller gdm gedit gnome-backgrounds  gnome-control-center gnome-keyring gnome-menus gnome-session gnome-settings-daemon gnome-shell  gnome-shell-extensions gnome-terminal grilo-plugins gvfs gvfs-afc gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb mutter nautilus rygel  sushi  tracker tracker-miners tracker3-miners vino xdg-user-dirs-gtk


#sudo flatpak install -y spotify
#sudo flatpak install -y kdenlive

sudo systemctl enable gdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#sudo reboot
