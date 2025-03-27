ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/movies `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/downloads `#optional`
