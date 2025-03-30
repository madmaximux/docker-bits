ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickchill/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickchill/data `#optional`
