
# to run as root just use sudo (if we have enough privileges :)
sudo ls /root/

# Login to root user (if we have SUDO privileges :)
sudo --login
sudo -i


# Login to root user
# and we do NOT have SUDO privileges
# But we do have root password
su -
su -l
su --log

# change root password
sudo passwd root

# unlock root account
sudo passwd --unlock root
sudo passwd -u root


# Lock ROOT account
# We lock ROOT account in order not to give users access
# to the ROOT account except those with sudo capabilities
sudo passwd --lock root
sudo passwd -l root