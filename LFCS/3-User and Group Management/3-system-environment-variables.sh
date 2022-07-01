
# Print all environment variables
# Example:
# PATH=/home/aaron/.local/bin:/home/aaron/bin:/usr/local/bin:/usr/local/sbin
# :/usr/bin:/usr/sbin
# HISTSIZE=1000
# GJS_DEBUG_TOPICS=JS ERROR;JS LOG
# SESSION_MANAGER=local/unix:@/tmp/.ICE-unix/2260,unix/unix:/tmp/.ICEunix/2260
printenv
env

# Print HOME env variable
echo $HOME

# Add user env variables in the .bashrc file
# it's in the user HOME directory
echo 'export USER_ENV_VAR=VALUE' >> .bashrc
source .bashrc


# Add GLOBAL env variables to /etc/environment
# After altering the file we need to logout
# and log back in in order the env variables would apply
sudo vim /etc/environment


# Add scrips to be ran every time a user LOGIN
# Add these scripts files to /etc/profile.d/ directory
# After adding the scripts files we need to logout
# and log back in in order the scripts would apply
sudo vim /etc/profile.d/lastlogin.sh



# Adding to the /etc/skel directory files which
# We want NEW users to read and know when we create
# and add them to the system
# For example we can add README file to the skel dir
# and add a script to print its content each time a user login
sudo vim /etc/skel/README


