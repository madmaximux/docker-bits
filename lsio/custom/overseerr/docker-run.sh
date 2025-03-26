# [Overseerr](https://overseerr.dev/) is a request management and media
# discovery tool built to work with your existing Plex ecosystem.

. ./.env
docker run -d \
  --name=overseerr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 5055:5055 `# Port for Overseerr's web interface.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/overseerr/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/overseerr
