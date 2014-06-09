#!/usr/bin/env bash

if [ ! -f tmp/mysql-installed ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/mysql-installed

    # Install mysql
    debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
    debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

    apt-get install -y mysql-server
fi
