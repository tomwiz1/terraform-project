#!/bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
echo "<h1>Hello World!</h1>" > index.html
curl -s http://169.254.169.254/latest/dynamic/instance-identity/document > details.html
service httpd start
chkconfig httpd on