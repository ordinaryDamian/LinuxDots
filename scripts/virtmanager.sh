#!/usr/bin/env bash

# https://sysguides.com/install-kvm-on-linux
# https://sysguides.com/install-a-windows-11-virtual-machine-on-kvm

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Install the necessary packages for the virtual machine manager
sudo pacman -S ebtables qemu dnsmasq vde2 bridge-utils openbsd-netcat dmidecode libguestfs --noconfirm --needed
yay -S tuned qemu-full libvirt virt-install virt-manager virt-viewer edk2-ovmf swtpm qemu-img guestfs-tools libosinfo --noconfirm --needed
sudo sed -i 's/#unix_sock_group = "libvirt"/unix_sock_group = "libvirt"/' /etc/libvirt/libvirtd.conf
sudo sed -i 's/#unix_sock_rw_perms = "0770"/unix_sock_rw_perms = "0770"/' /etc/libvirt/libvirtd.conf
sudo systemctl enable libvirtd.service
sudo usermod -a -G libvirt $(whoami)
sudo usermod -a -G kvm $(whoami)
# wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.240-1/virtio-win-0.1.240.iso
for drv in qemu interface network nodedev nwfilter secret storage; do \
    sudo systemctl enable virt${drv}d.service; \
    sudo systemctl enable virt${drv}d{,-ro,-admin}.socket; \
done
# sudo virt-host-validate qemu
