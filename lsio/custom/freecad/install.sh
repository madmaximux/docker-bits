mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/freecad${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/freecad${DOCKERCOMPOSEDIRSUFFIX:--compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/freecad${DOCKERCOMPOSEDIRSUFFIX:--compose}/${DOCKERCOMPOSEFILE:-compose.yaml}