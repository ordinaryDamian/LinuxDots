#! /bin/bash
# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers Timers
# https://github.com/Cardiacman13/tuto-archlinux-fr

sudo pacman -Syyu --noconfirm

#echo "Installing Xorg and graphics drivers"
#sudo pacman -S xorg-server xorg-apps xorg-xinit--noconfirm xorg-xman --needed
#sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils mesa --noconfirm --needed
#sudo pacman -S xdg-utils iwd --noconfirm --needed
#sudo pacman -S xdg-user-dirs --noconfirm open-vm-tools --needed
#xdg-user-dirs-update
#sudo systemctl enable vmtoolsd


sudo pacman -S --noconfirm --needed curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz fzf moreutils
sudo pacman -S --noconfirm --needed man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver  
sudo pacman -S --noconfirm --needed coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils file acpi unrar ncompress ffmpegthumbnailer fwupd nmapopenbsd-netcat libva-utils

# Laptop support
yay -S --needed --noconfirm powertop power-profiles-daemon tuned
#TODO: manualne
#yay -S --needed --noconfirm tlp tlp-rdw threshy tlpui intel-media-driver
#sudo tlp start

sudo pacman -S --noconfirm --needed wireless_tools wpa_supplicant iw iwd connman 
yay -S --needed --noconfirm bluez bluez-utils bluez-plugins
sudo systemctl enable bluetooth.service

sudo pacman -S --noconfirm --needed cups cups-pdf print-manager
sudo pacman -S --noconfirm --needed ghostscript gsfonts cups-filters system-config-printer 
sudo pacman -S --noconfirm --needed foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds

sudo pacman -S --needed --noconfirm pipewire pipewire-audio pavucontrol gst-plugin-pipewire lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer pipewire-media-session

yay -S --needed --noconfirm gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugins-ugly gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch lib32-pipewire hunspell hunspell-sk p7zip unrar ttf-liberation noto-fonts ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts-emoji noto-fonts-cjk  adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid duf btop fuse2fs exfatprogs fuse2 fuse3 man-db man-pages
yay -S --needed --noconfirm vlc discord gimp obs-studio visual-studio-code-bin
sudo pacman -S --noconfirm --needed polkit starship tree gdb lolcat thefuck 
sudo pacman -S --noconfirm --needed avahi networkmanager ntfs-3g gnu-netcat gparted  
yay -S --needed --noconfirm ufw gufw ufw-extras iptables 

sudo pacman -S --noconfirm --needed libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths 
yay -S --noconfirm --needed downgrade arch-update 
yay -S --noconfirm --needed acpi acpid acpi_call acpi_call acpi_call acpilight
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable acpid
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service
sudo systemctl enable cups.socket

