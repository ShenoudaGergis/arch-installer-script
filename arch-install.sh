printf "\n\nWelcome to Kirollos arch installer"
sleep 2
clear

printf "\n\nSetting timedatectl to true ..."
timedatectl set-ntp true

clear
sleep 2

printf "\n\nList of devices connected ...\n\n"
lsblk

printf "\n\nEnter device name i.e : /dev/sdc : "
read device
clear
cfdisk $device

clear
sleep 2

printf "\n\nFormatting root partition ${device}1 to ext4 ...\n\n"
mkfs.ext4 "${device}1"

printf "\n\nMounting ${device}1 ...\n\n"
mount "${device}1" /mnt

clear
sleep 2

printf "\n\nInstalling base packages ...\n\n"
pacstrap /mnt base base-devel linux linux-firmware nano less dialog wpa_supplicant netctl dhcpcd sudo reflector pacman-contrib usbutils pciutils

clear
sleep 2

printf "\n\nGenerating fstab file ...\n\n"
genfstab -U /mnt >> /mnt/etc/fstab

clear
sleep 2

arch-chroot /mnt ./arch-install-insidec.sh
