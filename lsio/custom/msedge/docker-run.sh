# [Microsoft Edge](https://www.microsoft.com/edge) is a cross-platform web
# browser developed by Microsoft and based on Chromium.

. ./.env
docker run -d \
  --name=msedge \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e EDGE_CLI=https://www.linuxserver.io/ `# optional` `# Specify one or multiple Chromium CLI flags, this string will be passed to the application in full.` \
  -p 3000:3000 `# Edge desktop gui.` \
  -p 3001:3001 `# HTTPS Edge desktop gui.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/msedge/config:/config `# Users home directory in the container, stores local files and settings` \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/msedge
