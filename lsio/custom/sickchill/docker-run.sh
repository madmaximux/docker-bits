# [Sickchill](https://github.com/SickChill/SickChill) is an Automatic Video
# Library Manager for TV Shows. It watches for new episodes of your favorite
# shows, and when they are posted it does its magic.

. ./.env
docker run -d \
  --name=sickchill \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8081:8081 `# will map the container's port 8081 to port 8081 on the host` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickchill/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickchill/data/downloads:/data/downloads `# optional` `# Location of downloads on disk` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/sickchill/data/media:/data/media `# optional` `# Location of media on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sickchill