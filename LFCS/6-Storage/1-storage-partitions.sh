
# list block devices
lsblk

# list disk partition table
sudo fdisk --list /dev/sda


# display or manipulate a disk partition table
# *we can create a partition to be swap area
sudo cfdisk /dev/sda

# Show swap area info
sudo swapon --show

# format a Linux swap area
# !After using 'sudo cfdisk /dev/sda'
# we can actually create the swap area
# with the following command
sudo mkswap /dev/vdb3

# Enable swap area
# !After using 'sudo mkswap /dev/vdb3'
sudo swapon --verbose /dev/vdb3


# Show swap area we just created
sudo swapon --show

# remove the swap partition we created
sudo swapoff /dev/vdb3

####################
# Swap using a file
####################

# create swap with a file
# if    - stands for input file
# of    - stands for output file
# bs    - stands for block size
# count - stands for how many blocks
sudo dd if=/dev/zero of=/swap bs=1M count=2048 status=progress

# set permissions
sudo chmod 600 /swap

# format Linux swap area using a file
sudo mkswap /swap

# Enable swap area
sudo swapon --verbose /swap

# Show swap area we just created
sudo swapon --show




