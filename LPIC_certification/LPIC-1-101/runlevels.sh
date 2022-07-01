#!/bin/bash


# Run level   ##    Means that
###############################
# 0           ##    The system has halted and is not powered on.
##
# 1           ##    Single user mode (root), typically just the root user
#             ##    and there's no networking available.
##
# 2           ##    Multi-user mode with no networking available.
##
# 3           ##    Multi-user mode with networking capability.
##
# 4           ##    Typically unused, but you can use it
#             ##    to create a custom environment.
##
# 5           ##    Multi-user with networking and
#             ##    a graphical desktop environment.
##
# 6           ##    Actual reboot run level.


# View current runlevel
runlevel
# N 5  # N-No previus run level and the current level is 5

# Change to 3 runlevel
telinit 3
