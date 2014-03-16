#!/usr/bin/env bash
set -e

chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user mysql > /dev/null

echo '---- finished: mysql_install_db --user mysql'

MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-""}
MYSQL_DATABASE=${MYSQL_DATABASE:-""}
MYSQL_USER=${MYSQL_USER:-""}
MYSQL_PASSWORD=${MYSQL_PASSWORD:-""}

tfile=`mktemp`
if [[ ! -f "$tfile" ]]; then
return 1
fi

cat << EOF > $tfile
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
UPDATE user SET password=PASSWORD("$MYSQL_ROOT_PASSWORD") WHERE user='root';
EOF

if [[ $MYSQL_DATABASE != "" ]]; then
echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` CHARACTER SET utf8 COLLATE utf8_general_ci;" >> $tfile

    if [[ $MYSQL_USER != "" ]]; then
echo "GRANT ALL ON \`$MYSQL_DATABASE\`.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> $tfile
    fi
fi

/usr/sbin/mysqld --bootstrap --verbose=0 < $tfile
rm -f $tfile

echo '---- finished: /usr/sbin/mysqld --bootstrap --verbose=0 < $tfile'

# FIXME! this should be done until success? in the background.
# or so.
# maybe just change tag here. if agent already joined.
#serf join ${SERF_1_PORT_7946_TCP_ADDR}:${SERF_1_PORT_7946_TCP_PORT}
# -replay
exec /usr/sbin/mysqld