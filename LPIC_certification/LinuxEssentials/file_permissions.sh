#!/bin/bash

#  Change the owenership and group
chown <Userchange>:<Groupchange> <fileToBeChown>



# Files to be cleared every 30 days are in special dir
ll /var/tmp

# Using tmp files in a script
# the cmd mktemp will create a temp file
# in the /tmp directory which the next
# time the system will boot it will be gone
tmpfile=$(mktemp)
echo $tmp_file
ls /home/shay79il >> $tmp_file

# if we use mktemp with name
# it will create a file in the dir we r in
#  with randon XXX characters
mktemp shay.XXX










