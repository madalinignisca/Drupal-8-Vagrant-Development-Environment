FROM php:7.0-cli

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd mbstring opcache pdo pdo_mysql \
    && apt-get clean

# set recommended PHP.ini settings
# see https://secure.php.net/manual/en/opcache.installation.php
RUN { \
		echo 'opcache.memory_consumption=256'; \
		echo 'opcache.interned_strings_buffer=816'; \
		echo 'opcache.max_accelerated_files=8000'; \
		echo 'opcache.revalidate_freq=60'; \
		echo 'opcache.fast_shutdown=1'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini

CMD ["php"]