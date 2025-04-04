# [WebCord](https://github.com/SpacingBat3/WebCord) can be summarized as a pack
# of security and privacy hardenings, Discord features reimplementations,
# Electron / Chromium / Discord bugs workarounds, stylesheets, internal pages
# and wrapped https://discord.com page, designed to conform with ToS as much as
# it is possible (or hide the changes that might violate it from Discord's
# eyes).

. ./.env
docker run -d \
  --name=webcord \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# specify a timezone to use, see this [list](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List).` \
  -p 3000:3000 `# WebCord desktop gui.` \
  -p 3001:3001 `# WebCord desktop gui HTTPS.` \
  -v ${DOCKERCONFIGPATH:-/volume1/docker/appdata}/webcord${DOCKERCONFIGDIR:-}:/config \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/webcord