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
echo "Yay installed successfully"





