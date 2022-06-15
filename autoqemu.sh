#!/bin/bash

clear
echo ""
echo " ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████       █████  ▓█████  ███▄ ▄███▓ █    ██    "
echo "▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒   ▒██▓  ██▒▓█   ▀ ▓██▒▀█▀ ██▒ ██  ▓██▒   "
echo "▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒   ▒██▒  ██░▒███   ▓██    ▓██░▓██  ▒██░   "
echo "░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░   ░██  █▀ ░▒▓█  ▄ ▒██    ▒██ ▓▓█  ░██░   "
echo " ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░   ░▒███▒█▄ ░▒████▒▒██▒   ░██▒▒▒█████▓    "
echo " ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░    ░░ ▒▒░ ▒ ░░ ▒░ ░░ ▒░   ░  ░░▒▓▒ ▒ ▒    "
echo "  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░     ░ ▒░  ░  ░ ░  ░░  ░      ░░░▒░ ░ ░    "
echo "  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒        ░   ░    ░   ░      ░    ░░░ ░ ░    "
echo "      ░  ░   ░                  ░ ░         ░       ░  ░       ░      ░        "
echo ""
echo "Auto qemu + virt manager install and setup script will run in 5 seconds , press CTRL+C to cancel"
echo ""
sleep 1
echo "█ █ █ █"
echo ""
sleep 1
echo "█ █ █"
echo ""
sleep 1
echo "█ █"
echo ""
sleep 1
echo "█"
echo ""
sleep 1
echo "Too late to turn back! Start"

sudo pacman -Syy
sudo pacman -S qemu libvirt edk2-ovmf virt-manager ebtables dnsmasq --noconfirm
sleep 1
sudo systemctl enable libvirtd.service
sudo systemctl start libvirt.service
sudo systemctl enable virtlogd.socket
sudo systemctl start virtlogd.socket
sudo virsh net-autostart default
sudo virsh net-start default
echo "All done , you can start virt-manager now."
