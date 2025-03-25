# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/unrar for details.
. ./.env
docker run -d \
  --name=unrar \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/unrar/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/unrar
