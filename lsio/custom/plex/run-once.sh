ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/plex/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/plex/data/media
