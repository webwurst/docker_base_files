from webwurst/circus-serf-base
run apt-get update

# solr-tomcat
run apt-get -y install solr-tomcat

# circus config
add circus_solr.ini /etc/circus.d/
#add solr-start.sh /usr/local/bin/
#run chmod +x /usr/local/bin/*

#volume ["/etc/solr/schema.xml"]
volume ["/var/lib/solr/data"]
cmd ["circusd", "/etc/circus.ini"]
expose 8080 5500