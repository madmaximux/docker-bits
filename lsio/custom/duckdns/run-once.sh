ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/duckdns/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/duckdns/config `#optional`
