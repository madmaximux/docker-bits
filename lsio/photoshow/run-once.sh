ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${BASEDIR:-/volume1/docker}/photoshow/config
mkdir -p ${BASEDIR:-/volume1/docker}/photoshow/Pictures:ro
mkdir -p ${BASEDIR:-/volume1/docker}/photoshow/Thumbs
