#!/bin/bash

# contains the actual handles to all devices that are connected
# to the system.
ls /dev

# The device manager for the linux kernel
# links info on system HW to /dev
# Information gets passed through the D-Bus
# and gets passed down to the /dev file system.
udev


# All info on the cpu
ls /dev/cpu

# All info on the video cards
ls /dev/dri



# list all PCI devices
lspci


# Show kernel drivers handling each device
# and also kernel modules capable of handling it
lspci -k

# List all usb devices attached
# use -v for more info
# use -f for more info on the controllers the usb attached to
lsusb

# Displays info on the CPU on the system
lscpu
cat /proc/cpuinfo

# list all block devices on the system
lsblk
