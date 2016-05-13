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

# Enable NAT for the tunnel interface
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

# Create symlinks
sudo ln -s $PWD/proxpn.conf /etc/openvpn/proxpn.conf
sudo ln -s $PWD/iptables /etc/network/if-up.d/iptables
sudo mkdir /etc/openvpn/ssl
sudo ln -s $PWD/ssl/ca.crt /etc/openvpn/ssl/ca.crt
sudo ln -s $PWD/ssl/client.crt /etc/openvpn/ssl/client.crt
sudo ln -s $PWD/ssl/client.key /etc/openvpn/ssl/client.key

# Save iptables rule
sudo chown root:root /etc/network/if-up.d/iptables
sudo chmod 755 /etc/network/if-up.d/iptables
