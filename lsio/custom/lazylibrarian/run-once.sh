ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lazylibrarian/data/downloads
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/lazylibrarian/books `#optional`
