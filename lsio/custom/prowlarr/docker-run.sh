# [Prowlarr](https://github.com/Prowlarr/Prowlarr) is a indexer manager/proxy
# built on the popular arr .net/reactjs base stack to integrate with your
# various PVR apps. Prowlarr supports both Torrent Trackers and Usenet Indexers.
# It integrates seamlessly with Sonarr, Radarr, Lidarr, and Readarr offering
# complete management of your indexers with no per app Indexer setup required
# (we do it all).

. ./.env
docker run -d \
  --name=prowlarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 9696:9696 `# The port for the Prowlarr web UI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/prowlarr${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/prowlarr