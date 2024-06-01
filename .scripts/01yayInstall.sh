#! /bin/bash

echo "Installing yay (yet another yogurt) AUR helper."
echo "What is AUR ? : https://itsfoss.com/aur-arch-linux/ "
sleep 5

sudo pacman -S git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Syyu


