
####################
# Firewall - Ubuntu
####################
# administration tool for IPv4/IPv6 packet filtering and NAT
# L - stands for list all rules
sudo iptable -L


# deleting all the rules
sudo iptable -F

# -A              — Append new rule to chain (INPUT, OUTPUT, FORWARD... )
# -i (interface)  — the network interface whose traffic you
#                   want to filter, such as eth0, lo, ppp0, etc.
# -p (protocol)   — the network protocol where your filtering
#                   process takes place. It can be either tcp, udp,
#                   udplite, icmp, sctp, icmpv6, and so on.
#                   Alternatively, you can type 'all' to choose every protocol.
# -s (source)     — the address from which traffic comes from.
#                   You can add a hostname or IP address.
# -dport (port)   — the destination port number of a protocol,
#                   such as 22 (SSH), 443 (https), etc.
# -j (target)     — the target name (ACCEPT, DROP, RETURN).
#                   You need to insert this every time you make a new rule.
sudo iptables -A <chain> -i <interface> -p <protocol (tcp/udp) > -s <source> --dport <port no.>  -j <target>
sudo iptable -A INPUT -p icmp -i ens5 -j REJECT
sudo iptable -A INPUT -p icmp -i ens5 -j DROP
sudo iptable -A INPUT -p icmp -i ens5 -j ACCEPT
sudo iptable -L

# Save all changes
sudo iptables-save

# Flush the whole iptables
sudo iptables -F






#######################
# Firewall - Centos OS
#######################

# get-default-zone status
sudo firewall-cmd --get-default-zone

# set-default-zone status
sudo firewall-cmd --set-default-zone=public

# list firewall rules
sudo firewall-cmd --list-all

# Get info about the service rule name from running
# last command 'sudo firewall-cmd --list-all'
sudo firewall-cmd --info-service=cockpit

# Add service rule to the firewall choose one of the following
# BTW - the service rule is added to the current session without permanency
sudo firewall-cmd --add-service=http
sudo firewall-cmd --add-port=80/tcp

# Remove service rule to the firewall choose one of the following
sudo firewall-cmd --remove-service=http
sudo firewall-cmd --remove-port=80/tcp


# Add service rule to the firewall to the firewall as permanent
# BTW - WITHOUT the current session
# In order to apply to the current session
# we should run also 'sudo firewall-cmd --add-port=12345/tcp'
sudo firewall-cmd --add-port=12345/tcp --permanent


# Add service rule for a 'trusted-zone' to the firewall
sudo firewall-cmd --add-source=10.11.12.0/24 --zone=trusted

# Get the zone which filtering traffic
sudo firewall-cmd --get-active-zones

# Remove service rule for a trusted-zone to the firewall
sudo firewall-cmd --remove-source=10.11.12.0/24


# Run the following 3 commands to make
# all runtime rules into permanent
sudo firewall-cmd --list-all
sudo firewall-cmd --runtime-to-permanent
sudo firewall-cmd --list-all --permanent

