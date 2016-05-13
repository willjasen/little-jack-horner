# little-jack-horner

This project aims to setup OpenVPN on a Raspberry Pi to tunnel network traffic out through ProXPN.

The script setup.sh gathers ProXPN user credentials, installs OpenVPN, and configures NAT between the VPN tunnel and an internal network(s). The ProXPN connection terminates on the New York server.

## Limitations
* a ProXPN paid account is necessary
* there are no options to change ProXPN server

## Installation
```bash
sudo ./setup.sh
```

## Example Environment
* includes multiple VLANs/subnets
* Raspberry Pi located on one of the VLANs
* connecting clients use the Raspberry Pi as default gateway
* firewall rules block all outgoing traffic except from the Raspberry Pi

