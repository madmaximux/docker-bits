ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nzbget/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nzbget/data/downloads `#optional`
