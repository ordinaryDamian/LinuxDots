#! /bin/bash
#git clone --depth 1 https://gitlab.com/VandalByte/dedsec-grub-theme.git && cd dedsec-grub-theme
#sudo python3 dedsec-theme.py --install

#git clone https://github.com/vinceliuice/grub2-themes
#cd grub2-themes
#sudo ./install.sh

echo "Grub Theme (1-dedsec|2-tela):"
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
    *)
        echo "default (none of above)"
    ;;
esac