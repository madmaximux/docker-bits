ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/data/media
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/data/downloads
