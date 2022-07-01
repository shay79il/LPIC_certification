#!/bin/bash


# dig <Site Address> - like giving the DNS options
dig www.linuxacademy.com

# ;; ANSWER SECTION:
# www.linuxacademy.com.	42	IN	A	3.94.17.41
# www.linuxacademy.com.	42	IN	A	54.147.99.159
# www.linuxacademy.com.	42	IN	A	18.213.119.118
# www.linuxacademy.com.	42	IN	A	34.225.138.219

# Get the IPv4 and IPv6 addresses of a url
host example.com
example.com has address 93.184.216.34
example.com has IPv6 address 2606:2800:220:1:248:1893:25c8:1946
example.com mail is handled by 0 .

# Show default gateway and the routing table
ip route show

# default via 192.168.42.129 dev usb0 proto dhcp metric 100   --->>> Default GW
# 169.254.0.0/16 dev usb0 scope link metric 1000              --->>> All other LOCAL traffic
# 192.168.42.0/24 dev usb0 proto kernel scope link src 192.168.42.187 metric 100

#  Show all ip addresses the PC has
ip addr show
# Or
ifconfig


# CLI tool for controlling NetworkManager
nmcli

# Print
# - network connections
# - routing tables
# - interface statistics
# - masquerade connections
# - multicast memberships
netstat


# utility to investigate sockets
ss

# Get the DNS server
cat /etc/resolv.conf | grep nameserver

# DNS lookup utility
host www.linuxacademy.com


# Test conectivity
ping -c1 www.linuxacademy.com
# Or
curl -I www.linuxacademy.com # -I for getting only the HEADER

