

# Encrypt plain text on /dev/vde
# verify-passphrase - ask for the password twice
# open - open the device for reading & writing encrypted data to and fro the device
# --type plain - customize the open action to use the 'plain' encryption scheme
# mysecuredisk - can be used as '/dev/mapper/mysecuredisk'
# sudo cryptsetup --<flags> <action> --type <encryption-scheme> <device> <mapper-device-name>
sudo cryptsetup --verify-passphrase open --type plain /dev/vde mysecuredisk


# create a file system over the device we mapped above
sudo mkfs.ext4 /dev/mapper/mysecuredisk

# mount the file system
sudo mount /dev/mapper/mysecuredisk /mnt

# !behind the scenes everything on /dev/vde is encrypted
# !(/dev/mapper/mysecuredisk is actually /dev/vde encrypted.)
# !but for every read & write the OS encrypt the data to write to the disk
# !and decrypt before reading from the disk

# In order to make the data on '/dev/mapper/mysecuredisk' NOT visible
# 1) unmount the filesystem
sudo umount /mnt

# 2) close the mapping device
# now all the data is secure
sudo cryptsetup close mysecuredisk


###################################################
# luks encryption - easier way to encrypt
###################################################
# format the disk with the partition we intend to use
sudo cryptsetup luksFormat /dev/vde

# change password
sudo cryptsetup luksChangeKey /dev/vde

# open the device for mounting
sudo cryptsetup open /dev/vde mysecuredisk

# create a file system out of the device
sudo mkfs.xfs /dev/mapper/mysecuredisk

# close the mapping device now all the data is secure
sudo cryptsetup close mysecuredisk


# when we want to encrypt part of the disk e.g. '/dev/vde2'
sudo cryptsetup luksFormat /dev/vde2

# open the device for mounting
sudo cryptsetup open /dev/vde2 mysecuredisk

