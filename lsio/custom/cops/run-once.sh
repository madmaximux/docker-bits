ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/cops/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/cops/books
