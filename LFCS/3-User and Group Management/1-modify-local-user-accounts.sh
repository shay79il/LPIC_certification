
# ADD-USER
###########

# 1) The easy way -
######################
sudo adduser <username>


# 2) The complicated way -
##########################
# Add new user with new home directory at /home/john
# all default files will be copied from /etc/skel
# files as .bash_logout .bash_profile .bashrc
sudo useradd --create-home john

# Watch the defaults when adding new user
useradd --defaults
useradd -D
# GROUP=100
# HOME=/home
# INACTIVE=-1
# EXPIRE=
# SHELL=/bin/bash
# SKEL=/etc/skel
# CREATE_MAIL_SPOOL=yes

# For further configurations params look at the following file
# in order to auto create home directory for a new added user
# just add the configuration param CREATE_HOME with "yes" value
# ...
# Please note that the parameters in this configuration file
# control the behavior of the tools from the shadow-utils component.
# None of these tools uses the PAM mechanism, and the utilities
# that use PAM (such as the passwd command) should therefore be
# configured elsewhere.
# Refer to /etc/pam.d/system-auth for more information.
cat /etc/login.defs


# set a password for the new created user
sudo passwd john

# Remove user from the system
sudo userdel john


# Remove user from the system AND
# auto remove his home directory
# auto remove his mail
sudo userdel -r john

# Remove user group
sudo groupdel john


# Add new user with specific shell and specific home dir
# differ from the default
sudo useradd -s /bin/othershell -d /home/otherdirectory/ john


cat /etc/passwd
# john:x:1001:1001::/home/<username>/:/bin/<shell-name>
# Explanation
# 1st 1001 - user ID
# 2nd 1001 - group ID
# home dir
# shell

# set different user ID & GroupID (e.g. 1100)
sudo useradd -u 1100 smith

# see the username and user-group
ls -l /home/
# drwx------. 16 aaron aaron 4096 Dec 16 10:01 aaron
# drwx------. 4 jane jane 113 Dec 16 13:00 jane
# drwx------. 3 john john 78 Oct 19 19:39 john
# drwx------. 3 smith smith 78 Oct 19 19:39 smith

# see the username and user-group IDs (use of -n)
ls -ln /home/
# drwx------. 16 1000 1000 4096 Dec 16 10:01 aaron
# drwx------. 4 1001 1001 13 Dec 16 13:00 jane
# drwx------. 3 1002 1002 78 Oct 19 19:39 john
# drwx------. 3 1100 1100 78 Oct 19 19:39 smith

# Print all usernames and groups IDs
id
# uid=1000(aaron) gid=1000(aaron) groups=1000(aaron),10(wheel),1005(family)
# context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023


# Print current username
whoami


# Create system account (use of --system)
# apps and daemons use system accounts
# Fro example DB or docker
sudo useradd --system <system-name>

# Example
# Lets say we created an account for john
sudo useradd john



#######################
# Account MODIFICATION
#######################

# Now we want to modify his account properties
###############################################
# e.g. change his home dir
$ sudo usermod -d /home/<new-dir-name> -m <old-name-dir>

# e.g. change his username
sudo usermod -l <new-username> <old-username>

# e.g. change his shell
sudo usermod -s /bin/<new-shell> <username>

# Disable an account without deleting it
sudo usermod -L <username>

# Enable an account
sudo usermod -U <username>

# Disable an account without deleting it
# At a specific day in the future
# Date format: YEAR-MONTH-DAY
sudo usermod -e 2021-12-10 <username>


# Disable the expiration day of an account
# just use an empty date ""
sudo usermod -e "" <username>

# Add user to a group
sudo usermod -ag <group-name> <username>



#######################
# PASSWORD MODIFICATION
#######################
# Force the user to change their password account

# change immediately
# send -1 disable the immediate password change
# d - stands for lastday
sudo chage -d 0 jane
sudo chage -d -1 jane

# change password every 30 days
# send -1 to disable the 30 days renewal password
sudo chage -M 30 jane
sudo chage -M -1 jane

# Set a warning of 2 days before
# the password will be changed
sudo chage -W 2 jane

# see when password expires
sudo chage -l jane
