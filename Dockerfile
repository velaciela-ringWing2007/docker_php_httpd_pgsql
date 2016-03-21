FROM php:7-apache

# 下ごしらえ
RUN apt-get update

# 必要なものを先にinstall
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libpq-dev

# phpのconfigure時に使う予定だったもの
docker-php-ext-install ftp
# docker-php-ext-installオプションでは使用不可
# docker-php-ext-install mbregex
docker-php-ext-install mbstring
docker-php-ext-install sigchild
docker-php-ext-install soap
# docker-php-ext-installオプションでは使用不可
# docker-php-ext-install zip
# docker-php-ext-installオプションでは使用不可
# docker-php-ext-install ttf
# 親phpでインストール済み
# docker-php-ext-install zlib
# 別口でインストール
# docker-php-ext-install oci8
# 親phpでインストール済み
# docker-php-ext-install apxs2
docker-php-ext-install gd
docker-php-ext-install pdo-pgsql
docker-php-ext-install pgsql
docker-php-ext-install intl

# oci8をインストール
RUN pecl oci8


