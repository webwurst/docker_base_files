#!/usr/bin/env python
# -*- coding: utf-8 -*-
from haproxy_helper import create_conf

def before_start(watcher, arbiter, hook_name, **kwargs):
    create_conf()
    return True