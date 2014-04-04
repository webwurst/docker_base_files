from webwurst/circus-serf-base
run apt-get update

# apache
run apt-get -y install apache2 libapache2-mod-xsendfile

run mkdir -p /var/lock/apache2
run a2enmod rewrite info
run rm -r /etc/apache2/sites-enabled/*
add apache.conf /etc/apache2/conf-enabled/
run rm -r /var/www/*

# php5
run apt-get -y install php5 php5-apcu php5-gd php5-json php5-intl php5-sqlite php5-curl php5-mysql php5-pgsql php5-mcrypt php5-imagick php5-mcrypt php5-xsl php-xml-parser

# workaround
# see https://bugs.launchpad.net/ubuntu/+source/php-mcrypt/+bug/1236035
run mv /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available/ || true
run php5enmod mcrypt

# debug-infos
add phpinfo.php /var/www_debug/
add server-info /var/www_debug/

# circus config
add circus_apache.ini /etc/circus.d/
add apache-hooks.py /usr/local/bin/

run chown -R www-data:www-data /var/www
run chown -R www-data:www-data /var/www_debug

env SERF_ROLE apache
cmd ["circusd", "/etc/circus.ini"]
expose 80