FROM php:7-apache

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list
RUN echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list
RUN apt-get install -y wget && wget https://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg
RUN apt-get update
RUN apt-get install -y php7.0-mysql
RUN docker-php-ext-install pdo_mysql