#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed gtk4 gtk3 gdm gnome-backgrounds gnome-calculator qalculate-gtk gnome-calendar gnome-characters gnome-control-center gnome-font-viewer gnome-keyring gnome-menus gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions notepadqq tecla xdg-desktop-portal-gnome xdg-user-dirs-gtk gvfs gvfs-onedrive gvfs-smb gvfs-wsdd 
sudo pacman -S --noconfirm --needed file-roller ghex gnome-terminal gnome-tweaks gnome-chess tracker3 fwupd eog
sudo pacman -S --noconfirm --needed firefox thunderbird vlc alacritty
sudo pacman -S --noconfirm --needed nemo nemo-emblems nemo-fileroller nemo-image-converter nemo-share nemo-terminal

sudo pacman -Rns --noconfirm epiphany snapshot gnome-connections gnome-console gnome-contacts evince yelp yelp-xsl loupe gnome-logs gnome-maps gnome-music gnome-software gnome-user-docs
sudo pacman -Rns --noconfirm gnome-system-monitor gnome-text-editor gnome-tour totem gnome-weather arandr seahorse gnome-disk-utility
sudo pacman -S --needed --noconfirm dconf-editor signal-desktop bitwarden gnome-nettool gnome-power-manager gnome-themes-extra polkit-gnome 

yay -S --noconfirm --needed extension-manager vim
sudo systemctl enable gdm.service
sudo updatedb