#!/bin/bash

# kernel logs from all hardware on the system
dmsg

# kernel logs from all sda devices
dmesg | grep sda

# kernel logs from all usb devices
dmesg | grep -i usb

# kernel logs from all memory devices
dmesg | grep -i memory