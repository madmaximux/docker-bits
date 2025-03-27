ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lazylibrarian/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lazylibrarian/downloads
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lazylibrarian/books `#optional`
