#!/usr/bin/env python
from subprocess import call
import os
from time import sleep

# FIXME!
# better use https://pypi.python.org/pypi/serfclient
# FIXME!
# check if set-tags successful.

def after_start(watcher, arbiter, hook_name, **kwargs):
    # sleep(2)
    name = os.environ.get('SELF_NAME')
    call("serf tags -set role={0} -set name={1}".format(watcher.name, name).split(" "))
    return True

def before_stop(watcher, arbiter, hook_name, **kwargs):
    call("serf tags -delete role -delete name".split(" "))
    return True