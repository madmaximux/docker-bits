ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/deluge/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/deluge/downloads
