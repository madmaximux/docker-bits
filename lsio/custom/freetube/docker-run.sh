# [FreeTube](https://freetubeapp.io/) is a feature-rich and user-friendly
# YouTube client with a focus on privacy.

. ./.env
docker run -d \
  --name=freetube \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# FreeTube desktop gui.` \
  -p 3001:3001 `# HTTPS FreeTube desktop gui.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/freetube${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/freetube