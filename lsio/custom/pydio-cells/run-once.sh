ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pydio-cells/config
