ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bazarr/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bazarr/data/media `#optional`
