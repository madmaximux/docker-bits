ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emby/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emby/data/tvshows
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/emby/data/movies
