ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr${DOCKERCONFIGDIR:-}
mkdir -p ${DOCKERSTORAGEPATH:-/volume1/data}/media
mkdir -p ${DOCKERSTORAGEPATH:-/volume1/data}/downloads
