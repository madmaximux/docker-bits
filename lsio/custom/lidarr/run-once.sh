ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/data/media `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/data/downloads `#optional`
