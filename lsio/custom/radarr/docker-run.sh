# [Radarr](https://github.com/Radarr/Radarr) - A fork of Sonarr to work with
# movies à la Couchpotato.

. ./.env
docker run -d \
  --name=radarr \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 7878:7878 `# The port for the Radarr Web UI` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/config:/config `# Database and Radarr configs` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/radarr/data:/data `# optional` `# Location of data on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/radarr