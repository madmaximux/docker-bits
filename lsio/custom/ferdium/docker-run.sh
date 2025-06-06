# [Ferdium](https://ferdium.org/) is a desktop app that helps you organize how
# you use your favourite apps by combining them into one application.

. ./.env
docker run -d \
  --name=ferdium \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Ferdium desktop gui.` \
  -p 3001:3001 `# Ferdium desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/ferdium${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/ferdium