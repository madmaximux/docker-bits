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
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 8989:8989 `# The port for the Sonarr web interface` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sonarr/config:/config `# Database and sonarr configs` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sonarr/tv:/tv `# optional` `# Location of TV library on disk (See note in Application setup)` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/sonarr/downloads:/downloads `# optional` `# Location of download managers output directory (See note in Application setup)` \
  --restart unless-stopped \
  ghcr.io/linuxserver/sonarr
