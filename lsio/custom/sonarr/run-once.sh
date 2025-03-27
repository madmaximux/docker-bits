ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr/tv `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr/downloads `#optional`
