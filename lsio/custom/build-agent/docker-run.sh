# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/build-agent for details.
. ./.env
docker run -d \
  --name=build-agent \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# Application WebUI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/build-agent/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/build-agent
