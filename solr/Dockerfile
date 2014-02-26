from circusserf_base
  
# solr-tomcat
run apt-get -y install solr-tomcat

#volume ["/etc/solr/schema.xml"]
volume ["/var/lib/solr/data"]
expose 8080 5500
cmd ["circusd", "/etc/circus.ini"]