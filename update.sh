#!/bin/bash
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo \n >> /var/www/html/log/gitreset.log
echo Action : "$dt" >> /var/www/html/log/gitreset.log
echo ==================================== >> /var/www/html/log/gitreset.log
echo \n >> /var/www/html/log/gitreset.log
echo 1. Manually Updating from Git >> /var/www/html/log/gitreset.log
cd /var/www/html
#sudo git add -A >> /var/www/html/log/gireset.log
sudo git stash save --keep-index >> /var/www/html/log/gitreset.log
#sudo git stash >> /var/www/html/log/gireset.log
sudo -u www-data git pull origin V4-release >> /var/www/html/log/gitreset.log
sudo chown -R www-data:www-data /var/www/html >> /var/www/html/log/gitreset.log
sudo chmod +x update.sh >> /var/www/html/log/gitreset.log
sudo chmod +x wifion.sh >> /var/www/html/log/gitreset.log
sudo chmod +x wifioff.sh >> /var/www/html/log/gitreset.log
echo \n >> /var/www/html/log/gitreset.log
echo 2. Finished. >> /var/www/html/log/gitreset.log
echo ==================================== >> /var/www/html/log/gitreset.log
