# How to build environment

This setup helps to build raspberry pi build in an isolated environment with docker.

## Prerequisites

This repository does not have Docker environment installation script.
Therefore, you need to install Docker first.

### Install Docker

There are various methods of installing [docker], i.e. by docker script:

If you download the script, make sure you have `curl` installed:

if `curl` is not installed, run:

```{.sh}
sudo apt install curl
```

Then download and run the docker installation script:

```{.sh}
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

### Run docker without sudo

To work better with docker, without `sudo`, add your user to `docker group`.

```{.sh}
sudo usermod -aG docker <your_user>
```

Log out and log back in so that your group membership is re-evaluated.

Restart Docker

```{.sh}
  sudo systemctl daemon-reload
  sudo systemctl restart docker
```

### Build Raspberry pi image with docker

```{.sh}
.
├── Ubuntu-24.04-Dockerfile
├── README.md
├── docker-build.sh
├── docker-env.sh
├── docker-run.sh
├── setup-rpi-build.sh
```

### Set variables

Use `docker-env.sh` to set variables for your build setup.
Make sure you have created a working directory,
owned by current user, on a larger partition.

### Create a yocto-ready docker image

Run `docker-build.sh` with one argument, related to Dockerfile,
corresponding to the operating system,
for example the Dockerfile for Ubuntu version 22.04:

```{.sh}
./docker-build.sh Ubuntu-24.04-Dockerfile
```

### Run the yocto-ready docker container

```{.sh}
./docker-run.sh
```

When running, volumes are used to save the build artifacts on host.

- `{DOCKER_WORKDIR}` as the main workspace
- `{HOME}` to mount the current home user, to make available the user
    settings inside the container (ssh keys, git config, etc)
- `{SSTATE_DIR}` build cache directory.
- `{DL_DIR}` download directory.

[docker]: https://docs.docker.com/engine/install/ubuntu/ "DockerInstall/Ubuntu"
