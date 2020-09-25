clear
printf "\n\nGenerating timezone symbolic link ...\n\n"
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime

clear
sleep 2

printf "\n\nhwclocl ...\n\n"
hwclock --systohc

clear
sleep 2

printf "\n\nChoosing localization ...\n\n"
echo en_US.UTF-8 UTF-8 >> /etc/locale.gen

clear
sleep 2

printf "\n\nGenerating and exporting localization ...\n\n"
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

clear
sleep 2

printf "\n\nSetting host name ...\n\n"
echo machine > /etc/hostname

clear
sleep 2

printf "\n\nSetting localhost and localdomain ..."
printf "127.0.0.1	localhost\n::1	localhost\n127.0.1.1	machine.localdomain	machine" > /etc/hosts
clear

printf "\n\nSetting password for the root user : \n\n"
echo "jesus" | passwd --stdin

clear
sleep 2

printf "\n\nAdding grep user ...\n\n"
useradd -m -G sys,wheel,users,adm,log -s /bin/bash grep

printf "\n\nSetting password for the user grep : \n\n"
echo "jesus" | passwd --stdin grep

# printf "\n\nMake the user grep from the sudoers ...\n\n"
# EDITOR=nano visudo

clear
sleep 2

printf "\n\nDownload and install grub and os-prober packages ...\n\n"
pacman -S --noconfirm --needed grub os-prober
clear
sleep 2

printf "\n\nInstall grub and making its config file ...\n\n"
printf "\n\nEnter the target device i.e : /dev/sdc : "
read device
grub-install --target=i386-pc $device
grub-mkconfig -o /boot/grub/grub/cfg

clear
sleep 2

printf "\n\nInstalling important packages ...\n\n"

pacman -S --noconfirm --needed xorg xorg-apps xorg-server xorg-drivers xterm mesa linux-headers xdg-user-dirs fuse2 fuse3 ntfs-3g exfat-utils pulseaudio gvfs dkms haveged git unrar unzip htop lsb-release polkit man-db man-pages firefox ghostscript networkmanager network-manager-applet sddm ttf-ubuntu-font-family ttf-dejavu ttf-bitstream-vera ttf-liberation noto-fonts nvidia amd-ucode

clear
sleep 2

# [optionally for printer] : pacman -S cups system-config-printer foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree-ppds gutenprint


clear
sleep 2

printf "\n\nEnabling sddm and networkmanager ...\n\n"
systemctl enable sddm
systemctl enable NetworkManager

clear
sleep 2

printf "\n\nInstalling plasma desktop , konsole , dolphin , ark and kate"
pacman -S --noconfirm --needed plasma konsole dolphin kate ark
