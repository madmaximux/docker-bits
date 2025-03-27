ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emulatorjs/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emulatorjs/data
