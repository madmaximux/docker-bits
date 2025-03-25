# [Shotcut](https://www.shotcut.org/) is a free, open source, cross-platform
# video editor.

. ./.env
docker run -d \
  --name=shotcut \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Shotcut desktop gui.` \
  -p 3001:3001 `# Shotcut desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/shotcut/config:/config `# Where Shotcut should store its config.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/shotcut
