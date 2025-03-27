ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/piwigo/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/piwigo/gallery
