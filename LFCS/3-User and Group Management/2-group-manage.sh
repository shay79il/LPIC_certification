
# Adding NEW user named john
sudo useradd john

# Adding NEW Group named developers
sudo groupadd <group-name>

# Adding user john to group developers
sudo gpasswd -a john <group-name>

# See which groups a user belong to
groups <username>

# Remove user john to group developers
sudo gpasswd -d john developers

# Change user INITIAL login group
sudo usermod -g developers john

# Change group-name
sudo groupmod -n programmers developers

# Delete group-name
sudo groupdel programmers

# if "programmers" is primary group to a specific user
# groupdel: cannot remove the primary group of user 'john'
# Change user INITIAL login group to its name
sudo usermod --gid john john

# and delete the group
sudo groupdel programmers














