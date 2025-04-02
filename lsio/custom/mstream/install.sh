ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/mstream${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/mstream${DOCKERCOMPOSEDIRSUFFIX:-compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/mstream${DOCKERCOMPOSEDIRSUFFIX:-compose}/${DOCKERCOMPOSEFILE:-compose.yaml}
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mstream${DOCKERCONFIGDIR:-}
mkdir -p ${DOCKERSTORAGEPATH:-/volume1/data}/media
