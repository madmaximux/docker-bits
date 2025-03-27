ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/netbootxyz/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/netbootxyz/assets `#optional`
