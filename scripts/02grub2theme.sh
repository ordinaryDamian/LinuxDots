#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

#git clone --depth 1 https://gitlab.com/VandalByte/dedsec-grub-theme.git && cd dedsec-grub-theme
#sudo python3 dedsec-theme.py --install

#git clone https://github.com/vinceliuice/grub2-themes
#cd grub2-themes
#sudo ./install.sh

echo "Grub Theme (1-dedsec|2-tela|3-catppuccin|4-ultrakill):"
read item
case "${item}" in
    1)
        git clone --depth 1 https://gitlab.com/VandalByte/dedsec-grub-theme.git && cd dedsec-grub-theme
        sudo python3 dedsec-theme.py --install
    ;;
    2)
        git clone https://github.com/vinceliuice/grub2-themes
        cd grub2-themes
        sudo ./install.sh
    ;;
    3)
        yay -S catppuccin-mocha-grub-theme-git --noconfirm
    ;;
    4)
        echo "Installing ultrakill GRUB theme..."
        # run the installer via wget piping to bash
        wget -O - https://github.com/YouStones/ultrakill-grub-theme/raw/main/install.sh | bash
    ;;
    *)
        echo "default (none of above)"
    ;;
esac