# hello-world
Just a simple apache2 docker example.

# Purpose
To demonstrate how to build a simple website in a container.

# Steps for building this container
    docker build -t hello-world:latest -f ./Dockerfile .
    docker run -p 80:80 -n hello-world hello-world:latest

# Links
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

