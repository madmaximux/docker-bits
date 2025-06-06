# [digiKam](https://www.digikam.org/): Professional Photo Management with the
# Power of Open Source

. ./.env
docker run -d \
  --name=digikam \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder to use with reverse proxies, IE `/subfolder/`` \
  -p 3000:3000 `# optional` `# digiKam desktop gui` \
  -p 3001:3001 `# optional` `# digiKam desktop gui HTTPS` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/digikam${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/digikam