
# Install mail server
sudo apt install postfix postfix-cbd postfix-doc

sudo systemctl start postfix
sudo systemctl enable postfix


ls /etc/postfix
