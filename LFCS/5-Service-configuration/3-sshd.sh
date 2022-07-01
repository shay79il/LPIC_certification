# config sshd
# option to ssh through specific port (not only 22)
# set address family to IPv4 or IPv6
# permit root login ETC...
# ? man sshd_config
sudo vi /etc/ssh/sshd_config



# configure ssh user@server-IP to login
# ? man ssh_config
cat <<EOF | sudo tee -a ~/.ssh/config
Host <Name>
  HostName <host-IP>
  Port 22
  User <userName-on-server>
EOF

# set permissions
chmod 600 ~/.ssh/config

# login
ssh <Name>

##################################################

# ssh login with ONLY keys and NO password

# create new key
# we 2 files
# id_rsa      - private key
# id_rsa.pub  - public key
ssh-keygen

# in order to login with ONLY keys and NO password
# we should only copy the public-key to the server we want to login
# the following command will copy the public key we just created
# to the server we want to login without password
# it will be in the file ~/.ssh/authorized_keys
# !if the previous command id NOT available
# !just copy and paste the content of the public key
# !we just created to ~/.ssh/authorized_keys on the server
# !chmod 600 ~/.ssh/authorized_keys
ssh-copy-id <user>@<server-IP>


# Each time we login to a new server using ssh
# we have a massage to save the fingerprint of that server
# when we hit yes the fingerprint saved to the file
# ~/.ssh/known_hosts  on our host
