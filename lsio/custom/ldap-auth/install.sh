mkdir -p ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/ldap-auth${DOCKERCOMPOSEDIRSUFFIX:--compose}
cp -n ../docker-env.cfg ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/ldap-auth${DOCKERCOMPOSEDIRSUFFIX:--compose}/.env
cp -n ./docker-compose.yaml ${DOCKERCOMPOSEPATH:-/volume1/docker/projects}/ldap-auth${DOCKERCOMPOSEDIRSUFFIX:--compose}/${DOCKERCOMPOSEFILE:-compose.yaml}