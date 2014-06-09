#!/usr/bin/env bash

if [ ! -f tmp/php-installed ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/php-installed

    # Install php
    apt-get install -y php5-common php5-cli php5-fpm php5-mysql php5-json php5-mcrypt php5-gd
fi
