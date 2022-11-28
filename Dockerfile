FROM php:8.0-fpm-alpine
WORKDIR /var/www/

# Install Composer
COPY --from=composer:2.2 /usr/bin/composer /usr/local/bin/composer

# Install mysql drivers
RUN docker-php-ext-install pdo pdo_mysql