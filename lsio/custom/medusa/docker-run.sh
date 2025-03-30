# [Medusa](https://pymedusa.com/) is an automatic Video Library Manager for TV
# Shows. It watches for new episodes of your favorite shows, and when they are
# posted it does its magic.

. ./.env
docker run -d \
  --name=medusa \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 8081:8081 `# The port for the Medusa webui` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/medusa/data:/data `# Location of data on disk` \
  --restart unless-stopped \
  ghcr.io/linuxserver/medusa