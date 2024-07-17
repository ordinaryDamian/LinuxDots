#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed gtk4 gtk3 gdm gnome-backgrounds gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-control-center gnome-disk-utility gnome-font-viewer gnome-keyring gnome-menus gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions gnome-system-monitor notepadqq gnome-weather localsearch tecla xdg-desktop-portal-gnome xdg-user-dirs-gtk gvfs gvfs-onedrive gvfs-smb gvfs-wsdd 
sudo pacman -S --noconfirm --needed file-roller ghex gnome-terminal gnome-tweaks seahorse sysprof gnome-chess dconf tracker3 fwupd eog
sudo pacman -S --noconfirm --needed gimp inkscape libreoffice-fresh-en-gb libreoffice-extension-texmaths libreoffice-extension-writer2latex 
sudo pacman -S --noconfirm --needed firefox thunderbird vlc alacritty 
sudo pacman -S --noconfirm --needed nemo nemo-emblems nemo-fileroller nemo-image-converter nemo-preview nemo-share nemo-terminal

sudo systemctl enable gdm.service
yay -S --noconfirm --needed extension-manager gnome-shell-extension-dash-to-dock webp-pixbuf-loader