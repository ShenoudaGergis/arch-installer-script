clear
printf "\nGenerating timezone symbolic link ...\n\n"
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime

clear
sleep 1

printf "\nhwclocl ...\n\n"
hwclock --systohc

clear
sleep 1

printf "\nChoosing localization ...\n\n"
echo en_US.UTF-8 UTF-8 >> /etc/locale.gen

clear
sleep 1

printf "\nGenerating and exporting localization ...\n\n"
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

clear
sleep 1

printf "\nSetting host name ...\n\n"
echo machine > /etc/hostname

clear
sleep 1

printf "\nSetting localhost and localdomain ..."
printf "127.0.0.1	localhost\n::1	localhost\n127.0.1.1	machine.localdomain	machine" > /etc/hosts
clear

printf "\nEnter the password for the root user : \n\n"
passwd

clear
sleep 1

printf "\nAdding grep user ...\n\n"
useradd -m -G sys,wheel,users,adm,log -s /bin/bash grep

printf "\n\nEnter the password for the user grep : \n\n"
passwd grep

printf "\n\nMake the user grep from the sudoers ...\n\n"
EDITOR=nano visudo

clear
sleep 1

printf "\nDownload and install grub and os-prober packages ...\n\n"
pacman -S grub os-prober
clear
sleep 1

printf "\nInstall grub and making its config file ...\n\n"
grub-install --target=i386-pc device
grub-mkconfig -o /boot/grub/grub/cfg

clear
sleep 1

printf "\nInstallation finished , after rebooting install the other packages and set configs using the other script ...\n"
sleep 5
clear
 
