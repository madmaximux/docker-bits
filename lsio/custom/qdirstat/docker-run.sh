# [QDirStat](https://github.com/shundhammer/qdirstat) Qt-based directory
# statistics: KDirStat without any KDE -- from the author of the original
# KDirStat.

. ./.env
docker run -d \
  --name=qdirstat \
  -e PUID=${PUID:-1024} `# for UserID` \
  -e PGID=${PGID:-100} `# for GroupID` \
  -e UMASK=${UMASK:-002} `# for UMASK` \
  -e TZ=${TZ:-America/Chicago} `# for timezone` \
  -p 3000:3000 `# QdirStat desktop gui.` \
  -p 3001:3001 `# QdirStat desktop gui HTTPS.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/qdirstat/config:/config `# Users home directory in the container, stores qdirstat settings and scans.` \
  -v ${DOCKERCONFIGDIR:-/volume1/docker/appdata}/qdirstat/data:/data `# Data you want to analyze disk usage information of.` \
  --restart unless-stopped \
  ghcr.io/linuxserver/qdirstat
