# [FreeTube](https://freetubeapp.io/) is a feature-rich and user-friendly
# YouTube client with a focus on privacy.

. ./.env
docker run -d \
  --name=freetube \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# FreeTube desktop gui.` \
  -p 3001:3001 `# HTTPS FreeTube desktop gui.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/freetube/config:/config `# Users home directory in the container, stores local files and settings` \
  --shm-size="1gb" \
  --restart unless-stopped \
  ghcr.io/linuxserver/freetube
