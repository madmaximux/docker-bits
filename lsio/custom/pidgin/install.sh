mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/pidgin${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/pidgin${DOCKERCOMPOSEDIRSUFFIX:--compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/pidgin${DOCKERCOMPOSEDIRSUFFIX:--compose}/${DOCKERCOMPOSEFILE:-compose.yaml}