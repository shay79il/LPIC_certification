# change group of a spesific file or directory
# of which the user is part of
chgrp <group-name> <file/directory>

# print groups which the user is part of
groups

# change file owner and group
sudo chown [user-name]:[group-name] <file-name>


#  Backgroud to chmod command
# -----------------------------

ls -l
-rwxrwxrwx aaron family 49 Oct 27 14:41 family_dog.jpg

- rwx     rwx     rwx     aaron family 49 Oct 27 14:41 family_dog.jpg
# USER    GROUP   OTHERS
Bit         Purpose
---         ----------
-           No permission
r           Read File
w           Write to File
x           Execute (run)

FileType          Identifier
--------          ----------
REGULAR-FILE      -
DIRECTORY         d
LINK              l
SOCKET-FILE       s
PIPE              p
CHARACTER-DEVICE  c
BLOCK-DEVICE      b

# Change file mode bits
chmod <premissions> <file/dir>


# Add list of permissions for user
chmod u+[list of permissions]

Option      Examples
------      ----------
user    u+  u+w / u+rw / u+rwx
group   g+  g+w / g+rw / g+rwx
others  o+  o+w / o+rw / o+rwx


# Remove list of permissions for user
chmod u-[list of permissions]

Option      Examples
------      ----------
user    u-  u-w / u-rw / u-rwx
group   g-  g-w / g-rw / g-rwx
others  o-  o-w / o-rw / o-rwx