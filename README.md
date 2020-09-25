## arch-installer-script
simple arch installer script for personal use

### Using

1) Downloading the scripts :-

after booting *arch linux* and connecting to the internet, then fetch the two scripts by the following commands 

`curl -L https://raw.githubusercontent.com/ShenoudaGergis/arch-installer-script/master/arch-install.sh > arch-install.sh`

`curl -L https://raw.githubusercontent.com/ShenoudaGergis/arch-installer-script/master/arch-install-insidec.sh > arch-install-insidec.sh`

then move the seconde script `arch-install-insidec.sh` to `/mnt` directory


2) Running script

run the first script only which is named `arch-install.sh` by the following command `sh arch-install.sh`


### packages , partitioning and others

* the scripts use `cfdisk` for disk partitioning and will make only one partition which is the `root` partition (first one i.e : /dev/sdc1) with a `MBR` partition   table. You will asked to enter the device name (i.e : /dev/sdc) after listing the connected disk using the `lsblk` command.

* user named `grep` will be created with password `jesus`

* the root password will be `jesus`

* the machine name will be named `machine`

* kde plasma desktop environment will be installed with `sddm` and few packages : konsole , dolphin , ark , kate

* en_US.UTF-8 localization will be set

* the time zone will be set to Africa/Cairo

* grub bootloader will be installed



Again... this scripts are for personal use, but you can easily change what you want by modifying the two scripts with some little search




