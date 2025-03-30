ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr/data `#optional`
