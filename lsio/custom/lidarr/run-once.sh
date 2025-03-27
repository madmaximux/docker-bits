ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/music `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lidarr/downloads `#optional`
