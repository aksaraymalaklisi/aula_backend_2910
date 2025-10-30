FROM php:8.4-fpm-alpine

# Instalar dependências do sistema
RUN apk add --no-cache \
    git \
    curl \
    libxml2-dev \
    libzip-dev \
    oniguruma-dev \
    autoconf \
    g++ \
    make

# Instalar extensões do PHP
RUN docker-php-ext-install pdo_mysql zip exif pcntl

# Instalar o Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configurar o diretório de trabalho
WORKDIR /var/www/html

# Expor a porta do PHP-FPM
EXPOSE 9000

CMD ["php-fpm"]