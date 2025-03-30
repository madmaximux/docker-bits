ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mylar3/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mylar3/comics
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mylar3/data/downloads
