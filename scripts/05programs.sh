#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers
# https://github.com/Cardiacman13/tuto-archlinux-fr
# https://github.com/stephenstechtalks/ArchLinux

sudo pacman -Syyu --noconfirm

#echo "Installing Xorg and graphics drivers"
#sudo pacman -S xorg-server xorg-apps xorg-xinit--noconfirm xorg-xman --needed
# Virtual box drivers
#sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils mesa --noconfirm --needed

# Intel GPU drivers
sudo pacman -S --noconfirm --needed intel-ucode mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader intel-media-driver intel-gmmlib onevpl-intel-gpu vulkan-mesa-layers libva-mesa-driver
# AMD  drivers
sudo pacman -S --noconfirm --needed amd-ucode 

# EXT file system support
sudo pacman -S --noconfirm --needed e2fsprogs

# BTRFS file system support
sudo pacman -S --noconfirm --needed btrfs-progs timeshift

#VMware drivers
sudo pacman -S --noconfirm --needed open-vm-tools
sudo systemctl enable vmtoolsd.service

# KVM drivers
#sudo pacman -S --noconfirm --needed virt-what vulkan-swrast lib32-vulkan-swrast vulkan-icd-loader lib32-vulkan-icd-loader spice-vdagent qemu-guest-agent hyperv

sudo pacman -S --noconfirm --needed curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz fzf moreutils
sudo pacman -S --noconfirm --needed man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver  
sudo pacman -S --noconfirm --needed coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils file acpi p7zip unrar ncompress ffmpegthumbnailer fwupd nmapopenbsd-netcat libva-utils
sudo pacman -S --needed --noconfirm hunspell hunspell-sk duf btop fuse2fs exfatprogs fuse2 fuse3 man-db man-pages ffmpegthumbs nmap
sudo pacman -S --noconfirm --needed polkit starship tree gdb lolcat thefuck bind ddrescue dmidecode ethtool exfatprogs ndisc6 
sudo pacman -S --noconfirm --needed avahi networkmanager ntfs-3g gnu-netcat dosfstools hdparm lftp mkinitcpio-nfs-utils nfs-utils
sudo pacman -S --noconfirm --needed openconnect vpnc rp-pppoe rsync syncthing sg3_utils tcpdump terminus-font usb_modeswitch usbutils
sudo pacman -S --noconfirm --needed netctl nm-connection-editor nss-mdns whois
sudo pacman -S xdg-utils xdg-user-dirs --noconfirm --needed
xdg-user-dirs-update

# Laptop support
yay -S --noconfirm --needed acpi acpid acpi_call acpi_call acpi_call acpilight
yay -S --needed --noconfirm powertop power-profiles-daemon tuned
    #TODO: manualne
    #yay -S --needed --noconfirm tlp tlp-rdw threshy tlpui 
    #sudo tlp start
# Wireless Network support
sudo pacman -S --noconfirm --needed wireless_tools wpa_supplicant iw iwd connman broadcom-wl
# Bluetooth support
yay -S --needed --noconfirm bluez bluez-utils bluez-plugins
sudo systemctl enable bluetooth.service
# Printing support
sudo pacman -S --noconfirm --needed cups cups-pdf print-manager
sudo pacman -S --noconfirm --needed ghostscript gsfonts cups-filters system-config-printer 
sudo pacman -S --noconfirm --needed foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds
# Sound server configuration
sudo pacman -S --needed --noconfirm pipewire pipewire-audio pavucontrol lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer pipewire-media-session alsa-plugins alsa-ucm-conf alsa-card-profiles alsa-lib 
#Multimedia support
sudo pacman -S --noconfirm --needed ffmpeg ffmpegthumbnailer x264 x265 xvidcore
# Useful package installation
yay -S --needed --noconfirm gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugin-pipewire gst-plugins-ugly gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch lib32-pipewire
#Fonts and icons
yay -S --needed --noconfirm  ttf-opensans inter-font ttf-bitstream-vera ttf-caladea ttf-carlito ttf-cascadia-code ttf-croscore ttf-liberation noto-fonts ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts-emoji noto-fonts-cjk adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid ttf-dejavu ttf-ubuntu-font-family
# GUI apps
yay -S --needed --noconfirm vlc discord gimp obs-studio visual-studio-code-bin gparted gpart firefox 
sudo pacman -S --noconfirm --needed libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths 

# Firewall
yay -S --needed --noconfirm ufw gufw ufw-extras iptables 

#Miscelanous
yay -S --noconfirm --needed downgrade arch-update 
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable acpid
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service
sudo systemctl enable cups.socket

