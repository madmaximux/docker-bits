ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/config
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/music
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/playlists
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/podcasts
mkdir -p ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/airsonic-advanced/media `#optional`
