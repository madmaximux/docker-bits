ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lychee/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lychee/pictures
