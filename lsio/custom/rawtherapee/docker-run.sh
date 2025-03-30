# [RawTherapee](https://rawtherapee.com/) is a free, cross-platform raw image
# processing program!

. ./.env
docker run -d \
  --name=rawtherapee \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# RawTherapee desktop gui.` \
  -p 3001:3001 `# RawTherapee desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/rawtherapee/config:/config `# User's home directory in the container, stores program settings and files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/rawtherapee