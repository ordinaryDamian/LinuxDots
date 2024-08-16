#! /bin/bash

#echo "Installing yay (yet another yogurt) AUR helper."
#echo "What is AUR ? : https://itsfoss.com/aur-arch-linux/ "
#sleep 5
sudo pacman -S git base-devel --noconfirm --needed

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Y --gendb
yay -Y --devel --save
yay -Syyu

# echo "AUR helper (1-yay|2-paru):"
# read item
# case "${item}" in
#     1)
#         git clone https://aur.archlinux.org/yay.git
#         cd yay
#         makepkg -si --noconfirm
#         yay -Syyu
#     ;;
#     2)
#         git clone https://aur.archlinux.org/paru.git
#         cd paru
#         makepkg -si --noconfirm
#         paru -Syyu
#     ;;
#     *)
#         echo "default (none of above)"
#     ;;
# esac





