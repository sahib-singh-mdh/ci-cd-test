#!/bin/bash

echo 'before install step'

rm -rf /var/www/vhosts/cicd-test/*
rm -rf /var/www/vhosts/cicd-test/.env*
rm -rf /var/www/vhosts/cicd-test/.git*
rm -rf /var/www/vhosts/cicd-test/.settings*
rm -rf /var/www/vhosts/cicd-test/.buildpath
rm -rf /var/www/vhosts/cicd-test/.project