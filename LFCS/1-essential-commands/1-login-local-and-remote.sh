# login to remote host
ssh <username>@<public-ip>


# Control the system hostname
hostnamectl

# Change static-hostname
sudo hostnamectl set-hostname --static <new-hostname>

# Change transient-hostname
sudo hostnamectl set-hostname --transient <new-hostname>