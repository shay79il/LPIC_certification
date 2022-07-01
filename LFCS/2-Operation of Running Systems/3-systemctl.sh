# list all services in the system
sudo systemctl list-units --type=service --all
sudo systemctl list-units --type=service --state=inactive
sudo systemctl list-units --type=service --state=active

# example
# Check status of sshd.service
sudo systemctl status <service-name>.service

# List dependencies of a service
sudo systemctl list-dependencies <service-name>.service

# Check status of a service
sudo systemctl status   <service-name>.service

# change status of a service
sudo systemctl start    <service-name>.service
sudo systemctl stop     <service-name>.service
sudo systemctl restart  <service-name>.service
sudo systemctl reload   <service-name>.service

sudo systemctl reload-or-restart <service-name>.service

# change DEFAULT status of a service on boot
sudo systemctl is-enabled <service-name>.service
sudo systemctl disable    <service-name>.service
sudo systemctl enable     <service-name>.service

# change DEFAULT status of a service on boot
# AND START the service no
sudo systemctl enable --now  <service-name>.service

# For an annoying service which wont die(!!)
# Just use
sudo systemctl mask  <service-name>.service
sudo systemctl unmask  <service-name>.service


# reload units
sudo systemctl daemon-reload

# Query the Behavior of System Services
# In this example it's apache2.service
sudo systemctl cat apache2.service

# Modify the Behavior of System Services
# override with specific values
sudo systemctl edit apache2.service


# Modify the Behavior of System Services
# --full - stands for coping the FULL content for change
sudo systemctl edit --full apache2.service

# remove any changes
sudo rm -rf /etc/systemd/system/<service-name>.service.d/

# Return to default configuration
sudo systemctl revert apache2.service












