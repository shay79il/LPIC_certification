#!/bin/bash

# Displays info on the running kernel
uname -a


# List all the current loaded kernel module
lsmod

# Displays info on a specific loaded kernel module
modinfo <module name>


# Command to LOAD dynamically
# a kernel module at runtime
modprob <module name>

# Command to UNLOAD dynamically
# a kernel module at runtime
modprob -r <module name>





