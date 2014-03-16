from webwurst/circus-serf-base

# java
run apt-get -y install default-jre-headless

# elasticsearch
run mkdir /opt/elasticsearch
run curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.tar.gz | tar -xz --directory /opt/elasticsearch --strip-components 1

add circus_elasticsearch.ini /etc/circus.d/

expose 9200 9300
cmd ["circusd", "/etc/circus.ini"]