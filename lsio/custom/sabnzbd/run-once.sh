ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/data/downloads `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/data/downloads `#optional`
