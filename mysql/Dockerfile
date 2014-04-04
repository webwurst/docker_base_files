from webwurst/circus-serf-base
run apt-get update

# mysql
run apt-get -qqy install mysql-server-5.5

add my.cnf /etc/mysql/conf.d/my.cnf
# onbuild add my.cnf /etc/mysql/conf.d/my.cnf

# there were errors..
run chmod 1777 /tmp

# circus config
add circus_mysql.ini /etc/circus.d/
add mysql-start.sh /usr/local/bin/
run chmod +x /usr/local/bin/* --recursive

env SERF_ROLE mysql
volume ["/var/lib/mysql"]
cmd ["circusd", "/etc/circus.ini"]
expose 3306