# [Audacity](https://www.audacityteam.org/) is an easy-to-use, multi-track audio
# editor and recorder. Developed by a group of volunteers as open source.

. ./.env
docker run -d \
  --name=audacity \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Audacity desktop gui.` \
  -p 3001:3001 `# Audacity desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/audacity/config:/config `# Users home directory in the container, stores program settings and images` \
  --restart unless-stopped \
  ghcr.io/linuxserver/audacity
