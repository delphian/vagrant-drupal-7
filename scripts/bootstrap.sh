#!/bin/sh
 
# Executing the following line in the shell will automatically
# download and install https://github.com/delphian/vagrant-drupal-7:
# curl -s https://raw.github.com/delphian/vagrant-drupal-7/master/scripts/bootstrap.sh

echo ""
echo "\033[0;31mGist bootstrap is installing drupal 7 on virtual box with vagrant...\033[0m"
echo "Cloning repository https://github.com/delphian/vagrant-drupal-7..."
echo ""
git clone --recursive git://github.com/delphian/vagrant-drupal-7.git
cd vagrant-drupal/scripts
./install.sh
echo "\033[0;31mGist bootstrap has finished installation.\033[0m"
