# This container needs special attention. Please check https://hub.docker.com/r/linuxserver/ffmpeg for details.
. ./.env
docker run -d \
  --name=ffmpeg \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 80:80 `# Application WebUI` \
  -v ${BASEDIR:-/volume1/docker}/ffmpeg/config:/config `# Configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/ffmpeg
