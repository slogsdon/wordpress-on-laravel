#!/usr/bin/env bash

if [ ! -d /vagrant/app ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/laravel-added

    # Add laravel
    cd /vagrant
    git clone https://github.com/laravel/laravel.git app
    cd /vagrant/app
    git checkout tags/v4.2.0
    composer install
fi
