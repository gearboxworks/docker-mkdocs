![mkdocs 1.0.x](https://img.shields.io/badge/mkdocs-1.0.x-green.svg)

![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# mkdocs Docker Container for Gearbox
This is the repository for the [mkdocs](https://www.mkdocs.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/gearbox).
It currently provides versions 1.0.4


## Supported tags and respective Dockerfiles

`1.0.4`, `1.0`, `latest` _([1.0.4/Dockerfile](https://github.com/gearboxworks/mkdocs-docker/blob/master/1.0.4/Dockerfile))_


## Using this container.
If you want to use this container as part of Gearbox, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/gearbox/mkdocs/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/gearbox/repository/docker/gearbox/mkdocs/]


### Setup from Docker Hub
A simple `docker pull gearbox/mkdocs` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`start`

stop - Stop a Docker container.

`stop`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`run`

shell - Run a shell, (/bin/bash), within a Docker container.

`shell`

rm - Remove the Docker container.

`rm`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/mkdocs-docker.git`


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


