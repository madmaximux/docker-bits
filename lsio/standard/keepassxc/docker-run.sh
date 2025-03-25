# [KeePassXC](https://keepassxc.org/) is a free and open-source password
# manager. It started as a community fork of KeePassX (itself a cross-platform
# port of KeePass).

. ./.env
docker run -d \
  --name=keepassxc \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# KeePassXC desktop gui.` \
  -p 3001:3001 `# KeePassXC desktop gui HTTPS.` \
  -v ${BASEDIR:-/volume1/docker}/keepassxc/config:/config `# Users home directory in the container, stores local files and settings` \
  --restart unless-stopped \
  ghcr.io/linuxserver/keepassxc
