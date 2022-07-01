
# Install chrony
sudo apt install chrony

# Verify NTP server up and running
# synchronization of the system clock
sudo systemctl start chronyd.service
sudo systemctl enable chronyd.service
sudo systemctl status chronyd.service

# Control the system time and date
timedatectl
sudo timedatectl show


# List all time zones to choose from
timedatectl list-timezones

# set timezone
sudo timedatectl set-timezone Asia/Jerusalem

# Enable network time synchronization
sudo timedatectl set-ntp true

# Enable RTC
sudo timedatectl set-local-rtc 1

# Disable RTC
sudo timedatectl set-local-rtc 0
