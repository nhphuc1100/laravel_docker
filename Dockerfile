FROM php:7.2-fpm-alpine

# Install extension
RUN docker-php-ext-install pdo pdo_mysql
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# RUN composer install --no-scripts --no-autoloader

RUN composer dump-autoload

RUN chown -R www-data:www-data /var/www