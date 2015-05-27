#!/bin/bash
NEWMAC=`openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`
sudo ifconfig en0 ether $NEWMAC
networksetup -setairportpower en0 off
networksetup -setairportpower en0 on
sudo ipconfig set en0 DHCP
