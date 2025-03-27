ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rsnapshot/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rsnapshot/.snapshots `#optional`
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rsnapshot/data `#optional`
