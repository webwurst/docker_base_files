#!/usr/bin/env bash

#serf join ${SERF_1_PORT_7946_TCP_ADDR}:${SERF_1_PORT_7946_TCP_PORT}
exec /usr/lib/jvm/default-java/bin/java -Djava.util.logging.config.file=/var/lib/tomcat6/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC -Djava.endorsed.dirs=/usr/share/tomcat6/endorsed -classpath /usr/share/tomcat6/bin/bootstrap.jar -Dcatalina.base=/var/lib/tomcat6 -Dcatalina.home=/usr/share/tomcat6 -Djava.io.tmpdir=/tmp/tomcat6-tomcat6-tmp org.apache.catalina.startup.Bootstrap start