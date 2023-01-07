#!/bin/bash
EC2_INSTANCE_ID=$(curl -s http://54.208.234.6/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://54.208.234.6/latest/meta-data/placement/availability-zone)
sed -i "s/is deployed/is deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /var/www/html/index.html
chmod 664 /var/www/html/index.html