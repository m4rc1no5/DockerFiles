#!/usr/bin/env bash
docker rm -f $(docker ps | grep marceen/wildfly10 | awk {'print $1'})