#!/bin/bash -x
yum update -y
yum install ruby wget -y
# Install Apache 2.4
sudo yum install httpd24 -y
echo "Apache installation complete"
# Install PHP 7.0 
# automatically includes php70-cli php70-common php70-json php70-process php70-xml
sudo yum install -y php70
sudo yum install -y php70-gd php70-imap php70-mbstring php70-mysqlnd php70-opcache php70-pecl-apcu php70-pdo
sudo service httpd start

echo "Installing Composer"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

yum install git -y
cd /var/www
git clone https://github.com/laravel/laravel.git
cd /var/www/laravel
sudo composer install
chown -R apache.apache /var/www/laravel
chmod -R 755 /var/www/laravel
cd /home/ec2-user/
wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
