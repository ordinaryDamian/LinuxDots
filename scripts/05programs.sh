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
# sudo systemctl enable vmtoolsd

sudo pacman -S --noconfirm --needed curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz fzf 
sudo pacman -S --noconfirm --needed man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver cpupower 
sudo pacman -S --noconfirm --needed coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils file acpi unrar ncompress ffmpegthumbnailer fwupd nmapopenbsd-netcat

# Laptop support
sudo pacman -S --noconfirm --needed wireless_tools wpa_supplicant iw powertop 
yay -S --needed --noconfirm bluez bluez-utils bluez-plugins
sudo systemctl enable bluetooth.service

#echo "Installing Printer suuport (CUPS)"
#sudo pacman -S --noconfirm --needed cups cups-pdf print-manager 
#sudo systemctl enable cups.socket

sudo pacman -S --needed --noconfirm pipewire pipewire-audio pavucontrol gst-plugin-pipewire lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer pipewire-media-session

yay -S --needed --noconfirm gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugins-ugly gst-plugin-pipewire gstreamer-vaapi gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch power-profiles-daemon lib32-pipewire hunspell hunspell-sk p7zip unrar ttf-liberation noto-fonts noto-fonts-emoji adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid duf btop fuse2fs exfatprogs fuse2 fuse3 man-db man-pages
yay -S --needed --noconfirm vlc discord gimp obs-studio visual-studio-code-bin
sudo pacman -S --noconfirm --needed polkit starship tree moreutils gdb lolcat thefuck 
sudo pacman -S --noconfirm --needed avahi networkmanager ntfs-3g arandr gnu-netcat gparted  
yay -S --needed --noconfirm ufw gufw ufw-extras iptables tuned

#echo "Installing office package and fonts"
sudo pacman -S --noconfirm --needed ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths 
yay -S --noconfirm --needed downgrade arch-update 
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service
