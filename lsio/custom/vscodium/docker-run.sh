# [VSCodium](https://vscodium.com/) is a community-driven, freely-licensed
# binary distribution of Microsoft’s editor VS Code.

. ./.env
docker run -d \
  --name=vscodium \
  --cap-add=IPC_LOCK \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# VSCodium desktop gui.` \
  -p 3001:3001 `# HTTPS VSCodium desktop gui.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/vscodium${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/vscodium