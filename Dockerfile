FROM php:8-0-apache
WORKDIR /var/www/html

COPY src/ src

EXPOSE 80