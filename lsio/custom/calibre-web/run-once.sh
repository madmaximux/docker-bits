ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/calibre-web/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/calibre-web/books
