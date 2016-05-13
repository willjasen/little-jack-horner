# little-jack-horner

This project aims to setup OpenVPN on a Raspberry Pi to tunnel network traffic out through ProXPN.

The script setup.sh gathers ProXPN user credentials, installs OpenVPN, and configures NAT between the VPN tunnel and an internal network(s).

## Limitations
* a ProXPN paid account is necessary
* the ProXPN VPN tunnel terminates on their New York server

## Installation
```bash
sudo ./setup.sh
```


