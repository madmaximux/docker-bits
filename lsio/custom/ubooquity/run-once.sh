ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/ubooquity/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/ubooquity/books
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/ubooquity/comics
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/ubooquity/files
