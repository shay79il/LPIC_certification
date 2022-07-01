
# LVM - Logical volume manager
sudo apt install lvm2

# Know these abbreviations
# pv - physical volume
# vg - volume group
# lv - logical volume

#######################
# pv - physical volume
#######################

# Real storage devices which LVM will work with
# Can also be a partition
sudo lvmdiskscan

# Create LVMs
sudo pvcreate /dev/sdc /dev/sdd


# Display information about physical volumes
# PSize - total size of the pv
# PFree - size of the pv which NOT partitioned and NOT used by logical volumes
sudo pvs


####################
# vg - volume group
####################

# name - name of the group to use
# deviceN - can be /dev/sdc
# sudo vgcreate <group_name> device1 device2 ... deviceN
# Example
# create 1 logical volume from 2 physical devices
# if /dev/sdc & /dev/sdd are 5 Gb each so my_volume will be 10GB
# sudo vgcreate <partition-name> <pv1> <pv2> ... <pvN>
sudo vgcreate my_volume /dev/sdc /dev/sdd


# list all vg
sudo vgs

# lets say we need more space so we can
# expand our volume by creating another pv
# and extend the volume by vg extend command
sudo pvcreate /dev/sde
sudo vgextend my_volume /dev/sde


# to remove pv from a vg
sudo vgreduce my_volume /dev/sde

# and if do not need the pv any more
sudo pvremove /dev/sde


######################
# lv - logical volume
######################

# After we have our vg (after we added all the pv we wanted)
# we can create out lv be creating it
# sudo lvcreate --size <partition-size> --name <partition-name> <vg-name>
sudo lvcreate --size 2G --name partition1 my_volume
sudo lvcreate --size 6G --name partition2 my_volume

# list all lv
sudo lvs

# make partition1 to use all the REMAINING space in a vg
# sudo lvresize --extents 100%VG <vg-name>/<partition-name>
sudo lvresize --extents 100%VG my_volume/partition1

# shrink a partition
# we will be asked if we are OK with destroying DATA
sudo lvresize --size 2G my_volume/partition1

# display all the logical volumes
# with all their details
# their size, group volume, name, write access etc...
sudo lvdisplay


# To create a file system on a specific partition
# (which is a lv on a vg which is on a pv :)
# sudo mkfs.<type> /dev/<vg-name>/<partition-name>zzz
sudo mkfs.ext4 /dev/my_volume/partition1

# In order to RESIZE a lv when there is a file system on it
# Keep in mind that some file systems can be enlarged BUT can NOT shrink
sudo lvresize --resizefs --size 3G my_volume/partition1

# For extra info
man lvm
