ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${BASEDIR:-/volume1/docker}/wireguard/config
mkdir -p ${BASEDIR:-/volume1/docker}/wireguard/lib/modules
