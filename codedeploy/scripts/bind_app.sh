#!/bin/bash

echo "Vendor folder update through composer"
cd /var/www/vhosts/cicd-test && composer install
cd /var/www/vhosts/cicd-test && composer clearcache && composer dump-autoload
chmod -R 777 /var/www/vhosts/cicd-test/vendor

# Clear any previous cached views and optimize the application
cd /var/www/vhosts/cicd-test && php artisan cache:clear

#migrate 
cd /var/www/vhosts/cicd-test && php artisan migrate