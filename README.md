# little-jack-horner

This project aims to setup OpenVPN on a Raspberry Pi to tunnel network traffic out through proXPN.

The script setup.sh gathers proXPN user credentials, installs OpenVPN, and configures NAT between the VPN tunnel and an internal network(s). The proXPN connection terminates on the New York server.

## Limitations
* a proXPN paid account is necessary
* there are no options to change proXPN server

## Installation
```bash
sudo ./setup.sh
```

## Example Environment
* includes multiple VLANs/subnets
* Raspberry Pi located on one of the VLANs
* connecting clients use the Raspberry Pi as default gateway
* firewall rules block all outgoing traffic except from the Raspberry Pi

