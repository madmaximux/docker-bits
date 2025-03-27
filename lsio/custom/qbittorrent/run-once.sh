ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qbittorrent/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qbittorrent/downloads `#optional`
