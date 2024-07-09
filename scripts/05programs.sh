#! /bin/bash
# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers Timers

sudo pacman -Syyu --noconfirm

#echo "Installing Xorg and graphics drivers"
#sudo pacman -S xorg-server xorg-apps xorg-xinit--noconfirm xorg-xman --needed
#sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils mesa --noconfirm --needed
#sudo pacman -S xdg-utils iwd --noconfirm --needed
#sudo pacman -S xdg-user-dirs --noconfirm open-vm-tools --needed
#xdg-user-dirs-update
# sudo systemctl enable vmtoolsd

sudo pacman -S curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz --noconfirm --needed
sudo pacman -S man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak bat bzip2 bzip3 gzip unarchiver cpupower --noconfirm --needed 
sudo pacman -S coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils findutils file acpi unrar ncompress ffmpegthumbnailer --noconfirm --needed
#sudo pacman -S wireless_tools wpa_supplicant --noconfirm

#echo "Installing Printer suuport (CUPS)"
#sudo pacman -S cups cups-pdf print-manager --noconfirm
#sudo systemctl enable cups.socket

sudo pacman -S avahi networkmanager network-manager-applet iptables ufw ntfs-3g arandr downgrade xournalpp  --noconfirm --needed
sudo pacman -S pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse gst-plugin-pipewire pavucontrol pamixer wireplumber pipewire-media-session --noconfirm --needed

# pulseaudio-bluetooth
sudo pacman -S polkit fastfetch starship xsettingsd tree moreutils gdb fortune cowsay lolcat thefuck glances --noconfirm --needed

#echo "Installing office package and fonts"
sudo pacman -S ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm --needed
yay -S downgrade archlinux-tweak-tool-git --noconfirm --needed
yay -S themechanger-git
sudo systemctl enable fstrim.timer
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service