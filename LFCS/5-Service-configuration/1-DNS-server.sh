
######################
# Configure DNS server
######################

# install BIND - caching DNS server
sudo apt install bind9 bind9utils bind9-doc

# core configuration files for BIND app
ll /etc/bind


# look in current directory for a copy
# ! '../LFCS/5-Service-configuration/named.conf.options'
# ! And edit the following file:
sudo vi /etc/bind/named.conf.options

# validate the changes made to the file
sudo named-checkconf


# restart the bind service
sudo systemctl restart bind9



##########################################
######## Configure DNS Zone ##############
##########################################

# !look in current directory for the files
# ! '../LFCS/5-Service-configuration/fwd.la.local.bd'
# ! '../LFCS/5-Service-configuration/rev.la.local.bd'
# !which is mentioned in the file 'named.conf.options'
# !in current directory or just use BCompare
# !we can copy them in /etc/bind
# And edit the following file:
sudo vi /etc/bind/fwd.la.local.bd
sudo vi /etc/bind/rev.la.local.bd

# !Check correctness
# !Dont forget to 'cd /etc/bind'
# !To tun the check
sudo named-checkconf

# restart the bind service
sudo systemctl restart bind9


sudo named-checkzone la.local /etc/bind/fwd.la.local.db


dif @localhost www.la.loacl