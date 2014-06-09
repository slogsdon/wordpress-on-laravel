#!/usr/bin/env bash

if [ ! -f tmp/composer-installed ]; then
    # Note that we've been here
    mkdir -p tmp
    touch tmp/composer-installed

    # Install composer
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi