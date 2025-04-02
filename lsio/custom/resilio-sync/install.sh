ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/resilio-sync${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/resilio-sync${DOCKERCOMPOSEDIRSUFFIX:-compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/resilio-sync${DOCKERCOMPOSEDIRSUFFIX:-compose}/${DOCKERCOMPOSEFILE:-compose.yaml}
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/resilio-sync${DOCKERCONFIGDIR:-}
mkdir -p ${DOCKERSTORAGEPATH:-/volume1/data}/downloads
