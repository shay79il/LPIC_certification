# There are 4 operating-modes
##############################
# basic.target
# multi-user.target
# graphical.target
# emergency.target
# rescue.target

# There are 2 options to set any operating-mode
# By default
# Or
# One time

# Get current boot mode
sudo systemctl get-default

# set the DEFAULT boot mode to CLI
sudo systemctl set-default multi-user.target

# set to Graphical mode but NOT by default
sudo systemctl isolate graphical.target


# set to emergency mode but NOT by default
sudo systemctl isolate emergency.target

# set to rescue mode but NOT by default
sudo systemctl isolate rescue.target


















