ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/smokeping/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/smokeping/data
