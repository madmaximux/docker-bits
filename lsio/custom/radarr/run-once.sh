ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/data/media `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/data/downloads `#optional`
