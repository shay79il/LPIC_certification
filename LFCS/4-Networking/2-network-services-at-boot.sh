

# install & enable NetworkManager.service
sudo apt install NetworkManager
sudo systemctl start NetworkManager.service
sudo systemctl enable NetworkManager.service

# Check if NetworkManager is up and running
systemctl status NetworkManager.service

# Watch all NICs managed by NetworkManager.service
# NAME    UUID                                  TYPE      DEVICE
# enp0s3  fadff03a-8b55-4b81-b582-3e84b50fa8f5  ethernet  enp0s3
nmcli connection show

# Auto connect to the NAME of the NIC specified in the previous command
sudo nmcli connection modify enp0s3 autoconnect yes


#############################
# Checking network services
#############################
# We have 2 tools
# 1) netstat - old
# 2) ss      - new

# ss - socket statistics
# -l = listening
# -t = TCP connections
# -u = UDP connections
# -n = numeric values - for port numbers
# -p = processes
sudo ss -tunlp
sudo netstat -tunlp
