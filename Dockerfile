FROM ubuntu:bionic
MAINTAINER derrickwalton

USER root
RUN apt-get update && \
apt-get -y install apache2 git
RUN rm -rf /var/www/html
RUN git clone https://github.com/plainenough/hello-world.git /var/www/html

EXPOSE 80
CMD service apache2 start && tail -f /var/log/apache2/access.log


