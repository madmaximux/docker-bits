ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/wikijs/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/wikijs/data
