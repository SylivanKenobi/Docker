# Docker

## Aufbau

Docker CLI
Docker Daemon

https://nickjanetakis.com/blog/understanding-how-the-docker-daemon-and-docker-cli-work-together

You could say a registry has many repositories and a repository has many different versions of the same image which are individually versioned with tags.

* A Dockerfile is a recipe for creating Docker images
* A Docker image gets built by running a Docker command (which uses that Dockerfile)
* A Docker container is a running instance of a Docker image
