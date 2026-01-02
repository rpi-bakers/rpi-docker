#!/bin/bash

# source the common variables
. docker-env.sh

git clone https://github.com/rpi-bakers/rpi-build.git "${DOCKER_WORKDIR}/rpi-build"

cd "${DOCKER_WORKDIR}/rpi-build" || exit

# replace MACHINE="raspberrypiX" with the value from docker-env.sh
sed -i "s|^MACHINE=\".*\"|MACHINE=\"${MACHINE}\"|g" env.sh

source setup.sh
