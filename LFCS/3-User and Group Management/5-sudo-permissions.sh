################################
# Give 'sudo' power to users
################################

# To add admin permissions to a user
# edit the /etc/sudoers with the following:
sudo visudo

## Allows people in group wheel to run all commands
# who           - indicates user/group
# host          - indicates servers host names, IPs
# run_as_user   - indicates list of usernames
# commands_list - indicates list of commands the user/group can run
%<who> <host>=<run_as_user> <commands_list>

# Examples

# Give trinity user to run ANY sudo command
# used with 'sudo visudo'
%trinity ALL=(ALL) ALL

# Give developer group to run ANY sudo command
# used with 'sudo visudo'
%developer ALL=(ALL) ALL

# give trinity the option to run 'sudo ls'
sudo -u trinity ls /home/trinity


# Give trinity user to run sudo command only on
# /bin/ls, /bin/stat
# used with 'sudo visudo'
%trinity ALL=(ALL) /bin/ls, /bin/stat

# try as user trinity
# sudo ls             # run OK
# sudo stat /bin      # run OK

# sudo echo "Test passed?" # run NOT OK :)
# Sorry, user trinity is not allowed to execute '/bin/echo Test passed?' as root on LFCS-CentOS


