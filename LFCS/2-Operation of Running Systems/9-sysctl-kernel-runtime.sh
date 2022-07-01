
# configure kernel parameters at runtime
###########################################
# net. - stands for network related stuff
# vm. - stands for Virtual memory related stuff
# fs. - stands for file system related stuff
# 1- TRUE
# 0- FALSE

sudo sysctl -a
# net.ipv6.conf.default.addr_gen_mode = 0
# net.ipv6.conf.default.autoconf = 1
# net.ipv6.conf.default.dad_transmits = 1
# net.ipv6.conf.default.disable_ipv6 = 0
# net.ipv6.conf.default.disable_policy = 0
# vm.admin_reserve_kbytes = 8192


# NON-persistent setting
# look at the name of the param disable_ipv6 :)
# -w - write
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
# net.ipv6.conf.default.disable_ipv6 = 1


# Read specific value of a kernel param
sudo sysctl net.ipv6.conf.default.disable_ipv6
# net.ipv6.conf.default.disable_ipv6 = 1

# Example - Kernel Runtime Parameters change
##############################################

sysctl -a | grep vm
# vm.panic_on_oom = 0
# vm.percpu_pagelist_fraction = 0
# vm.stat_interval = 1
# vm.swappiness = 30

# If we want to change the swappiness value to be
# something else from the default value, so we should
# create a file swap-less.conf (swap-less is just a
# name we want) and locate it in the
# /etc/sysctl.d/*.conf directory
# as the 'man sysctl.d' suggests

sudo vim /etc/sysctl.d/swap-less.conf
# put this value in the swap-less.conf file
# vm.swappiness = 30

# in order to apply the value immediately and not to wait for reboot
# p - stands for permanent file
sudo sysctl -p /etc/sysctl.d/swap-less.conf


