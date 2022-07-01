#!/bin/bash


# Add a user to the system
# No permissions and No groups
# By default his home dir is /home/moshe
# All default files for his home dir
# are in /etc/skel
sudo useradd -m moshe

# Delete a user from the system
sudo userdel moshe


# Setting / Changing password to a new user
sudo passwd moshe

# Add login shell to new user
sudo usermod -s /bin/bash moshe


# Create new group
sudo groupadd linuxacademy

# Delete group
sudo delgroup linuxacademy


# Add permissions to new / old user
sudo visudo
# and ADD the following line we want for a apecific group
# %linuxacademy ALL=(ALL:ALL) ALL
# Add user to a specific group

# Add user "shay79il" to the grooup "linuxacademy"
sudo usermod -a -G linuxacademy moshe
sudo usermod -a -G linuxacademy shay79il
. /etc/profile


######################################
# Senario: remove moshe from the system
# and add roee to the system with the same
# permissions moshe had
######################################

# Lock moshe account
# Good when we want to remove moshe from our system
sudo passwd -l moshe

# Add a user to the system
# No permissions and No groups
sudo useradd -m roee

# Delete a user from the system
sudo userdel moshe

# Change ownership recursivly all
# moshe dir & files to roee
sudo chwon -R roee: /home/moshe

# Give group permission for read and exec
sudo chmod g+rx /home/moshe






