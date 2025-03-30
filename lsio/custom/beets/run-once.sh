ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/data/media
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/data/downloads
