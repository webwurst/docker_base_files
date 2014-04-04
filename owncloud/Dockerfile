from webwurst/apache-php-base
run apt-get update

# owncloud
run apt-get -y install anacron smbclient

#run curl -L https://github.com/owncloud/core/archive/v6.0.2.tar.gz | tar -xz -C /var/www --strip-components 1
#run curl -L https://github.com/owncloud/apps/archive/v6.0.2.tar.gz | tar -xz -C /var/www/apps --strip-components 1
#run curl -L https://github.com/owncloud/3rdparty/archive/v6.0.2.tar.gz | tar -xz -C /var/www/3rdparty --strip-components 1

run curl -L http://download.owncloud.org/community/owncloud-6.0.2.tar.bz2 | tar -xj -C /var/www --strip-components 1


add config.php /var/www/config/
#add autoconfig.php /var/www/config/
# FIXME! create config-file at first run and not at build?

run mkdir /var/www/data
run chown -R www-data:www-data /var/www
run chmod -R o-rw /var/www

# circus config
add circus_cron.ini /etc/circus.d/
add circus_owncloud.ini /etc/circus.d/
run rm /etc/circus.d/circus_apache.ini

# first run to create config.php
# start
# curl
#
# edit config.php

cmd ["circusd", "/etc/circus.ini"]
expose 80