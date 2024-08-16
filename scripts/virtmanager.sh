#!/usr/bin/env bash

# Install the necessary packages for the virtual machine manager
sudo pacman -S ebtables qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat dmidecode libguestfs virt-install --noconfirm --needed
sudo sed -i 's/#unix_sock_group = "libvirt"/unix_sock_group = "libvirt"/' /etc/libvirt/libvirtd.conf
sudo sed -i 's/#unix_sock_rw_perms = "0770"/unix_sock_rw_perms = "0770"/' /etc/libvirt/libvirtd.conf
sudo systemctl enable libvirtd.service
sudo usermod -a -G libvirt $(whoami)
sudo usermod -a -G kvm $(whoami)