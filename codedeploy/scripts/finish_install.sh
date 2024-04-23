#!/bin/bash

# Setup the various file and folder permissions for Laravel
chown -R ec2-user:ec2-user /var/www/vhosts/cicd-test
find /var/www/vhosts/cicd-test -type d -exec chmod 755 {} +
find /var/www/vhosts/cicd-test -type f -exec chmod 644 {} +

if [ -d /var/www/vhosts/cicd-test/bootstrap/cache ]; then
    chmod -R 777 /var/www/vhosts/cicd-test/bootstrap/cache
fi

sudo chmod -R 777 /var/www/vhosts/cicd-test/storage
sudo chmod -R 777 /var/www/vhosts/cicd-test/storage/logs