<?php
$CONFIG = array (
  'instanceid' => getenv("INSTANCEID"),
  'passwordsalt' => getenv("PASSWORDSALT"),
  'trusted_domains' => 
  array (
    0 => 'localhost:1080',
  ),
  'datadirectory' => '/var/www/data',
  'dbtype' => 'mysql',
  'version' => '6.0.2.2',
  'dbname' => getenv("MYSQL_1_ENV_MYSQL_DATABASE"),
  'dbhost' => getenv("MYSQL_1_PORT_3306_TCP_ADDR"),
  'dbtableprefix' => 'oc_',
  'dbuser' => getenv("MYSQL_1_ENV_MYSQL_USER"),
  'dbpassword' => getenv("MYSQL_1_ENV_MYSQL_PASSWORD"),
  # 'installed' => true,
);
