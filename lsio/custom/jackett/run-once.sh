ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/jackett/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/jackett/downloads
