FROM debian:buster

RUN 	apt-get update
RUN 	apt-get -y upgrade
RUN	apt-get install -y \
	nginx \
	openssl \
	vim \
	php7.3-fpm \
	mariadb-server \
	php-mysql \
	wget \
	php-mbstring \
	php-curl

COPY	./srcs/run.sh ./
COPY	./srcs/default ./tmp
COPY	./srcs/wp-config.php ./tmp
COPY	./srcs/config.inc.php ./tmp

CMD	bash run.sh
