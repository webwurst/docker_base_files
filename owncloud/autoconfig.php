<?php

$AUTOCONFIG = array (
  'directory' => '/var/www/data',
  'dbtype' => 'mysql',
  'dbname' => getenv("MYSQL_1_ENV_MYSQL_DATABASE"),
  'dbhost' => getenv("MYSQL_1_PORT_3306_TCP_ADDR"),
  'dbtableprefix' => 'oc_',
  'dbuser' => getenv("MYSQL_1_ENV_MYSQL_USER"),
  'dbpass' => getenv("MYSQL_1_ENV_MYSQL_PASSWORD"),
  'adminlogin' => 'admin',
  'adminpass' => 'password',
);
