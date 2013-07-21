#!/bin/bash
mysql -h localhost -uroot -proot -e "create database drupal;"
cd /var/www/local.drupal.org
sudo drush dl -v -d --destination=".." --drupal-project-rename="$(basename `pwd`)" -y
drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://root:root@localhost/drupal -y
drush dl devel
drush en devel -y
drush dis overlay -y
