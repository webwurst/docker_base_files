from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

run apt-get update

# locales
env LC_ALL C.UTF-8

# helper
run apt-get -y install git vim curl less gzip bzip2 unzip byobu jq

# circus
run apt-get -y install python-pip python-dev
run apt-get -y install python-gevent python-iowait python-psutil python-zmq python-tornado ipython

# from master
# waiting for next release (>0.10)

run mkdir /tmp/circus
run curl -L https://github.com/mozilla-services/circus/archive/master.tar.gz |\
  tar -xz --directory /tmp/circus --strip-components 1

run cd /tmp/circus && python setup.py install

# thumbor
run apt-get -y install python-pip python-dev python-pycurl python-tornado python-crypto python-imaging
run pip install thumbor

# config
add circusd.ini /etc/
add thumbor.conf /etc/

# tidy up
run rm /tmp/* -rf

#cmd ["/usr/local/bin/thumbor", "-l", "debug"]
cmd ["circusd", "/etc/circusd.ini"]
# debug, info, warning (default)
expose 80