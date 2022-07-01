# naming convention for network devices
# Physical NICs will always starts with 'e' (from ethernet)
# Wireless NICs will always starts with 'w'

# show all network devices
ip link show
ip l

# show all network devices IPs
ip a

# Add/delete ip-address to a NIC device
ip a add <ip-address> dev <dev-name>
ip a del <ip-address> dev <dev-name>

# show routing table management
ip route

# Add/delete ip-route to a NIC device
ip route add <CIDR> via <ip-address> dev <dev-name>
ip route del <CIDR> via <ip-address> dev <dev-name>

# Apply any changes immediately
# network interface - e.g. eth0, enp0s3
sudo nmcli device reapply <network interface>


# DNS resolver
cat /etc/resolv.conf

############################################################
############################################################
############################################################




##############################
# network interfaces - DHCP
##############################

###########################
# Ubuntu - Old versions
###########################
# network interfaces on Ubuntu
ll /etc/network

# in this file we can update the NIC to be STATIC
# and configure the NIC interfaces
sudo vi /etc/network/interfaces

# for dynamic hostname resolution
# make sure the following line
iface eth0 inet dhcp

# for static hostname resolution
# make sure the following lines
iface eth0 inet static
address 192.168.0.79
netmask 255.255.255.0
gateway 192.168.0.1
dns-search local.la
dns-nameservers 8.8.8.8 8.8.4.4

# Apply any changes immediately
# network interface - e.g. eth0, enp0s3
sudo nmcli device reapply <network interface>

###########################
# Ubuntu - New versions
###########################
$ cat /etc/netplan/01-network-manager-all.yaml

# dynamic
network:
version: 2
ethernets:
wlp2s0:
dhcp4: true
dhcp6: true
match:
macaddress: <MAC-ADDRESS>
set-name: wlp2s0

# static
network:
version: 2
ethernets:
wlp2s0:
dhcp4: no
addresses: [192.168.1.79/24]
gateway: 192.168.1.1
nameservers:
addresses: [8.8.8.8, 8.8.4.4]
dhcp6: true
match:
macaddress: <MAC-ADDRESS>
set-name: wlp2s0

# Apply any changes immediately
# network interface - e.g. eth0, enp0s3
sudo nmcli device reapply <network interface>

#########
# Rad-hat
#########
# network interfaces on Rad-hat
cat /etc/sysconfig/network-scripts/ifcfg-eth0

# Edit the network manager
sudo nmtui

# Apply any changes immediately
# network interface - e.g. eth0, enp0s3
sudo nmcli device reapply <network interface>


#############################################################

# For static hostname resolution
################################

sudo vi /etc/hosts



#############################################################


traceroute 8.8.8.8


#######################################
# Configure a route for current session
#######################################

# Configure a route from one network to the other
# with naming the device which does the route
sudo ip route add 192.168.0.0/24 via 10.11.12.100 dev enp0s3

# Remove previous rote
sudo ip route del 192.168.0.0/24

# configure a gateway
sudo ip route add default via 10.0.0.100

# Remove the configure gateway
sudo ip route del default via 10.0.0.100



##########################################
# Configure a PERMANENT route OR a gateway
##########################################

# Get the active NIC (DEVICE column)
nmcli connection show

# Make permanent the routing to the gateway configuration
# enp0s3 - was taken from the previous command
# +ipv4.routes - stands for ADDING new rule
sudo nmcli connection modify enp0s3 +ipv4.routes "192.168.0.0/24 10.0.0.100"

# Make the previous configuration apply immediately
sudo nmcli device reapply enp0s3

# See the applied configuration
ip route show

# Remove the applied configuration
# -ipv4.routes - stands for REMOVING new rule
sudo nmcli connection modify enp0s3 -ipv4.routes "192.168.0.0/24 10.0.0.100"

# Make the configuration apply immediately
sudo nmcli device reapply enp0s3










