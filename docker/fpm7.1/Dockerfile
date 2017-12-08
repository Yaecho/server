FROM php:5.6-fpm

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
		libxml2-dev \
	  --no-install-recommends && apt-get clean && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
		&& docker-php-ext-install -j$(nproc) mysqli pdo_mysql \
		opcache zip bcmath shmop sockets soap
