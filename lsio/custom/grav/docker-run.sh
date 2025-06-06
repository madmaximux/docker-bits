# [Grav](https://github.com/getgrav/grav/) is a Fast, Simple, and Flexible,
# file-based Web-platform.

. ./.env
docker run -d \
  --name=grav \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 80:80 `# Port for web frontend` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/grav${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/grav