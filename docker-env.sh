#!/bin/bash

###############################################################################
# If you want to reduce disk usage, set the SSTATE_DIR and DL_DIR to a common location.
# SSTATE_DIR: When building code, cache files will be generated here.
# DL_DIR: Resources needed for building downloaded from the internet will be stored here.
SSTATE_DIR="/srv/yocto/sstate-cache"
DL_DIR="/srv/yocto/downloads"

###############################################################################
# Select the raspberry PI version.
# raspberrypi3
# raspberrypi5
MACHINE="raspberrypi5"

###############################################################################
# Docker
DOCKER_IMAGE_TAG="${MACHINE}-yocto"
DOCKER_WORKDIR="${PWD}/docker-workdir"

###############################################################################
echo "SSTATE_DIR: ${SSTATE_DIR}"
echo "DL_DIR: ${DL_DIR}"
echo "MACHINE: ${MACHINE}"
echo "DOCKER_IMAGE_TAG: ${DOCKER_IMAGE_TAG}"
echo "DOCKER_WORKDIR: ${DOCKER_WORKDIR}"
###############################################################################