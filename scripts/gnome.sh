#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed gtk4 gtk3 gdm gnome-backgrounds gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-control-center gnome-font-viewer gnome-keyring gnome-menus gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions notepadqq tecla xdg-desktop-portal-gnome xdg-user-dirs-gtk gvfs gvfs-onedrive gvfs-smb gvfs-wsdd 
sudo pacman -S --noconfirm --needed file-roller ghex gnome-terminal gnome-tweaks sysprof gnome-chess dconf tracker3 fwupd eog
sudo pacman -S --noconfirm --needed gimp inkscape libreoffice-fresh libreoffice-extension-texmaths libreoffice-extension-writer2latex libreoffice-fresh-en-gb onlyoffice-bin
sudo pacman -S --noconfirm --needed firefox thunderbird vlc alacritty 
sudo pacman -S --noconfirm --needed nemo nemo-emblems nemo-fileroller nemo-image-converter nemo-preview nemo-share nemo-terminal

#sudo pacman -Rns --noconfirm libreoffice-fresh libreoffice-extension-texmaths libreoffice-extension-writer2latex libreoffice-fresh-en-gb onlyoffice-bin
sudo pacman -Rns --noconfirm epiphany snapshot gnome-clocks gnome-connections gnome-console gnome-contacts baobab evince yelp yelp-xsl loupe gnome-logs gnome-maps gnome-music gnome-software gnome-user-docs
sudo pacman -Rns --noconfirm gnome-system-monitor gnome-text-editor gnome-tour totem gnome-weather arandr seahorse
sudo pacman -S --needed --noconfirm dconf-editor dconf signal-desktop bitwarden gnome-nettool gnome-power-manager gnome-themes-extra polkit-gnome xdg-desktop-portal-gnome

yay -S --noconfirm --needed extension-manager arch-update vim
sudo systemctl enable gdm.service
sudo updatedb