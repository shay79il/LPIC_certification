#!/bin/bash

# print all users
cat /etc/passwd
# shay79il : x : 1000 : 1000 : Shay Goldstein,,, : /home/shay79il : /bin/bash
# User name.
# Encrypted password (x means that the password is stored in the /etc/shadow file).
# User ID number (UID).
# User’s group ID number (GID).
# Full name of the user (GECOS).
# User home directory.
# Login shell (defaults to /bin/bash).

# Some MORE info on User ID number (UID).
# UID       - Always the root account
# UID 1-99  - Traditionally for system users (services and apps)
# UID 100+  - Standard users (services and apps)
# UID 65534 - Reserved for the user nobody





# All users password issues
cat /etc/shadow
# shay79il : $6$MvAlPzEj$m/emnbQGfYfO5X : 18162 : 0 : 99999 : 7 :::
# UserName
# Password      - Hash password
# Last changed  - Number of days since password has changed
# Minimum       - Minimum number of days between password chages
# Maximum       - Maximum number of days between password chages
# Warn          - Number of days before password expiration
# Inactive      - Number of days since expiration
# Expire        - Absolute expiration date


# All groups
cat /etc/group
# Example - sambashare:x:126:shay79il
# GroupName
# Password - empty password
# Group ID - uniqe group ID
# Group list - a comma deliniated list of usernames


# my beloning groups
groups shay79il


# Changing user from one to another
su <userName>
# OR
sudo su - <userName>

# All permissions for all users
cat /etc/sudoers

