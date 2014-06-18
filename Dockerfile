#
# VERSION 0.0.1
FROM orchardup/nginx
MAINTAINER Ryan Trauntvein <rtrauntvein@novacoast.com>
RUN apt-get update
RUN apt-get -y install git
RUN rm -rf /var/www
RUN git clone https://github.com/djdefi/fusrohdah.com.git /var/www
RUN rm -rf /var/www/.git
EXPOSE 80
CMD 'nginx'
