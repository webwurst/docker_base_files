from webwurst/circusserf-base

# java
run apt-get -y install default-jre-headless

# elasticsearch
run mkdir /opt/elasticsearch
run curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.tar.gz | tar -xz --directory /opt/elasticsearch --strip-components 1

expose 9200 9300
cmd ["circusd", "/etc/circus.ini"]