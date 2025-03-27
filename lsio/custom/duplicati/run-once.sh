ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/duplicati/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/duplicati/backups
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/duplicati/source
