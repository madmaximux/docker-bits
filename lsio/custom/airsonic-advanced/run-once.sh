ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/data/media
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/media `#optional`
