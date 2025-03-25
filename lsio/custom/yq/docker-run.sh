# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/yq for details.
. ./.env
docker run -d \
  --name=yq \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 32400:32400 `# Plex WebUI` \
  -v ${BASEDIR:-/volume1/docker}/yq/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/yq
