# hello-world
Just a simple apache2 docker example.

# Purpose
To demonstrate how to build a simple website in a container.

# Steps for building and running this container
    docker build -t hello-world -f ./Dockerfile .
    docker run -d -p 80:80 --name hello-world hello-world:latest
    docker stop hello-world

# Links
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

