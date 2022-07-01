
##########################
# Manual mounting
##########################

# Temporary mounting point for random FS
ls /mnt/

# mounting the file system
sudo mount /dev/<partition> /<mounting point>

# Mounting with options
# ro      - read only
# noexec  - No option for executable files
# nosuid  - No option for executable files with root privileges
sudo mount -o ro,noexec,nosuid /dev/vdb2 /mnt

# Example
sudo mount /dev/sdb1 /mnt/

# unmount a file system
sudo umount /mnt

# remount in order to change mount options
sudo mount -o remount,rw /dev/vdb1 /mnt




##########################
# mount devices on boot
##########################

# man fstab

# backup - enable/disable - 0/1
# error action -
#    - 0 - never scan for errors
#    - 1 - scan for errors FIRST
#    - 2 - scan for errors AFTER 1 is scanned
# <device> <mounting-point> <FS-type> <mount-option> <backup> <error action>
# Example
# /dev/sdb1   /backup1    ext4    defaults 0 2
# /dev/sdc        none    swap    defaults 0 0
sudo vi /etc/fstab

sudo blkid /dev/sda1

# update systemd after editing /etc/fstab
sudo systemctl daemon-reload


##########################
# Mounting on demand
##########################

# On demand mounting to a remote server
sudo apt install autofs
sudo systemctl start autofs
sudo systemctl enable autofs


# Expose our server to be a nfs server
# Install NFS
sudo apt install nfs-utils
sudo systemctl start nfs-server.service
sudo systemctl enable nfs-server.service


# Config the exposed directories over the NFS server
# Example
# /etc 127.0.0.1(ro)
# meaning we expose the etc directory to all
# PCs over 127.0.0.1 for read only
sudo vi /etc/exports

# After changing /etc/exports run the following:
sudo systemctl reload nfs-server.service

# Config auto mounting
# By default autofs service on linux
# auto unmount FS after timeout 300 sec

#################################
# Mounting the shared PARENT dir
#################################

# *Example of the content of '/etc/auto.master'
# */shares/ /etc/auto.shares --timeout=400
# Explanation
# use '/shares' dir as PARENT mounting point (will be created if not exists)
# and the actual mounting point will be what is defined in '/etc/auto.shares'
# use '/etc/auto.shares' file of the auto mounting options for '/shares'
sudo vi /etc/auto.master


# The content of '/etc/auto.shares'
# -fstype - mount option
# Content options when we have PARENT dir
# (mentioned in '/etc/auto.master' as '/shares/''):
#     1) mynetworkshare          -fstype=auto 127.0.0.1:/etc
#     2) mynetworkshare          -fstype=nfs4 127.0.0.1:/etc
#     3) mynetworkshare          -fstype=auto,ro 127.0.0.1:/etc
#     4) mynetworkshare          -fstype=auto,ro nfs1.example.com:/etc
#     5) myext4files             -fstype=auto,ro :/dev/vdb2
sudo vim /etc/auto.shares

# After writing the 2 config files above
# - /etc/auto.master
# - /etc/auto.shares
# We should run the following
sudo systemctl reload autofs

# When turning to the on demand mounting point
# the linux OS will auto mount the expected FS
ls /shares/mynetworkshare/



#################################
# Mounting with NO PARENT dir
#################################

# Example:
# /shares/ /etc/auto.shares --timeout=400
# Explanation
# use '/-'      dir as NO PARENT mounting point (will be created if not exists)
# /- /etc/auto.shares --timeout=400
sudo vim /etc/auto.master


# The content of '/etc/auto.shares'
# -fstype - mount option
# Content options when we do NOT have PARENT dir
# (mentioned in '/etc/auto.master' as '/-'):
#     1) /mynetworkshare          -fstype=auto 127.0.0.1:/etc
#     2) /mynetworkshare          -fstype=nfs4 127.0.0.1:/etc
#     3) /mynetworkshare          -fstype=auto,ro 127.0.0.1:/etc
#     4) /mynetworkshare          -fstype=auto,ro nfs1.example.com:/etc
#     5) /localfiles/myext4files  -fstype=auto,ro :/dev/vdb2
sudo vim /etc/auto.shares


# After writing the 2 config files above
# - /etc/auto.master
# - /etc/auto.shares
# We should run the following
sudo systemctl reload autofs







