ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rdesktop/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rdesktop/config `#optional`
