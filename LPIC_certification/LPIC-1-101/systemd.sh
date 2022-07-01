#!/bin/bash

# How to change the Environment
# from CLI to Graphic (Desktop) Env
# Or to rescue env
# Or to reboot env
# Or to poweroff env

# Purpose of a systemd Target
# • A target is a unit that syncs up other units when the computer boots or changes states
# • Often used to bring the system to a new state:
# • i.e., a state with just a command line: multi-user.target
# • i.e., a state with a desktop environment: graphical.target
# • Other units associate themselves with a target for an operating environment
# Mastering systemd
# Types of Targets
# • multi-user.target - multi-user system, similar to what runlevel 3 provided
# • graphical.target - multi-user system with a desktop environment, similar to what runlevel 5 provided
# • rescue.target - pulls in a basic system and file system mounts and provides a rescue shell
# • basic.target - basic system, used during the boot process before another target takes over
# • sysint.target - system initialization
# • man 5 systemd.target - defines the target unit configuration
# • man 7 systemd.special - listing of all target units and definitions


systemctl cat graphical.target



# Unit file locations (Do NOT edit them!)
/usr/lib/systemd/system
/etc/systemd/system
/run/systemd/system

# Show all unit files for available targets
systemctl list-unit-files -t target

# Show all loaded and active unit files
systemctl list-units -t target

# List out the default target
systemctl get-default

# Change the default target to
# a different target for example
# switching form  multi-user.target (CLI)
# to              grafical.target (Desktop GUI)
systemctl set-default <target>



# Will change the running state of the
# system from the current target to a different target
systemctl isolate <target>


# Almost identical to the System V
# Init single-user mode, allows the
# root user to repair a system
systemctl rescue

# Will run the reboot.target.
# Same thing as just typing ‘reboot’ at the prompt
systemctl reboot


# Will perform a complete shutdown
# of the system by isolating the system to the poweroff.target.
# Same thing as just typing ‘poweroff’ at the prompt
systemctl poweroff



