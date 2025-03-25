# [KiCad](https://www.kicad.org/) - A Cross Platform and Open Source Electronics
# Design Automation Suite.

. ./.env
docker run -d \
  --name=kicad \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# KiCad desktop gui.` \
  -p 3001:3001 `# KiCad desktop gui HTTPS.` \
  -v ${BASEDIR:-/volume1/docker}/kicad/config:/config `# Users home directory in the container, stores program settings and files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/kicad
