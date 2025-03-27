ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qdirstat/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/qdirstat/data
