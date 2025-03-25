# [RustDesk](https://rustdesk.com/) is a full-featured open source remote
# control alternative for self-hosting and security with minimal configuration.

. ./.env
docker run -d \
  --name=rustdesk \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# RustDesk desktop gui.` \
  -p 3001:3001 `# HTTPS Rustdesk desktop gui.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/rustdesk/config:/config `# Users home directory in the container, stores local files and settings` \
  --restart unless-stopped \
  ghcr.io/linuxserver/rustdesk
