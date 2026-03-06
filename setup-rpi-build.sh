#!/bin/bash

# source the common variables
. docker-env.sh

git clone "${GIT_REPO_URL}" "${DOCKER_WORKDIR}/${REPO_NAME}"

./docker-build.sh "${DOCKER_FILE}"
./docker-run.sh
