#!/usr/bin/env python
from subprocess import call

def before_start(watcher, arbiter, hook_name, **kwargs):
    # FIXME! maybe just call apache-hook-before-start.sh if exists?
    call('chown -R www-data:www-data /var/www'.split(' '))
    call('chmod -R o-rw /var/www'.split(' '))
    return True