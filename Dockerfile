FROM php:8.0-apache
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libpq-dev \
    && docker-php-ext-install \
    intl \
    pdo pdo_mysql \
    && a2enmod rewrite
COPY . /var/www/html/
