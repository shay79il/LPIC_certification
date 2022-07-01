
# Managing software
# 1) Download .deb package file from trusted site
# 2) Use of a package manager
############################################################


# 1) Download .deb package file from trusted site
wget <url-to-.deb-file>
sudo apt install ./<pkg-name>
sudo apt remove <pkg-name>

# apt command	          # the command it replaces	      function of the command
##############          ########################        ##########################

# Before any installation run these commands
sudo apt update	        # apt-get update	              Refreshes repository index
sudo apt upgrade	      # apt-get upgrade	              Upgrades all upgradable packages

# install & remove packages
sudo apt install	      # apt-get install	              Installs a package
sudo apt remove	        # apt-get remove	              Removes a package
sudo apt purge	        # apt-get purge	                Removes package with configuration
sudo apt autoremove	    # apt-get autoremove	          Removes unwanted packages

# upgrade dist
sudo apt full-upgrade	  # apt-get dist-upgrade	        Upgrades packages with auto-handling of dependencies

sudo apt search	        # apt-cache search	            Searches for the program
sudo apt show	          # apt-cache show	              Shows package details
sudo apt list	                                        # Lists packages with criteria (installed, upgradable etc)
sudo apt edit-sources	                                # Edits sources list


# Look for some utility
sudo apt search <utility-name>
# for example web server
sudo apt search 'web server'

# if we find something we like so use:
sudo apt show <pkg-name>


# Install .deb file
sudo dpkg --install [.deb file]
sudo dpkg -i [.deb file]
# Example:
# sudo dpkg --install skypeforlinux-64.deb

# Uninstall .deb file
sudo dpkg --remove [package file]