ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pyload-ng/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/pyload-ng/downloads
