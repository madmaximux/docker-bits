ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mstream/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mstream/data/media
