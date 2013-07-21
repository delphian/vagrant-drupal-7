#!/bin/bash
# This script will be executed inside the virtual machine via submodule vagrant/install.sh

# Create the drupal database.
mysql -h localhost -uroot -proot -e "create database drupal;"
cd /var/www/local.drupal.org
# Download drupal into the current directory.
sudo drush dl -v -d --destination=".." --drupal-project-rename="$(basename `pwd`)" -y
# Install drupal.
drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://root:root@localhost/drupal -y
# Download extra contrib modules and disable annoying core modules.
drush dl devel, module_filter
drush en devel, module_filter -y
drush dis overlay -y
