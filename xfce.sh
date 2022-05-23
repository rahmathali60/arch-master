#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c Switzerland -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin/
makepkg -si --noconfirm

paru -S  zramd
sudo vim /etc/default/zramd
sudo systemctl enable zramd.service --now

#sudo systemctl enable --now system76- power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm gnome-shell-extension-system76-power-git
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

sudo pacman -S xfce4 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings firefox simplescreenrecorder vlc 	thunar-archive-plugin 	xfce4-screenshooter 	mousepad 	xfce4-pulseaudio-plugin 	xfce4-notifyd 	xfce4-cpufreq-plugin 	ristretto 	xfce4-whiskermenu-plugin 	xfce4-battery-plugin 	parole 	xfce4-datetime-plugin 	xfce4-wavelan-plugin  	xfce4-dict 	xfce4-mpc-plugin  	thunar-media-tags-plugin
#sudo flatpak install -y spotify
#sudo flatpak install -y kdenlive

sudo systemctl enable lightdm
#/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#sudo reboot
