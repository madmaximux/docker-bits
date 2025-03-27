ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/diskover/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/diskover/data
