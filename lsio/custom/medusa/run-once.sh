ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/medusa/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/medusa/data/downloads
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/medusa/data/media
