#!/usr/bin/env bash

if [ ! -d /vagrant/wp ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/wordpress-added

    # Add wordpress
    cd /vagrant
    git clone https://github.com/wordpress/wordpress.git wp
    cd /vagrant/wp
    git checkout tags/3.9.1
fi
