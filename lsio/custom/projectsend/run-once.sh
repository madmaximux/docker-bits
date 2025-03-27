ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/projectsend/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/projectsend/data
