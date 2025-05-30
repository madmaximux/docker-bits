# [OpenShot](https://openshot.org/) Video Editor is an award-winning free and
# open-source video editor for Linux, Mac, and Windows, and is dedicated to
# delivering high quality video editing and animation solutions to the world.

. ./.env
docker run -d \
  --name=openshot \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# OpenShot desktop gui.` \
  -p 3001:3001 `# OpenShot desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/openshot${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/openshot