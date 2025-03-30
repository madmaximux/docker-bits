# [Mstream](https://mstream.io/) is a personal music streaming server. You can
# use mStream to stream your music from your home computer to any device,
# anywhere. There are mobile apps available for both Android and iPhone.

. ./.env
docker run -d \
  --name=mstream \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# The port for the mStream web interface` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mstream/config:/config `# mStream config` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/mstream/data/media:/data/media `# Location of media on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/mstream