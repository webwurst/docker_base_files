from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# circus
run apt-get -y install python-pip python-dev python-gevent python-iowait python-psutil python-zmq python-tornado ipython

# from master
# waiting for next release (>0.10)

run mkdir /tmp/circus
run curl -L https://github.com/mozilla-services/circus/archive/master.tar.gz |\
  tar -xz --directory /tmp/circus --strip-components 1

run cd /tmp/circus && python setup.py install

# java
run apt-get -y install default-jre-headless

# elasticsearch
run mkdir /opt/elasticsearch
run curl -L https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz |\
  tar -xz --directory /opt/elasticsearch --strip-components 1

# stream2es
run curl download.elasticsearch.org/stream2es/stream2es --output /usr/local/bin/stream2es
run chmod +x /usr/local/bin/stream2es

# config
add circusd.ini /etc/
add circus_elasticsearch.ini /etc/circus.d/

expose 9200 9300
cmd ["circusd", "/etc/circusd.ini"]
volume ["/opt/elasticsearch/data"]