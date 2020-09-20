clear
printf "\nInstalling important packages ...\n\n"

pacman -S --noconfirm --needed xorg xorg-apps xorg-server xorg-drivers xterm mesa linux-headers xdg-user-dirs fuse2 fuse3 ntfs-3g exfat-utils pulseaudio gvfs dkms haveged git unrar unzip htop lsb-release polkit man-db man-pages firefox ghostscript networkmanager network-manager-applet sddm ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts nvidia amd-ucode

clear
sleep 1

# [optionally for printer] : pacman -S cups system-config-printer foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree-ppds gutenprint


clear
sleep 1

printf "\nEnabling sddm and networkmanager ...\n\n"
systemctl enable sddm
systemctl enable NetworkManager

clear
sleep 1

printf "\nInstalling plasma desktop , konsole , dolphin and kate"
pacman -S --noconfirm --needed plasma konsole dolphin kate



 
