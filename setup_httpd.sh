#!/bin/bash

# yum -y update
yum install -y httpd
wget http://<your uploaded site>/index.html
mv -f index.html /var/www/html/
systemctl start httpd

echo "end custom script" >> /root/message.txt

