ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/kavita/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/kavita/data `#optional`
