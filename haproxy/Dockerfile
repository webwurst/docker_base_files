from webwurst/circus-serf-base
run apt-get update

# haproxy
run apt-get -y install haproxy

run echo "ENABLED=1" > /etc/default/haproxy
# add haproxy.cfg /etc/haproxy/
add haproxy.cfg.jinja /etc/haproxy/
# add serf.json /etc/serv/

add circus_serf_agent.ini /etc/circus.d/
add circus_haproxy.ini /etc/circus.d/
add haproxy-hooks.py /usr/local/bin/
add haproxy_helper.py /usr/local/bin/
add haproxy-create-conf.py /usr/local/bin/
add serf-member-action.sh /usr/local/bin/

run chmod +x /usr/local/bin/*.sh
run chmod +x /usr/local/bin/haproxy-create-conf.py

expose 80 443 7946 7373
cmd ["circusd", "/etc/circus.ini"]