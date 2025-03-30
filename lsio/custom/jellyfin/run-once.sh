ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/jellyfin/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/jellyfin/data/media
