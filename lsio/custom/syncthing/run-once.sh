ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/syncthing/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/syncthing/data1
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/syncthing/data2
