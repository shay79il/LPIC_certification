#!/bin/bash

# Reboot options
telinit 6
reboot
shutdown -r now
systemctl isolate reboot.target

# Write a message to all users whom are connected via ssh.
# For example let them know that the system is about to reboot
wall -n "System will go down for 2 hours maintenance at 13:00 PM"

# Poweroff options
poweroff
telinit 0
shutdown -h 1 minute # h - for halt and +1 for 1 min
systemctl isolate poweroff.target


# Advanced config and power interface
ls /etc/acpi
