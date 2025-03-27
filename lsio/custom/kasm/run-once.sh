ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/kasm/opt
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/kasm/profiles `#optional`
