# [Calligra](https://calligra.org/) is an office and graphic art suite by KDE.
# It is available for desktop PCs, tablet computers, and smartphones. It
# contains applications for word processing, spreadsheets, presentation, vector
# graphics, and editing databases.

. ./.env
docker run -d \
  --name=calligra \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# Calligra desktop gui.` \
  -p 3001:3001 `# Calligra desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/calligra${DOCKERCONFIGDIR:-}:/config \
  --restart unless-stopped \
  ghcr.io/linuxserver/calligra