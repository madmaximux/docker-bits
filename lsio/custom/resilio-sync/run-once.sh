ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/resilio-sync/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/resilio-sync/downloads
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/resilio-sync/sync
