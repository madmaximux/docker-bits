# [Adguardhome-sync](https://github.com/bakito/adguardhome-sync/) is a tool to
# synchronize AdGuardHome config to replica instances.

. ./.env
docker run -d \
  --name=adguardhome-sync \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -e CONFIGFILE=/config/adguardhome-sync.yaml `# optional` `# Set a custom config file.` \
  -p 8080:8080 `# Port for AdGuardHome Sync's web API.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/adguardhome-sync/config:/config `# Contains all relevant configuration files.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/adguardhome-sync
