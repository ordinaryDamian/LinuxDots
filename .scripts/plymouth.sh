#! /bin/bash
# https://www.debugpoint.com/install-plymouth-arch-linux/
# open the /etc/mkinitcpio.conf and add the plymouth at the end of the HOOKS parameter
# open the /etc/default/grub append the quiet splash under parameter GRUB_CMDLINE_LINUX_DEFAULT
# Check out how the theme looks like: https://github.com/adi1090x/plymouth-themes
# You san also check out the themes available in AUR: https://aur.archlinux.org/packages?O=0&K=adi1090x&SeB=nd&SB=p

sudo pacman -S plymouth --noconfirm

echo "For example: plymouth-theme-glitch-git"
read -p  "what plymouth theme you want to install? " theme

yay -S plymouth-theme-$theme-git
# yay -S plymouth-theme-glitch-git 
# packages needed - plymouth, plymouth-x11, plymouth-plugin-script(fedora)

# after downloading or cloning themes, copy the selected theme in plymouth theme dir
sudo cp -r $theme /usr/share/plymouth/themes/

# check if theme exist in dir
# sudo plymouth-set-default-theme -l

# now set the theme (angular, in this case) and rebuilt the initrd
sudo plymouth-set-default-theme -R $theme

# optionally you can test theme by running the script given in repo (plymouth-x11 required)
# sudo ./showplymouth.sh 20

sudo mkinitcpio -p linux
sudo grub-mkconfig -o /boot/grub/grub.cfg
# sudo systemctl enable ly.service
