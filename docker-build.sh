#!/bin/bash
#
# This script creates the yocto-ready docker image.
# The --build-arg options are used to pass data about the current user.
# Also, a tag is used for easy identification of the generated image.
#

# source the common variables
. docker-env.sh

usage() {
    echo -e ""
    echo -e "Usage: $0 [path_to_Dockerfile]\n"
}

# main

mkdir -p "${DOCKER_WORKDIR}"

# If no Dockerfile path is provided, show usage.
if [ $# -ne 1 ]
    then
        usage
    else
        docker build --tag "${DOCKER_IMAGE_TAG}" \
                     --build-arg "DOCKER_WORKDIR=${DOCKER_WORKDIR}" \
                     --build-arg "USER=$(whoami)" \
                     --build-arg "host_uid=$(id -u)" \
                     --build-arg "host_gid=$(id -g)" \
                     -f "$1" \
                     .
fi
