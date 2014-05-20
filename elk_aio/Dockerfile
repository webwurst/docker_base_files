#from webwurst/circus-serf-base
from circusserf_base
run apt-get update

# java
run apt-get -y install default-jre-headless

# elasticsearch
run mkdir /opt/elasticsearch
run curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz |\
  tar -xz --directory /opt/elasticsearch --strip-components 1

# stream2es
run curl download.elasticsearch.org/stream2es/stream2es --output /usr/local/bin/stream2es
run chmod +x /usr/local/bin/stream2es

# marvel
run /opt/elasticsearch/bin/plugin --install elasticsearch/marvel/latest

# head
run /opt/elasticsearch/bin/plugin --install mobz/elasticsearch-head

# elasticsearch-gui
run /opt/elasticsearch/bin/plugin --install jettro/elasticsearch-gui

# apache
run apt-get -y install apache2
run mkdir -p /var/lock/apache2
run a2dissite 000-default
run a2enmod ssl
#run rm /var/www/index.html

# kibana
run mkdir -p /opt/kibana
run curl -L https://download.elasticsearch.org/kibana/kibana/kibana-3.0.1.tar.gz |\
  tar -xz --directory /opt/kibana --strip-components 1
  
# logstash
run mkdir /opt/logstash
run curl -L https://download.elasticsearch.org/logstash/logstash/logstash-1.4.1.tar.gz |\
  tar -xz --directory /opt/logstash --strip-components 1

# collectd
run apt-get -y install collectd

# npm
#run apt-get -y install nodejs-legacy npm
#run npm install -g bower karma gulp gulp-util

# conf
add circus_serf_agent.ini /etc/circus.d/
add circus_serf_join.ini /etc/circus.d/
add elasticsearch_circus.ini /etc/circus.d/
add kibana_apache.conf /etc/apache2/sites-enabled/
add kibana_circus.ini /etc/circus.d/
add logstash.conf /opt/logstash/
add logstash_circus.ini /etc/circus.d/
add collectd.conf /etc/collectd/
add collectd_circus.ini /etc/circus.d/


run ln -sf /proc/mounts /etc/mta

expose 9200 9300 80 443 8000
workdir /var/www
cmd ["circusd", "/etc/circus.ini"]