ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/music
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/beets/downloads
