#!/bin/bash

###############################################################################
# Repository
# It can be changed to your own repository.
REPO_NAME="rpi-build"
GIT_REPO_URL=https://github.com/rpi-bakers/${REPO_NAME}.git

###############################################################################
# If you want to reduce disk usage, set the SSTATE_DIR and DL_DIR to a common location.
# SSTATE_DIR: When building code, cache files will be generated here.
# DL_DIR: Resources needed for building downloaded from the internet will be stored here.
SSTATE_DIR="/srv/yocto/sstate-cache"
DL_DIR="/srv/yocto/downloads"

###############################################################################
# Docker
# It can be changed to your preferred image tag and working directory.
DOCKER_IMAGE_TAG="${REPO_NAME}-yocto"
DOCKER_WORKDIR="${PWD}/docker-workdir"
DOCKER_FILE="Ubuntu-24.04-Dockerfile"

###############################################################################
echo "REPO_NAME: ${REPO_NAME}"
echo "GIT_REPO_URL: ${GIT_REPO_URL}"
echo "SSTATE_DIR: ${SSTATE_DIR}"
echo "DL_DIR: ${DL_DIR}"
echo "DOCKER_IMAGE_TAG: ${DOCKER_IMAGE_TAG}"
echo "DOCKER_WORKDIR: ${DOCKER_WORKDIR}"
echo "DOCKER_FILE: ${DOCKER_FILE}"
