printf "\nWelcome to Kirollos arch installer"
sleep 2
clear

printf "\nSetting timedatectl to true ..."
timedatectl set-ntp true

clear
sleep 1

printf "\nList of devices connected ...\n\n"
lsblk

printf "\n\nEnter device name i.e : /dev/sdc : "
read device
clear
cfdisk $device

clear
sleep 1

printf "\nFormatting root partition ${device}1 ...\n\n"
mkfs.ext4 "${device}1"

printf "\n\nMounting ${device}1 ...\n\n"
mount "${device}1" /mnt

clear
sleep 1

printf "\nInstalling base packages ...\n\n"
pacstrap /mnt base base-devel linux linux-firmware nano less dialog wpa_supplicant netctl dhcpcd sudo reflector pacman-contrib usbutils pciutils

clear
sleep 1

printf "\nGenerating fs file ...\n\n"
genfstab -U /mnt >> /mnt/etc/fstab

clear
sleep 1

printf "Well done, the first script has fininshed successfully. Now Enter the chroot env. by < arch-chroot /mnt > and move the seconde script to /mnt and then run it"
sleep 5
clear
