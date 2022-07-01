# See the system DISK FREE
df -h | grep -Ev 'tmpfs|dev/loop[0-9]*'

# See the DISK USAGE of a specific directory
# s - stands for SUMMARIZE
# h - stands for HUMAN-Readability
du -sh <dir-path>

# See the RAM memory usage
free -h

# Tell how long the system has been running
# And what the load average on the system
uptime

# output
18:21:17 up 1 day,  5:34,  2 users,  load average: 3.59, 2.87, 2.41

# Explanation
# load average: 3.59, 2.87, 2.41
# 3.59 - load after 1 min of system reboot - 3 cores and 59% of the 4th core
# 2.87 - load after 5 min of system reboot - 2 cores and 87% of the 3rd core
# 2.41 - load after 15 min of system reboot - 2 cores and 41% of the 3rd core


# display information about the CPU architecture
lscpu

# list all PCI devices
lspci


# check a Linux ext2/ext3/ext4 file system
# f - Force checking even if the file system seems clean
# v - Verbose mode
# p - Automatically  repair
sudo fsck.ext4 -v

sudo systemctl list-dependencies



