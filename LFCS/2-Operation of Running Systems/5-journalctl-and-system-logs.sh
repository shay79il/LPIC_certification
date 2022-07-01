
# The place of all system logs
ll /var/log


# online watch over ssh logins
tail -F /var/log/


# view logs by service (unit)
# List all services
sudo systemctl list-units --type service --all

# u - stands for unit(service)
journalctl -u <service.name>

# print all logs from all sources
journalctl

# print all logs from all sources
# e - stands for end of the journal
journalctl -e

# print all logs from all sources
# f - stands for follow all NEW logs
journalctl -f

# print all logs from all sources
# p - stands for priority
# 1-alert 2-crit 3-debug 4-emerg 5-err 6-info 7-notice 8-warning
journalctl -p <1-7>

# print all logs from all sources
# g - stands for grep
journalctl -g <string to search for>

# print all logs from all sources
# S - stands for since
journalctl -S <time i.e. 02:00>

# print all logs from all sources
# S - stands for since
# U - stands for until
journalctl -S 02:00 -U 03:00
journalctl -S '2021-11-16 12:02:55'

# Combination
# print all logs with
# p - priority err
# S - between '2021-11-16 12:02:55' to '2021-11-16 13:02:55'
# g - grep - which contains the string stack
journalctl -p err -S '2021-11-16 12:02:55' -U '2021-11-16 13:02:55' -g stack


# print all logs from all sources
# b 0 - stands for current boot
# b -1 - stands for previous boot
journalctl -b -1


