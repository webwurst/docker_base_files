#!/usr/bin/env python
# -*- coding: utf-8 -*-

from serfclient.client import SerfClient
import socket
from jinja2 import Template
from subprocess import call
import shlex
import os
import re

# http://www.serfdom.io/docs/agent/event-handlers.html
# SERF_EVENT, SERF_SELF_NAME, SERF_TAG_${TAG}, SERF_USER_EVENT, SERF_USER_LTIME

HA_CFG = '/etc/haproxy/haproxy.cfg'
HA_CFG_TEMPL = '/etc/haproxy/haproxy.cfg.jinja'

def member_to_server(member):
    name = member['Tags'].get('name')
    role = member['Tags'].get('role')
    address = socket.inet_ntoa(member['Addr'][-4:16])
    server = {
        'name': name, 
        'role': role,
        'address': address}
    return server

def create_conf():
    # Ask serf-agent for members.
    client = SerfClient()
    members = client.connection.call('members').body['Members']
    servers = [member_to_server(member) for member in members]
    lb_servers = [s for s in servers if s['role'] == os.environ.get('LB_ROLE')]

    # if ownclouds not changed return false ?

    # Create new config with found members.
    with open(HA_CFG_TEMPL, 'r') as file:
        template = Template(file.read())
    template.stream(servers=lb_servers).dump(HA_CFG)