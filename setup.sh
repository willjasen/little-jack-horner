#!/bin/bash

# Update repos
sudo apt-get -y update

# Install OpenVPN
sudo apt-get -y install openvpn

# Gather ProXPN user credentials
echo -n "Enter ProXPN username: "
read proxpn_username
echo -n "Enter ProXPN password: "
read proxpn_password
