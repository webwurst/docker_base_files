from webwurst/circus-serf-base

# circus config
add circus_serf_agent.ini /etc/circus.d/
run rm /etc/circus.d/circus_serf_join.ini

cmd ["circusd", "/etc/circus.ini"]
expose 7946 7373 5500