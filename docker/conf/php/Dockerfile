FROM php:8.3-fpm
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip
RUN docker-php-ext-install mbstring exif pcntl bcmath gd
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli

RUN pecl install redis && docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | \
php -- --install-dir=/usr/bin/ --filename=composer --version=2.2.1

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN curl -sL https://deb.nodesource.com/setup_21.x | bash -
RUN apt-get install -y nodejs

RUN mkdir -p /public_html
RUN chown  www-data /public_html
USER www-data
WORKDIR /public_html
