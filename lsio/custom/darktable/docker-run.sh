# [darktable](https://www.darktable.org/) is an open source photography workflow
# application and raw developer. A virtual lighttable and darkroom for
# photographers. It manages your digital negatives in a database, lets you view
# them through a zoomable lighttable and enables you to develop raw images and
# enhance them.

. ./.env
docker run -d \
  --name=darktable \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Darktable desktop gui.` \
  -p 3001:3001 `# Darktable desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/darktable${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/darktable