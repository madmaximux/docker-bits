ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/doublecommander/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/doublecommander/data
