![Gearbox](https://raw.githubusercontent.com/gearboxworks/gearboxworks.github.io/master/assets/images/gearbox-logo.png)


# mkdocs Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [mkdocs](unknown) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mkdocs?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mkdocs) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mkdocs?sort=semver) [![release-state](https://github.com/gearboxworks/docker-mkdocs/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mkdocs/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [mkdocs](unknown) | ![mkdocs](https://img.shields.io/badge/mkdocs-1.0.4-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mkdocs/1.0.4) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mkdocs/1.0.4) | _([`1.0.4`, `1.0`, `latest`](https://github.com/gearboxworks/docker-mkdocs/blob/master/1.0/DockerfileRuntime))_ |


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/mkdocs-docker.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 2: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/mkdocs` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name mkdocs-latest --restart unless-stopped --network gearboxnet gearbox/mkdocs:latest`

### Stopping
stop - Stop a Docker container.

`docker stop mkdocs-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm mkdocs-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name mkdocs-latest --network gearboxnet gearbox/mkdocs:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name mkdocs-latest -i -t --network gearboxnet gearbox/mkdocs:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

```
SSH_PORT="$(docker port mkdocs-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

