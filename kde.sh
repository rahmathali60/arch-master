#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Switzerland -a 6 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy

#sudo systemctl enable --now auto-cpufreq
sudo pacman -S sddm plasma simplescreenrecorder plasma-wayland-session ark dolphin dolphin-plugins konsole kate okular gwenview kcalc gnome-icon-theme gnome-themes-extra firefox htop vlc powertop 
//gzip p7zip bzip2
sudo systemctl enable sddm
#/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#reboot
