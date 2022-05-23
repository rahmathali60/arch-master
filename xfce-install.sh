#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
sed -i '178s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
#echo "KEYMAP=de_CH-latin1" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:0985 | chpasswd

# You can add xorg to the installation packages, I usually add it at the DE or WM install script
# You can remove the tlp package if you are installing on a desktop or vm

pacman -Syy
pacman -S grub efibootmgr bluez bluez-utils networkmanager network-manager-applet  dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers xorg avahi  nfs-utils inetutils dnsutils alsa-utils bash-completion reflector acpi acpi_call bridge-utils dnsmasq vi pulseaudio ipset sof-firmware nss-mdns acpid os-prober ntfs-3g  xdg-user-dirs xdg-utils

# pacman -S --noconfirm xf86-video-amdgpu
#pacman -S --noconfirm nvidia-lts nvidia-utils nvidia-settings

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
#systemctl enable sshd
systemctl enable avahi-daemon
#systemctl enable tlp # You can comment this command out if you didn't install tlp, see above
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable acpid

useradd -m rahmath
echo rahmath:0985 | chpasswd
#usermod -aG libvirt rahmath

echo "rahmath ALL=(ALL) ALL" >> /etc/sudoers.d/rahmath


#printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
