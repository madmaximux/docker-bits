# [Chromium](https://www.chromium.org/chromium-projects/) is an open-source
# browser project that aims to build a safer, faster, and more stable way for
# all users to experience the web.

. ./.env
docker run -d \
  --name=chromium \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -e CHROME_CLI=https://www.linuxserver.io/ `# optional` `# Specify one or multiple Chromium CLI flags, this string will be passed to the application in full.` \
  -p 3000:3000 `# Chromium desktop gui.` \
  -p 3001:3001 `# HTTPS Chromium desktop gui.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/chromium${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/chromium