#!/usr/bin/env bash
docker rm -f $(docker ps | grep marceen/nginx | awk {'print $1'})
