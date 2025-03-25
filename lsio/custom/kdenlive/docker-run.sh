# [Kdenlive](https://kdenlive.org/) is a powerful free and open source cross-
# platform video editing program made by the KDE community. Feature rich and
# production ready.

. ./.env
docker run -d \
  --name=kdenlive \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e SUBFOLDER=/ `# optional` `# Specify a subfolder to use with reverse proxies, IE `/subfolder/`` \
  -p 3000:3000 `# Kdenlive desktop gui` \
  -p 3001:3001 `# Kdenlive desktop gui HTTPS` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/kdenlive/config:/config `# Users home directory in the container, stores local files and settings` \
  --device /dev/dri:/dev/dri `# optional` `# Add this for hardware acceleration (Linux hosts only)` \
  --shm-size="1gb" `# optional` \
  --restart unless-stopped \
  ghcr.io/linuxserver/kdenlive
