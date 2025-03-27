ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nzbhydra2/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nzbhydra2/downloads `#optional`
