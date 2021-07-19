FROM php:7.4-fpm-alpine

WORKDIR /var/www/html
# Install extensions
RUN docker-php-ext-install pdo pdo_mysql
#RUN chmod +x  /usr/local/bin/*
RUN chown -R www-data:www-data /var/www
RUN chmod -R 755 /var/www/html/storage