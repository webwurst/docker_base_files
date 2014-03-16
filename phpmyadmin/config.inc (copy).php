<?php
$i = 1
$cfg['Servers'][$i]['auth_type'] = 'http';
$cfg['Servers'][$i]['host'] = $ENV_['MYSQL_1_PORT_3306_TCP_ADDR'];
$cfg['Servers'][$i]['connect_type'] = 'tcp'

/*
# maybe
# 	$cfg['Servers'][$i]['controlhost']
# in this container?

# http://docs.phpmyadmin.net/en/latest/config.html#cfg_Servers_relation
# mal ausprobieren.. fuer owncloud z.b.?

# http://docs.phpmyadmin.net/en/latest/config.html#cfg_ShowPhpInfo
*/