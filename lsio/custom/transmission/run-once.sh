ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/transmission/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/transmission/data/downloads `#optional`
