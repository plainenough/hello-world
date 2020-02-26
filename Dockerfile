FROM ubuntu:bionic

#  Setting some labels that describe my container
LABEL     org.label-schema.name="Hello World" \
          org.label-schema.description="Simple website hosted on apache" \
          org.label-schema.url="https://github.com/plainenough/slackbot.git" \
          org.label-schema.vendor="example.com" \
          org.label-schema.version="1.0.0"

#  Changing to the root user
USER root

#  Running updates and installing apache
RUN apt-get update && \
apt-get -y install apache2 git

#  Remove contents of /var/www/html
RUN rm -rf /var/www/html

#  Cloning my repo into the container
RUN git clone https://github.com/plainenough/hello-world.git /var/www/html

#  Expose a port to docker
EXPOSE 80

#  Command to execute in this container
CMD service apache2 start && tail -f /var/log/apache2/access.log
