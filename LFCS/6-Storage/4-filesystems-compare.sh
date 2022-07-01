
# list ALL mounted points
findmnt


findmnt -t xfs,ext4
# Output
# TARGET        SOURCE                FSTYPE OPTIONS
# /             /dev/mapper/cs-root   xfs rw,relatime,seclabel,attr2,inode64,logbufs=8,logbsize=32k,noquota
# ├─/boot       /dev/vda1             xfs rw,relatime,seclabel,attr2,inode64,logbufs=8,logbsize=32k,noquota
# └─/mybackups  /dev/vdb1             xfs rw,relatime,seclabel,attr2,inode64,logbufs=8,logbsize=32k,noquota


# Manuals for mounting diff FS
man mount
man xfs
man ext4

