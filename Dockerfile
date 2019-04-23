FROM circleci/php:7.2-browsers

RUN sudo -E apt-get update && \
    sudo -E apt-get install -y libmagickwand-dev --no-install-recommends && \
    sudo -E pecl install imagick <<'' && \
    sudo -E docker-php-ext-enable imagick

RUN sudo -E docker-php-ext-install mysqli && \
    sudo -E docker-php-ext-enable mysqli
