ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/flexget/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/flexget/data `#optional`
