#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Use sudo and sed to modify pacman.conf
echo "Modifying pacman.conf"

sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
echo "Color enabled"
sudo sed -i 's/^#VerbosePkgLists/VerbosePkgLists/' /etc/pacman.conf
echo "VerbosePkgLists enabled"
sudo sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 6\nILoveCandy/' /etc/pacman.conf
echo "ParallelDownloads enabled and custom Pacman theme enabled"

echo "Updating the system"
sudo pacman -Syyu --noconfirm

echo "Updating the system and installing pacman-contrib reflector rebuild-detector linux-headers"
sudo pacman -S --noconfirm --needed pacman-contrib reflector rebuild-detector linux-headers 
# sudo reflector --verbose --protocol https,http --latest 5 --sort rate --country Slovakia,Polland,Germany --save /etc/pacman.d/mirrorlist
echo "Updating the mirrorlist"
sudo reflector --protocol https,http,ftp --latest 50 --score 50 --sort rate --country SK,CZ,DE,HU,PL --fastest 10 --save /etc/pacman.d/mirrorlist

# Define the configuration
config="--protocol https,http,ftp
--latest 25
--score 25
--sort rate
--country SK,CZ,DE,HU,PL
--fastest 10
--save /etc/pacman.d/mirrorlist"

# Use sudo and sed to update reflector.conf
echo "$config" | sudo tee /etc/xdg/reflector/reflector.conf >/dev/null

echo "Enabling reflector.service(automatic mirror update) and paccache.timer"
sudo systemctl enable reflector.service
sudo systemctl enable paccache.timer
