#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...


yay_cmd="yay -S --needed --noconfirm"

$yay_cmd

$yay_cmd gtk4 gtk3 gdm gnome-backgrounds gnome-calculator qalculate-gtk gnome-calendar gnome-characters gnome-control-center gnome-font-viewer gnome-keyring gnome-menus gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions notepadqq tecla xdg-desktop-portal-gnome xdg-user-dirs-gtk gvfs gvfs-onedrive gvfs-smb gvfs-wsdd 
$yay_cmd file-roller ghex gnome-terminal gnome-tweaks gnome-chess tracker3 fwupd eog  
$yay_cmd nemo nemo-emblems nemo-fileroller nemo-image-converter nemo-share nemo-terminal
$yay_cmd nautilus libnautilus-extension nautilus-image-converter nautilus-share nautilus-checksums nautilus-open-any-terminal nautilus-terminal 

sudo pacman -Rns --noconfirm epiphany snapshot gnome-connections gnome-console gnome-contacts evince yelp yelp-xsl loupe gnome-logs gnome-maps gnome-music gnome-software gnome-user-docs
sudo pacman -Rns --noconfirm gnome-system-monitor gnome-text-editor gnome-tour totem gnome-weather arandr seahorse gnome-disk-utility
$yay_cmd dconf-editor gnome-power-manager gnome-themes-extra polkit-gnome gtk-engine-murrine gtk-engines

$yay_cmd extension-manager vim
sudo systemctl enable gdm.service
sudo updatedb