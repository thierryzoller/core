echo 1] Updating from Github https://github.com/thierryzoller/core/
cd /var/www/html
sudo git stash save --keep-index
sudo git stash
sudo -u www-data git pull origin V4-release
sudo chown -R www-data:www-data /var/www/html
echo 4] Finished.
