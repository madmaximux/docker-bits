# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/socket-proxy for details.
. ./.env
docker run -d \
  --name=socket-proxy \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/socket-proxy/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/socket-proxy
