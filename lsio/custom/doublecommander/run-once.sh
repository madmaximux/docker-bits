ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/doublecommander${DOCKERCONFIGDIR:-}
mkdir -p ${DOCKERSTORAGEPATH:-/volume1/data}
