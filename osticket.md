Prerequisites

    A server running Ubuntu 22.04.
    A valid domain name is pointed to your server IP.
    A root password is configured on the server.

Install Apache, MariaDB, and PHP

First, you will need to install the Apache web server, MariaDB, PHP, and other PHP extensions to your server. You can install all the packages using the following command.

apt install apache2 mariadb-server php libapache2-mod-php php-mysql php-cgi php-fpm php-cli php-curl php-gd php-imap php-mbstring php-pear php-intl php-apcu php-common php-bcmath -y

Once all the packages are installed, start and enable the Apache and MariaDB service using the following command.

systemctl start apache2
systemctl enable apache2
systemctl start mariadb
systemctl enable mariadb

Create a Database for osTicket

First, secure the MariaDB installation with the following command.

mysql_secure_installation

Answer all the questions to set a MariaDB root password and secure the installation:

Enter current password for root (enter for none):
OK, successfully used password, moving on...

Set root password? [Y/n] Y
New password:
Re-enter new password:
Password updated successfully!

Remove anonymous users? [Y/n] Y
Disallow root login remotely? [Y/n] Y
Remove test database and access to it? [Y/n] Y
Reload privilege tables now? [Y/n] Y

Next, log in to the MariaDB shell with the following command.

mysql -u root -p

Once logged in, create a database and user for osTicket with the following command.

MariaDB [(none)]> CREATE DATABASE osticket;
MariaDB [(none)]> CREATE USER 'osticket'@'localhost' IDENTIFIED BY 'securepassword';

Next, grant all the privileges to the osTicket database with the following command.

MariaDB [(none)]> GRANT ALL PRIVILEGES ON osticket.* TO osticket@localhost IDENTIFIED BY "securepassword";

Next, flush the privileges and exit from the MariaDB shell with the following command.

MariaDB [(none)]> FLUSH PRIVILEGES;
MariaDB [(none)]> EXIT;

Once you are done, you can proceed to the next step.
Download osTicket

First, download the latest version of osTicket with the following command.

wget https://github.com/osTicket/osTicket/releases/download/v1.17.2/osTicket-v1.17.2.zip

Once the osTicket is downloaded, create a directory of osTicket and extract the downloaded file inside that directory.

mkdir /var/www/html/osticket
unzip osTicket-v1.17.2.zip -d /var/www/html/osticket

Next, change the ownership and permission of the osTicket directory with the following command:

chown -R www-data:www-data /var/www/html/osticket
chmod -R 755 /var/www/html/osticket

Now, rename the osTicket sample configuration file using the command given below:

mv /var/www/html/osticket/upload/include/ost-sampleconfig.php /var/www/html/osticket/upload/include/ost-config.php

Once you are finished, you can proceed to the next step.
Create Apache Virtual Host

Next, you will need to create an Apache virtual host configuration file for osTicket. You can create it with the following command.

nano /etc/apache2/sites-available/osticket.conf

Add the following lines:

<VirtualHost *:80>
        ServerName osticket.example.com
        ServerAdmin admin@localhost
        DocumentRoot /var/www/html/osticket/upload

        <Directory /var/www/html/osticket/upload>
                Require all granted
                Options FollowSymlinks
                AllowOverride All
        </Directory>

        ErrorLog ${APACHE_LOG_DIR}/osticket.error.log
        CustomLog ${APACHE_LOG_DIR}/osticket.access.log combined
</VirtualHost>

Save and close the file when you are done. Then, activate the osTicket virtual host and enable the Apache rewrite module with the following command:

a2ensite osticket.conf
a2enmod rewrite

Next, restart the Apache service to apply the configuration changes:

systemctl restart apache2

You can check the Apache status with the following command.

systemctl status apache2

You should get the following output.

? apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2022-12-21 07:20:15 UTC; 3s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 62019 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 62023 (apache2)
      Tasks: 6 (limit: 2238)
     Memory: 15.4M
        CPU: 42ms
     CGroup: /system.slice/apache2.service
             ??62023 /usr/sbin/apache2 -k start
             ??62024 /usr/sbin/apache2 -k start
             ??62025 /usr/sbin/apache2 -k start
             ??62026 /usr/sbin/apache2 -k start
             ??62027 /usr/sbin/apache2 -k start
             ??62028 /usr/sbin/apache2 -k start

Dec 21 07:20:15 ubuntu2204 systemd[1]: apache2.service: Deactivated successfully.
Dec 21 07:20:15 ubuntu2204 systemd[1]: Stopped The Apache HTTP Server.
Dec 21 07:20:15 ubuntu2204 systemd[1]: Starting The Apache HTTP Server...
