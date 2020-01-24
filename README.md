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

## Docker
Docker bietet Produkte für os-level virtualisierung mit containern.
Container laufen als subprozess auf dem kernel.
Sie sind isoliert von anderen containern und Prozessen des os, dies funktioniert mit
cgroups und kernel namespaces welches features vom linux-kernel sind. Aus diesem Grund funktioniert
Docker am besten auf linux bassierten Betriebssystemen,
auf Mac und Windows funktioniert es auch aber mit einiges mehr overhead.

Docker bietet Tools um Container zu erstellen und zu verwalten.
Docker Cli ist das primäre Tool für Entwickler welches Entwickler verwenden. Damit kommuniziert man
mit dem Docker-Daemon. Als alternative kann man auch direkt via REST Api den Docker Daemon ansteuern.
Um einen Container zu erstellen benötigt man ein Image. Ein Image besteht meistens aus einem Baseimage,
Dependencys und der Applikation. Images können entweder gebuildet werden oder von einer Registry gepulled werden.
Die grösste Registry ist Docker hub.

## Dockerfile

Ein Dockerfile ist ein Script um Images zu erstellen.


Ablauf Dockerfile

1 Baseimage
    - Was für ein Image wird benötigt.
    - Je kleiner je besser
    - nur die notwendigsten Tools verwenden
2 Code
3 Dependency's

Ruby Docker
https://hub.docker.com/_/ruby/
`$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:2.5 ruby hello.rb`

create dockerfile for basic ruby Project
https://hub.docker.com/_/ruby/

## Docker-Compose
Docker hat seine Limitierungen da man nur einen Container aufs mal erstellen kann. Aus diesem
Grund gibt es Docker-Compose. Compose bietet die möglichkeit in via Yaml file ein Cluster von Containern
zu erstellen. Compose bietet alle funktionalitäten von Docker aber halt für viele Container und in einem File.
Dies erleichtert den Workflow von lokaler Entwicklung bis Deployment da mit einem Befehl die ganze Applikation
gestartet werden kann.

## Sicherheit
https://snyk.io/blog/10-docker-image-security-best-practices/

Wenn Docker container verwendet werden um Applikationen zu Deployen ist Sicherheit sehr relevant.
Grundsätzlich ist die Sicherheit von Docker grösstenteils abhängig von der Konfiguration.

1. Root user

  In einem Container sollte es nicht möglich sein Befehle als root auszuführen. Beim erstellen ist es
  sinnvoll Root zu nutzen da dann die Dateien im Container Benutzer Root haben. Jedoch beim starten sollte
  dann ein Nutzer mit möglichst wenig rechten genutzt werden.
1. Secrets

  Keine Secrets im Container. Beim erstellen eines Images kann es Notwendig sein Secrets zu verwenden. Diese sollten es jedoch nicht in den fertigen Container schaffen. Dies kann mit multistage Builds verhindert werden. Eine Gefahr ist auch das durch rekursives Kopieren Secrets aus dem Repo kopiert werden ohne es zu wissen. Aus diesem Grund sollte man immer sehr bewusst schauen was man kopiert.
1. Source Image

  Source Images sollte man nur aus vertrauesnwürdigen Quellen beziehen. Docker bietet die möglichkeit images zu signieren und sie zu verifizieren. Dies sollte wenn möglich gemacht werden.

#### Prerequisities

* [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [docker-compose](https://docs.docker.com/compose/install/)

#### Quellen

* https://jonnylangefeld.github.io/learning/Docker/How%2Bto%2BDocker.html
* https://codefresh.io/docker-tutorial/java_docker_pipeline/
* https://codefresh.io/docs/docs/learn-by-example/java/spring-boot-2/
* https://devopscube.com/what-is-docker/ (namespaces)
* https://nickjanetakis.com/blog/understanding-how-the-docker-daemon-and-docker-cli-work-together
* https://docs.docker.com
