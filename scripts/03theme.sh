#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# sudo pacman -S gnome-themes-extra --noconfirm
# sudo pacman -S gtk-engine-murrine gtk-engines --noconfirm
#sudo pacman -S tar sassc kvantum --noconfirm --needed
#yay -S qogir-gtk-theme --noconfirm

# wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.6/Bibata-Modern-Classic.tar.xz
# tar -xvf Bibata.tar.gz                # extract `Bibata.tar.gz`
# mv Bibata-* ~/.local/share/icons/     # Install to local users
# sudo mv Bibata-* /usr/share/icons/    # Install to all user


#Cursor theme
#git clone https://github.com/vinceliuice/Graphite-cursors
#cd Graphite-cursors
#sudo ./install.sh

#cd ..

echo "Cursor theme Bibata istallation"
yay -S --noconfirm --needed bibata-cursor-theme 
echo "Cursor theme Bibata installed"

# Icon themes
git clone https://github.com/vinceliuice/Tela-circle-icon-theme
cd Tela-circle-icon-theme
sudo ./install.sh -a

cd ..
echo "Icon theme Tela-circle installed"

#yay -S --noconfirm --needed colloid-catppuccin-theme-git 

# Global theme
# git clone https://github.com/vinceliuice/Graphite-kde-theme
# cd Graphite-kde-theme
# sudo ./install.sh

# cd ..

# git clone https://github.com/vinceliuice/Graphite-gtk-theme
# cd Graphite-gtk-theme/
# sudo ./install.sh
#cd ..