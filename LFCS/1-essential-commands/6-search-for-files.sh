
# search for files in a directory hierarchy
find <path> -<flag> <file-name>

# Some examples BUT look down for more info
############################################
# search for files in a directory hierarchy by INsensitive name
find /usr/share/ -iname '*.jpg'

# search for files in a directory hierarchy by size
find /usr/share/ -size +10M






# Modification time
# File created or edited
###################
# search for files which were modifiy EXACTLY 2 min ago
find / -mmin 2

# search for files which were modifiy in the last 2 min
find / -mmin -2

# search for files which were modifiy BEFORE the last 2 min
find / -mmin +2

# search for files which were modifiy in days in the last 24H
find / -mtime 0

# search for files which were modifiy in days in the last 24H-48H
find / -mtime 1

# search for files which were modifiy in days in the last 24H-48H
find / -mtime 1


# Changed time
# File metadata changed
#   - permission etc...
########################
# search for files which were changed in the last 5 min
find / -ctime -5

# search for files which were changed in days in the last 24H-48H
find / -ctime 1

# Find by permissions
######################
find / -perm 664        # find files with EXACTLY with these permissions
find / -perm -664       # find files with AT LEAST with these permissions
find / -perm /664       # find files with ANY of these permissions
find / -not -perm -o=r  # find files with OTHERs can NOT read but only user or group does
find / -perm /u=r,g=r,o=r  # find files which SOMEONE CAN read



# Find by size
##############
# search for files of EXACCTLY the size of
find / -size 512c # 512 bytes
find / -size 512k # 512 Kilobytes
find / -size 512M # 512 Megabytes
find / -size 512G # 512 Gigabytes

# search for files of ABOVE the size of
find / -size +512M # 512 Megabytes

# search for files of LESS the size of:
find / -size -512M # 512 Megabytes


# Find by combination of size and name
########################################
find / -size -512M -name "f*"     # AND - meaning both criteria MUST apply
find / -size -512M -o -name "f*"  # OR  - meaning ONLY one criteria MUST apply
find / -not -name "f*"            # NOT - meaning ONLY files NOT apply to criteria





