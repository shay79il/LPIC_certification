
# install WebServer Apache - httpd
# By default httpd listen on port 80
sudo apt install apache2

#check if th the service is running
sudo systemctl status apache2


# apache2 configuration files
# Main config
sudo vi /etc/apache2/apache2.conf
sudo vi /etc/apache2/ports.conf

# sites config
sudo vi /etc/apache2/sites-available/000-default.conf
sudo vi /etc/apache2/sites-available/default-ssl.conf

# modules config
sudo ll /etc/apache2/mods-available/




# for every change we do to conf file
# we should use the following commands
sudo apachectl configtest
sudo systemctl restart apache2




