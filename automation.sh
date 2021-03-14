# To update packages
sudo apt update -y

# To check if apache 2 is installed or not
dpkg -l apache2

#To check apache version and install apache2
sudo apt install apache2

#To check if apache2 server is running
sudo systemctl status apache2                                       
sudo systemctl start apache2

#To check if apache2 is enabled and running
systemctl --type=service --state=running
sudo systemctl enable apache2
sudo systemctl restart apache2

#To install aws cli 
sudo apt update
sudo apt install awscli

#To archive dynamically

myname=upgrad-saiprasad
s3_bucket=upgrad-saiprasad
timestamp=$(date '+%d%m%Y-%H%M%S')
tar cvf $myname-httpd-logs-$timestamp.tar --absolute-names  /var/log/apache2
cp $myname-httpd-logs-$timestamp.tar /tmp/
aws s3 cp /tmp/${myname}-httpd-logs-${timestamp}.tar s3://${s3_bucket}/${myname}-httpd-logs-${timestamp}.tar
