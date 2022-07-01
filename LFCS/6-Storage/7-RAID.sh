
# mdadm - multiple devices administration

# Create RAID level-0 out of 3 devices into /dev/md0
sudo mdadm --create /dev/md0 --level=0 --raid-devices=3 /dev/vdc /dev/vdd /dev/vde

# avoid that /dev/vdc /dev/vdd /dev/vde will be divided into an array
# when system reboot at /dev/md0 /dev/md1 /dev/md2 respectfully
sudo mdadm --zero-superblock /dev/vdc /dev/vdd /dev/vde

# Create Filesystem on it
sudo mkfs.ext4 /dev/md0

# Stop the created RAID
sudo mdadm --stop /dev/md0


sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/vdd --spare-devices=1 /dev/vde

sudo mdadm --stop /dev/md0

sudo mdadm --zero-superblock /dev/vdc /dev/vdd /dev/vde

sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/vdc /dev/vdd

sudo mdadm --manage /dev/md0 --add /dev/vde

cat /proc/mdstat

sudo mdadm --manage /dev/md0 --remove /dev/vde



sudo mdadm --stop /dev/md0

sudo mdadm --zero-superblock /dev/vdc /dev/vdd /dev/vde

sudo mdadm --create --verbose /dev/md0 --level=10 --raid-devices=4 /dev/vdc /dev/vdd /dev/vde /dev/vdf
