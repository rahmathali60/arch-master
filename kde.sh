#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Switzerland -a 6 --sort rate --save /etc/pacman.d/mirrorlist


#sudo systemctl enable --now auto-cpufreq


sudo pacman -S --noconfirm sddm plasma plasma-wayland-session ark gzip p7zip bzip2 dolphin dolphin-plugins konsole kate okular gwenview  kcalc kdeconnect gnome-icon-theme gnome-themes-extra firefox htop vlc powertop adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts adobe-source-sans-pro-fonts  
sudo systemctl enable sddm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
reboot
