#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

echo "Installing yay"
echo "Installing dependencies for yay"
sudo pacman -S --noconfirm --needed git base-devel 

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Y --gendb
yay -Y --devel --save
yay -Syyu
echo "yay installed"
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





