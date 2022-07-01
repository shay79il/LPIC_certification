# snapshot of ALL processes on the system
ps aux

# snapshot of ALL processes on the system
# with their parents
ps faux

# snapshot of ALL processes on the system
# with their NICE(priority)
ps lax

# snapshot of specific process <PID> on the system
# u - stands for user friendly format
ps u <PID>

# snapshot of ALL processes of a specific user on the system
# u - stands for user friendly format
ps u -U <user>


# snapshot of ALL processes with specific string the system
# In this example we use "syslog"
pgrep -a syslog
pgrep -a syslog | cut -d ' ' -f 1 | xargs ps u

# priority between -20 - +19
nice -n <app-priority> <app-name>
sudo renice <PID-priority> <PID>

# current processes running on the system
top
htop


# Signals
# List all signals
kill -L

# send signal to specific process
kill -<SIG-number> <PID>
kill -<SIG-NAME> <PID>

# send signal to specific process
kill -<SIG-NAME> <PID>

# When we want to kill an annoying app but we do NOT remember its EXACT name
# by default if we don't specify the signal name or number the sent signal is
# SIGTERM - which is terminate the app gracefully
pgrep -a <app-name>
pkill -KILL <app-name>


jobs #List all running processes in the current shell session
fg # run a process in the FOREGROUND
bg # run a process in the BACKGROUND
<command> & # run a process in the BACKGROUND
# ^C - Kill a process
# ^Z - Suspend a process

# List all open files of a specific process
pgrep -a <app-name> #Get the PID
sudo lsof -p <PID>

# find which process in using a file
sudo lsof <fil-full-path>

