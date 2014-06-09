#!/usr/bin/env bash

if [ ! -f tmp/nginx-installed ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/nginx-installed

    # Install nginx
    sudo apt-get install -y nginx
fi
