ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/davos/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/davos/download
