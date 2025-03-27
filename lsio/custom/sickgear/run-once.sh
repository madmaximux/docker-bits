ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/tv
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear/downloads
