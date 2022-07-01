
########
# CRON
########

cat /etc/crontab

SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root
# For details see man 4 crontabs
# Example of job definition:
# .---------------- minute (0 - 59)
# | .------------- hour (0 - 23)
# | | .---------- day of month (1 - 31)
# | | | .------- month (1 - 12) OR jan,feb,mar,apr ...
# | | | | .---- day of week (0 - 6) (Sunday=0 or 7) OR
sun,mon,tue,wed,thu,fri,sat
# | | | | |
# * * * * * user-name command to be executed
35 6 * * * root /bin/some_command --some_option

# Examples
# Run every 15 min and every 40
15,40 * * * *

# Run every day at 2AM and 3AM and 4AM
* 2-4 * * * *

# Run every 4 hours
* /4 * * * *

# Run every 4 hours between 12am to 8am
* 0-8/4 * * * *


# How to use
##############


# and use the USER crontab with the following command
# Always use FULL path to a command
# for example:
# 35 6 * * * root /bin/some_command --some_option
select-editor # to change editor
crontab -e

# List all cron commands
crontab -l

# Remove all cron commands
crontab -r




# Alternate option to run script hourly, daily, monthly
# we can copy & paste the script (without the ".sh" extension)
# For example
sudo cp <shell-script> /etc/cron.daily
sudo chmod +rx /etc/cron.daily/<shell-script>
sudo rm /etc/cron.daily/<shell-script>


##############################################


###########
# ANACRON
###########

sudo vim /etc/anacrontab
#period in days delay in minutes  job-identifier      command
1               5                 cron.daily          nice run-parts /etc/cron.daily
7               25                cron.weekly         nice run-parts /etc/cron.weekly
@monthly        45                cron.monthly        nice run-parts /etc/cron.monthly

# Run every 3 days with delay of 10 min
3               10                test_job            /usr/bin/touch /root/anacron_created_this

# Run every week
7               10                test_job            /usr/bin/touch /root/anacron_created_this
@weekly         10                test_job            /usr/bin/touch /root/anacron_created_this

# Run every month
@monthly        10                test_job            /usr/bin/touch /root/anacron_created_this


# After editing run a test with:
anacron -T

# Run anacron NOW
# n - stands for NOW
# f - stands for FORCE
sudo anacron -n -f


##############################################

#####
# at
#####

############
# root user
############
# all can be done with root user
# by adding 'sudo' in-front of each command

# Run a command at a specific time
at 'August 20 2022'       + ENTER + <path-to-script> [--flags]
at '2:30 August 20 2022'  + ENTER + <path-to-script> [--flags]
at 'now + 30 minutes'     + ENTER + <path-to-script> [--flags]
at 'now + 3 hours'        + ENTER + <path-to-script> [--flags]
at 'now + 3 days'         + ENTER + <path-to-script> [--flags]
at 'now + 3 weeks'        + ENTER + <path-to-script> [--flags]
at 'now + 3 months'       + ENTER + <path-to-script> [--flags]

# list all 'at' commands
atq

# Output for example see the '20' id of the command to run
20 Wed Nov 17 08:30:00 2021 a aaron

# display the command to be run
# we use the '20' id of the command to run
at -c 20

# remove a schedule command using its ID
atrm 20


# See the cron log OUTPUT
#########################
# 1
grep CRON /var/log/syslog

# 2
cat /var/log/cron.log | grep CMD

# 3
# if we add pipe of
# | systemd-cat --identifier=<script-log-identifier>
# we can use journalctl to see the output log of that command script
35 6 * * * root /bin/some_command --some_option | systemd-cat --identifier=<script-log-identifier>
journalctl | grep <script-log-identifier> # look for the logs
