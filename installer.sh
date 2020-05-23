#!/bin/bash
## WordPress Auto installer

# Root Check
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

## Start Script ##
echo 'Please make sure that your DNS for your domain has been correclty configured before continuing'
echo "This script will install WordPress only, for a web server please use my Web Server Script to install the stack"
read -p 'Press Enter to Continue'


# Creating wordpress database

echo 'Login required for SQL to create the database'
read -p 'SQL Username: ' SQLUser
read -p 'SQL Password: ' SQLPass

RanPass=$(openssl rand -base64 16)
read -p "Your random SQL Password for WordPress Database: $RanPass"


echo "
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY '$RanPass';
FLUSH PRIVILEGES;" >> commands.sql

mysql < "commands.sql"


# Installing wordpress
read -p "URL for the Wordpress site: " WordURL
read -p "Email required for Certbot SSL generation: " Email
mkdir /var/www/$WordURL
cd /tmp
curl -LO https://wordpress.org/latest.tar.gz
tar xzf latest.tar.gz
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
sudo cp -a /tmp/wordpress/. /var/www/$WordURL
sudo chown -R www-data:www-data /var/www/$WordURL

# Configuring Wordpress
cd /var/www/$WordURL
sed -i 's/database_name_here/wordpress/' wp-config.php

sed -i 's/username_here/wordpressuser/' wp-config.php

sed -i "s/password_here/${RanPass}/" wp-config.php

sed -i "/define( 'AUTH_KEY'/,/define( 'NONCE_SALT'/d" wp-config.php

tmpfile="$(mktemp)"
curl -s https://api.wordpress.org/secret-key/1.1/salt/ > ${tmpfile}
sed -i "49 r $tmpfile" wp-config.php
rm "$tmpfile"



# Configuring Nginx&CertBot
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx

wget https://pastebin.com/raw/NYZ6KjSV
mv CRtJDhCH $WordURL
mv $WordURL /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/$WordURL /etc/nginx/sites-enabled

sed -i "s/DOMAIN/${WordURL}/g" /etc/nginx/sites-enabled/$WordURL

sudo systemctl stop nginx.service

sudo certbot certonly --agree-tos --email $Email -d $WordURL --standalone

# Restarting Nginx
systemctl start nginx.service

## Completed ##

