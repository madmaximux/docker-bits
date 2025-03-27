ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nextcloud/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/nextcloud/data
