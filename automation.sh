# To update packages
sudo apt update -y

# To check if apache 2 is installed or not
dpkg -l apache2

#To check apache version and install apache2
apache2 -v
sudo apt install apache2

#To check if apache2 server is running
sudo systemctl status apache2                                        

#To check if apache2 is enabled and running
systemctl --type=service --state=running

