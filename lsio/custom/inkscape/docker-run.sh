# [Inkscape](https://inkscape.org/) is professional quality vector graphics
# software which runs on Linux, Mac OS X and Windows desktop computers.

. ./.env
docker run -d \
  --name=inkscape \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Inkscape desktop gui.` \
  -p 3001:3001 `# Inkscape desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/inkscape/config:/config `# Users home directory in the container, stores local files and settings` \
  --restart unless-stopped \
  ghcr.io/linuxserver/inkscape
