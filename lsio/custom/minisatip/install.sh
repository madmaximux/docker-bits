mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/minisatip${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/minisatip${DOCKERCOMPOSEDIRSUFFIX:--compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/minisatip${DOCKERCOMPOSEDIRSUFFIX:--compose}/${DOCKERCOMPOSEFILE:-compose.yaml}