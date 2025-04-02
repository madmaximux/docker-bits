ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/gitqlient${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/gitqlient${DOCKERCOMPOSEDIRSUFFIX:-compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/gitqlient${DOCKERCOMPOSEDIRSUFFIX:-compose}/${DOCKERCOMPOSEFILE:-compose.yaml}
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/gitqlient${DOCKERCONFIGDIR:-}
