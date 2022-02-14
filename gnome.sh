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

sudo pacman -S gdm gnome-shell gnome-terminal eog file-roller gedit gnome-keyring gnome-screenshot htop powertop nautilus sushi xdg-user-dirs-gtk gnome-control-center gnome-tweaks networkmanager gnome-icon-theme gnome-themes-extra firefox  ttf-liberation noto-fonts  ttf-hack  cantarell-fonts noto-fonts-cjk noto-fonts-emoji

#sudo flatpak install -y spotify
#sudo flatpak install -y kdenlive

sudo systemctl enable gdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
