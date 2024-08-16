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

sudo pacman -S curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz --noconfirm --needed
sudo pacman -S man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver cpupower --noconfirm --needed 
sudo pacman -S coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils file acpi unrar ncompress ffmpegthumbnailer --noconfirm --needed
sudo pacman -S wireless_tools wpa_supplicant --noconfirm --needed

#echo "Installing Printer suuport (CUPS)"
#sudo pacman -S cups cups-pdf print-manager --noconfirm
#sudo systemctl enable cups.socket

# pulseaudio-bluetooth
yay -S --needed --noconfirm bluez bluez-utils bluez-plugins
sudo pacman -S --needed --noconfirm pipewire pipewire-audio pavucontrol gst-plugin-pipewire lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer pipewire-media-session

yay -S --needed --noconfirm gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugins-ugly gst-plugin-pipewire gstreamer-vaapi gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch power-profiles-daemon lib32-pipewire hunspell hunspell-sk p7zip unrar ttf-liberation noto-fonts noto-fonts-emoji adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid duf btop fuse2fs exfatprogs fuse2 fuse3 bash-completion man-db man-pages
yay -S  --needed --noconfirm  vlc mpv discord gimp obs-studio gnome-disk-utility visual-studio-code-bin
sudo pacman -S polkit starship xsettingsd tree moreutils gdb fortune cowsay lolcat thefuck glances --noconfirm --needed
sudo pacman -S avahi networkmanager ntfs-3g arandr xournalpp gnu-netcat --noconfirm --needed
yay -S ufw gufw ufw-extras iptables --needed --noconfirm

#echo "Installing office package and fonts"
sudo pacman -S ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths --noconfirm --needed
yay -S downgrade arch-update --noconfirm --needed
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service
sudo systemctl enable bluetooth.service