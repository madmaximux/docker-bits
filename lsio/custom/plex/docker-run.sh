# [Plex](https://plex.tv) organizes video, music and photos from personal media
# libraries and streams them to smart TVs, streaming boxes and mobile devices.
# This container is packaged as a standalone Plex Media Server. Straightforward
# design and bulk actions mean getting things done faster.

. ./.env
docker run -d \
  --name=plex \
  --net=host `# Use Host Networking` \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e VERSION=docker `# Set whether to update plex or not - see Application Setup section.` \
  -e PLEX_CLAIM= `# optional` `# Optionally you can obtain a claim token from https://plex.tv/claim and input here. Keep in mind that the claim tokens expire within 4 minutes.` \
  -p 32400:32400/tcp `# Plex Media Server` \
  -p 32412:32412/udp `# optional` `# GDM network discovery (local)` \
  -p 32410:32410/udp `# optional` `# GDM network discovery (local)` \
  -p 32413:32413/udp `# optional` `# GDM network discovery (local)` \
  -p 32414:32414/udp `# optional` `# GDM network discovery (local)` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/plex/data/media:/data/media `# Location of media on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/plex