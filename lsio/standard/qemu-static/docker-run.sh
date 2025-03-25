# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/qemu-static for details.
. ./.env
docker run -d \
  --name=qemu-static \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -v ${BASEDIR:-/volume1/docker}/qemu-static/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/qemu-static
