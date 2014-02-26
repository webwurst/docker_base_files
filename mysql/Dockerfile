from webwurst/circusserf-base

# mysql
run apt-get -qqy install mysql-server-5.5

add my.cnf /etc/mysql/conf.d/my.cnf
# onbuild add my.cnf /etc/mysql/conf.d/my.cnf

# there were errors..
run chmod 1777 /tmp

volume ["/var/lib/mysql"]
env SERF_ROLE mysql
expose 3306
cmd ["circusd", "/etc/circus.ini"]