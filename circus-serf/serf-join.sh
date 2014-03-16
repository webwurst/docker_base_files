#!/usr/bin/env bash

# FIXME! Use Python/serfclient

while true; do
  serf join -replay ${SERF_1_PORT_7946_TCP_ADDR}:${SERF_1_PORT_7946_TCP_PORT}
  rc=$?
  if [[ $rc == 0 ]] ; then
    exit 0
  fi
  sleep 2
done