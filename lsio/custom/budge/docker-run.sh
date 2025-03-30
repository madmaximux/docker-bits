# [Budge](https://github.com/linuxserver/budge) is an open source 'budgeting
# with envelopes' personal finance app.

. ./.env
docker run -d \
  --name=budge \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# http gui` \
  -p 443:443 `# https gui` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/budge/config:/config `# Persistent config files` \
  --restart unless-stopped \
  ghcr.io/linuxserver/budge