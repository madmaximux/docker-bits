mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/feed2toot${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/feed2toot${DOCKERCOMPOSEDIRSUFFIX:--compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/feed2toot${DOCKERCOMPOSEDIRSUFFIX:--compose}/${DOCKERCOMPOSEFILE:-compose.yaml}