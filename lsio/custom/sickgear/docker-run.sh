# [SickGear](https://github.com/sickgear/sickgear) provides management of TV
# shows and/or Anime, it detects new episodes, links downloader apps, and more..
# For more information on SickGear visit their website and check it out:
# https://github.com/SickGear/SickGear

. ./.env
docker run -d \
  --name=sickgear \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8081:8081 `# will map the container's port 8081 to port 8081 on the host` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickgear${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/media:${DOCKERMOUNTPATH:-/mnt/data}/media \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/downloads:${DOCKERMOUNTPATH:-/mnt/data}/downloads \
  --restart unless-stopped \
  ghcr.io/linuxserver/sickgear