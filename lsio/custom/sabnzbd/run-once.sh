ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/downloads `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sabnzbd/incomplete-downloads `#optional`
