from webwurst/apache-php-base
run apt-get update

# phpmyadmin
run curl -L https://sourceforge.net/projects/phpmyadmin/files/phpMyAdmin/4.1.8/phpMyAdmin-4.1.8-english.tar.gz/download | tar -xz -C /var/www --strip-components 1

add config.inc.php /var/www/
add circus_phpmyadmin.ini /etc/circus.d/
run rm /etc/circus.d/circus_apache.ini

run chown -R www-data:www-data /var/www
run chmod -R o-rw /var/www

env SERF_ROLE phpmyadmin
cmd ["circusd", "/etc/circus.ini"]
expose 80