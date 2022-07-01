
# Create a file system type
# type - ext4, xfs etc...
# L - label the file system (e.g. backup)
# N - Number of iNodes
sudo mkfs.ext4 -L Backup -N 50000 /dev/sdb1

# manage ext4 FS
# l - list properties of the fs
sudo tune2fs -l /dev/sda3


# Change ext4 FS label
sudo tune2fs -L <name> /dev/sda3





















