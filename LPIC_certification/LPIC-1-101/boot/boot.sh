#!/bin/bash

# Kernel RING buffer log
dmesg


# Log each event on the system
# Use -k for kernel logs
journalctl -k
