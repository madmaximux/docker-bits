ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pylon/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pylon/code `#optional`
