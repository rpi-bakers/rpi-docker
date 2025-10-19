#!/bin/bash

###############################################################################
# If you want to reduce disk usage, set the SSTATE_DIR and DL_DIR to a common location.
# SSTATE_DIR: When building code, cache files will be generated here.
# DL_DIR: Resources needed for building downloaded from the internet will be stored here.
SSTATE_DIR="/srv/yocto/sstate-cache"
DL_DIR="/srv/yocto/downloads"

###############################################################################
# Docker
DOCKER_IMAGE_TAG="rpi-yocto"
DOCKER_WORKDIR="${PWD}/docker-workdir"
