
echo ==================================== >> /var/www/html/log/gireset.log
echo 1. Updating from Git >> /var/www/html/log/gireset.log
cd /var/www/html
#sudo git add -A >> /var/www/html/log/gireset.log
sudo git stash save --keep-index >> /var/www/html/log/gireset.log
#sudo git stash >> /var/www/html/log/gireset.log
sudo -u www-data git pull origin V4-release >> /var/www/html/log/gireset.log
sudo chown -R www-data:www-data /var/www/html >> /var/www/html/log/gireset.log
sudo chmod +x update.sh
sudo chmod +x update.sh
sudo chmod +x update.sh
echo 2. Finished. >> /var/www/html/log/gireset.log
echo ==================================== >> /var/www/html/log/gireset.log
