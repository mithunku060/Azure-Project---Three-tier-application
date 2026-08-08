apt update
apt upgrade -y
apt install apache2 -y
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php
apt update
apt install php7.1
apt install php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc
php7.1-soap php7.1-gd php7.1-xml php7.1-intl php7.1-mysql
php7.1-cli php7.1-mcrypt php7.1-ldap php7.1-zip php7.1-curl
vi /etc/php/7.1/apache2/php.ini
git clone https://github.com/SHRIDHARMUDASHI/orangehrms.git
cd orangehrms
mv orangehrm-4.0.zip /var/www
cd /var/www
apt install unzip
unzip orangehrm-4.0.zip
ll
mv orangehrm-4.0 orangehrm
chown -R www-data:www-data /var/www/orangehrm/
chmod -R 755 /var/www/orangehrm/
vi /etc/apache2/sites-available/orangehrm.conf
a2ensite orangehrm.conf
a2enmod rewrite
systemctl restart apache2.service
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.1 php7.1-mysql php7.1-cli libapache2-mod-php7.1
sudo systemctl restart apache2
vi /var/www/orangehrm/lib/confs/Conf.php
sudo tail -n 50 /var/log/apache2/error.log
clear
sudo tail -n 50 /var/log/apache2/error.log
sudo nano /etc/php/7.1/apache2/php.ini
sudo systemctl restart apache2
clear
sudo tail -n 50 /var/log/apache2/error.log
sudo nano /etc/php/7.1/apache2/php.ini
sudo systemctl restart apache2
sudo tail -n 50 /var/log/apache2/error.log
sudo nano /etc/php/7.1/apache2/php.ini
sudo systemctl restart apache2
sudo tail -n 50 /var/log/apache2/error.log
clear
sudo tail -n 50 /var/log/apache2/error.log
cd /var/www/orangehrm
sudo rm -rf symfony/cache/* symfony/log/*
sudo chmod -R 777 symfony/cache symfony/log
sudo nano /var/www/orangehrm/lib/confs/Conf.php
sudo tail -n 20 /var/log/apache2/error.log
clear
sudo tail -n 20 /var/log/apache2/error.log
clear
sudo tail -n 20 /var/log/apache2/error.log
sudo apt install php7.1-xml php7.1-mbstring php7.1-gd php7.1-curl php7.1-zip php7.1-ldap
sudo systemctl restart apache2
sudo nano /etc/php/7.1/apache2/php.ini
sudo systemctl restart apache2
sudo tail -n 20 /var/log/apache2/error.logexit
clear
