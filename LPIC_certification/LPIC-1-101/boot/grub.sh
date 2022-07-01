#!/bin/bash

# GRUB - Grand Unified Boot Loader on
# MBR (Master Boot Record)
# "grub" sits in the /boot directory
findmnt /boot

# Invokes the GRUB shell environment
grub


# Print the help listing for GRUB, or get
# more info on a command, i.e. ‘help [command]’
help


# Search for a file in all partitions and
# list the device(s) the file is on
find /grub/stage1


# Exit the grub shell
quit


###############################
#           GRUB2             #
###############################

# MBR (Master Boot Record):
# • Traditionally supported only 26 total partitions (4 partitions, with one partition extended to 23 partitions)
# • Partition size limited to 2TB

# GPT (GUID Partition Table):
# • Supports 128 partitions
# • Partition size up in the ZB (zettabyte) range
# • Needs UEFI (Unified Extensible Firmware Interface) to boot:
# • Replacement for traditional BIOS, can act in legacy BIOS mode
# • Requires a 64bit operating system
# • Prevents unauthorized operating systems from booting on the system

# view the default boot entry for the
# grub configuration file as written in
# /boot/grub/grubenv
grub-editenv list


# creates (or updates) a /boot/grub2/grub.cfg file
# based on entries from the /etc/default/grub file
# (On Debian systems, the ‘2’ is omitted from the command name.
# e.g. grub-mkconfig)
grub-mkconfig

# command that can be used to update a GRUB2 configuration
# after changes to /etc/default/grub have been made,
# found on Debian based systems
update-grub




