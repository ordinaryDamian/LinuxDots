#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...


yay_cmd="yay -S --needed --noconfirm"

$yay_cmd baobab evince gdm gnome-calculator qalculate-gtk gnome-calendar gnome-characters gnome-clocks gnome-color-manager gnome-connections gnome-control-center gnome-font-viewer gnome-menus gnome-music gnome-remote-desktop gnome-session 
$yay_cmd gnome-settings-daemon gnome-shell gnome-shell-extensions gnome-user-share grilo-plugins gvfs gvfs-google gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd loupe simple-scan tecla tracker3 tracker3-miners xdg-desktop-portal-gnome 
$yay_cmd gtk4 gtk3 xdg-user-dirs-gtk file-roller dconf-editor eog ghex gnome-terminal gnome-tweaks gnome-chess fwupd gnome-power-manager gnome-themes-extra polkit-gnome gtk-engines
$yay_cmd gitg gnome-builder seahorse sysprof 
# Nemo File browser
$yay_cmd nemo nemo-emblems nemo-fileroller nemo-image-converter nemo-share nemo-terminal
# Nautilus File browser
$yay_cmd nautilus libnautilus-extension nautilus-image-converter nautilus-share nautilus-checksums nautilus-open-any-terminal nautilus-terminal sushi

$yay_cmd extension-manager
sudo pacman -Rns --noconfirm epiphany snapshot gnome-console gnome-contacts yelp yelp-xsl gnome-logs gnome-maps gnome-music gnome-software gnome-user-docs
sudo pacman -Rns --noconfirm gnome-system-monitor gnome-text-editor gnome-tour totem gnome-weather arandr gnome-disk-utility

sudo systemctl enable gdm.service #gnome-user-share