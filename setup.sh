#!/bin/bash

# Update repos
sudo apt-get -y update

# Install OpenVPN
sudo apt-get -y install openvpn

# Gather ProXPN user credentials and save
echo -n "Enter ProXPN username: "
read proxpn_username
echo -n "Enter ProXPN password: "
read proxpn_password
echo $proxpn_username >> /etc/openvpn/creds.conf
echo $proxpn_password >> /etc/openvpn/creds.conf

# Enable IPv4 forwarding
echo '1' | sudo tee /proc/sys/net/ipv4/ip_forward
sudo sed -i '/net.ipv4.ip_forward/s/^#//g' /etc/sysctl.conf
