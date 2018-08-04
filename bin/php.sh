#!/usr/bin/env bash

brew tap homebrew/homebrew-php
brew install php71 --with-argon2
brew install php71-xdebug
brew install php71-imagick
brew install php71-redis

EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig)

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid composer installer signature'
else
    php composer-setup.php --quiet

    mv composer.phar /usr/local/bin/composer
fi

rm composer-setup.php

# Laravel Valet
composer global require laravel/valet

# PHP_CodeSniffer (phpcs, phpcbf)
composer global require "squizlabs/php_codesniffer=*"
