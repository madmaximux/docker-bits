# [Sonarr](https://sonarr.tv/) (formerly NZBdrone) is a PVR for usenet and
# bittorrent users. It can monitor multiple RSS feeds for new episodes of your
# favorite shows and will grab, sort and rename them. It can also be configured
# to automatically upgrade the quality of files already downloaded when a better
# quality format becomes available.

. ./.env
docker run -d \
  --name=sonarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8989:8989 `# The port for the Sonarr web interface` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sonarr${DOCKERCONFIGDIR:-}:/config \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/media:${DOCKERMOUNTPATH:-/mnt/data}/media \
  -v ${DOCKERSTORAGEPATH:-/volume1/data}/downloads:${DOCKERMOUNTPATH:-/mnt/data}/downloads \
  --restart unless-stopped \
  ghcr.io/linuxserver/sonarr