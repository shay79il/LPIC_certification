#!/bin/bash


# Linux Filesystem
# /     - root directory
# /var  - variable data files - jogfiles and dynamic content (web sites etc.)
# /home - user home directory
# /boot - for booting the system used by Linux kernel
# /opt  - optional packages for 3-rd party SW apps


# SWAP
# In essence, swap space is just temporary storage
# that acts like RAM. It exists on your physical hard drive.
# Once as rule of thumb a system's swap space should be set up
# to be 1.5 to 2 times the size of the RAM
# These days SWAP should beat least 50% of available RAM.
free -h

# Partitions
/dev/sda # scasi device a

/dev/sda1 # first partition scasi device a
# can be mounted to the "/" directory

/dev/sda2 # second partition scasi device a
# can be mounted to /home directory

/dev/sda3 # third partition scasi device a
# can be mounted to /boot directory

# Used for mounting partitions to directories
# or show all existing mounts
mount

# list all block devices on the system
lsblk

# manipulate disk partition table
man fdisk -l /dev/sda

# Info on the swap partition
swapon --summary



##################################
# LVM (Logical volume manager)
##################################
# FileSystem - / /var swap /home
# LV - Logical volume
# VG - Volume Group
# PV = Phosical volume