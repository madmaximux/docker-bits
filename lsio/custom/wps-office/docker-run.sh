# [WPS Office](https://www.wps.com/) is a lightweight, feature-rich
# comprehensive office suite with high compatibility. As a handy and
# professional office software, WPS Office allows you to edit files in Writer,
# Presentation, Spreadsheet, and PDF to improve your work efficiency.

. ./.env
docker run -d \
  --name=wps-office \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# WPS Office desktop gui.` \
  -p 3001:3001 `# WPS Office desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/wps-office${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/wps-office