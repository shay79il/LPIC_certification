# reboot
sudo systemctl reboot
sudo systemctl reboot --force
sudo systemctl reboot --force --force

# poweroff
sudo systemctl poweroff
sudo systemctl poweroff --force
sudo systemctl poweroff --force --force


# Schedule reboot / poweroff
################################
# shutdown @02:00 pm
sudo shutdown 02:00

# shutdown in 15 min
sudo shutdown +15

# reboot @02:00 pm
sudo shutdown -r 02:00

# reboot in 15 min
sudo shutdown -r +15

# Include Well message
sudo systemctl shutdown -r +15 'Scheduled restart to do an offline-backup of our database''






