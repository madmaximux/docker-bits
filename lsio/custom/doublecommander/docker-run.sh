# [Double Commander](https://doublecmd.sourceforge.io/) is a free cross platform
# open source file manager with two panels side by side. It is inspired by Total
# Commander and features some new ideas.

. ./.env
docker run -d \
  --name=doublecommander \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# Double Commander desktop gui.` \
  -p 3001:3001 `# Double Commander desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/doublecommander/config:/config `# Users home directory in the container, stores program settings.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/doublecommander/data:/data `# Host data directories, mount as many as needed.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/doublecommander
