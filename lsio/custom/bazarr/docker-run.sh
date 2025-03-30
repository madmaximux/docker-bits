# [Bazarr](https://www.bazarr.media/) is a companion application to Sonarr and
# Radarr. It can manage and download subtitles based on your requirements. You
# define your preferences by TV show or movie and Bazarr takes care of
# everything for you.

. ./.env
docker run -d \
  --name=bazarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 6767:6767 `# Allows HTTP access to the internal webserver.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bazarr/config:/config `# Persistent config files` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bazarr/data/media:/data/media `# optional` `# Location of media on disk` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/bazarr/data/media:/data/media `# optional` `# Location of media on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/bazarr