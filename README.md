# Docker

## Aufbau

Docker CLI
Docker Daemon

https://nickjanetakis.com/blog/understanding-how-the-docker-daemon-and-docker-cli-work-together

You could say a registry has many repositories and a repository has many different versions of the same image which are individually versioned with tags.

* A Dockerfile is a recipe for creating Docker images
* A Docker image gets built by running a Docker command (which uses that Dockerfile)
* A Docker container is a running instance of a Docker image


https://docs.docker.com

## Anwendung
CLI oder Compose

The docker cli is used when managing individual containers on a docker engine. It is the client command line to access the docker daemon api.

The docker-compose cli can be used to manage a multi-container application. It also moves many of the options you would enter on the docker run cli into the docker-compose.yml file for easier reuse. It works as a front end "script" on top of the same docker api used by docker, so you can do everything docker-compose does with docker commands and a lot of shell scripting. See this documentation on docker-compose for more details.


https://jonnylangefeld.github.io/learning/Docker/How%2Bto%2BDocker.html


## Docker

#### Prerequisities

* [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [docker-compose](https://docs.docker.com/compose/install/)

### Theorie

### Übungen

#### Quellen

* https://codefresh.io/docker-tutorial/java_docker_pipeline/
* https://codefresh.io/docs/docs/learn-by-example/java/spring-boot-2/
