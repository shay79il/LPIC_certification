#!/bin/bash

# All hosts aliases overrid DNS
# For example when 127.0.0.1  localhost is used
# That means whenever using localhost its 127.0.0.1
cat /etc/hosts

# First look at the nameserver ip address
# to look for local DNS
cat /etc/resolv.conf



# Static file system info
# Each device which file system it has
cat /etc/fstab




# View the release of the OS
lsb_release -a
cat /etc/issue
cat /etc/*release*
cat /etc/*issue*z
hostnamectl


# View the kernel release version
uname -r

# View the remote GUI framwork "X server" release version
sudo X -version

hostname

echo $HOME

echo $PS1

# Updating the $PATH
echo $PATH
PATH="$PATH:<NewPath>"

# Each time we login into the shell this is the script run first
.profile

#  how long the server is running
systemUptime=$(uptime -p)
echo "${systemUptime}"

# last person to login
last
w


# current user running on the server
whoami

env

cat /proc/cpuinfo

# Linux Filesystem
# /bin  - user binaries - for example ls
# /boot - for booting the system
# /dev  - all devices attached to the system (block device etc.)
# /etc  - configuration files - for example apache ot NGINX
# /home - user home directory
# /lib  - shared library
# /mnt  - temp mount points (eg. disk on key)
# /opt  - optional packages
# /proc - kernel & proccess files
# /root - root user home directory
# /run  - application state files
# /sbin - system admin binaries use by root!!
# /srv  - Site-specific data served by this system such as data and scripts for web servers
# /tmp  - Temp directory
# /usr  - User binaries
# /var  - variable data files